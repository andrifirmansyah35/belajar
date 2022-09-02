document.addEventListener('DOMContentLoaded',function(){
    const todos = [];
    const RENDER_EVENT = 'render-todo';


    // ALL FUNCTION =====================================================
    function generateID(){
        return + new Date()
    }
    
    function generateTodoObject(id,task,timestamp,isComplete){
        return {id,task,timestamp,isComplete}
    }
    
    function addTodo(){
        const textTodo = document.getElementById('title').value
        const timestamp = document.getElementById('date').value
    
        const ID = generateID()
        const todoObject = generateTodoObject(ID,textTodo,timestamp,false)
        todos.push(todoObject)
    
        document.dispatchEvent(new Event(RENDER_EVENT))
    }

        
    function addTaskToCompleted(todoID){
        console.log('todo dinyatakan complete')
        console.log(todoID)
        const todoTarget = findTodo(todoID)
        console.log('fungsi to signal functiol complete')

        if(todoTarget == null){
            console.log('target tidak ditemukan')
            return;
        }
        todoTarget.isComplete = true
        console.log('todo target')
        console.table(todoTarget)
        document.dispatchEvent(new Event(RENDER_EVENT))
        console.log('telah diubah',)
    }

    function findTodo(todoId){
        console.log('is cari: ' + todoId)
        for(const todoItem of todos){
            if(todoItem.id == todoId){
                console.log('ketemu')
                console.table(todoItem)
                return todoItem
            }
        }
        return null;
    }

    function makeTodo(todoObject) {
        const textTitle = document.createElement('h2');
        textTitle.innerText = todoObject.task;
       
        const textTimestamp = document.createElement('p');
        textTimestamp.innerText = todoObject.timestamp;
       
        const textContainer = document.createElement('div');
        textContainer.classList.add('inner');
        textContainer.append(textTitle, textTimestamp);
       
        const container = document.createElement('div');
        container.classList.add('item', 'shadow');
        container.append(textContainer);
        container.setAttribute('id', `todo-${todoObject.id}`);
       
        if(todoObject.isComplete){
            const undoButton = document.createElement('button')
            undoButton.classList.add('undo-button') 
            undoButton.addEventListener('click',function(){
                undoTaskFromComplete(todoObject.id)
            }); 

            const TransButton = document.createElement('button')
            TransButton.classList.add('trash-button')
            TransButton.addEventListener('click',function(){
                removeTaskFromCompleted(todoObject.id)
            })

            container.append(undoButton,TransButton)
        }else{
            const checkButton = document.createElement('button')
            checkButton.classList.add('check-button')

            checkButton.addEventListener('click',function(){
                console.log('anda menekan tombol check')
                console.table(todos)
                addTaskToCompleted(todoObject.id)
                console.log('sudah diubah')
                console.table(todos)
            })

            container.append(checkButton)
        }

        return container;
      }

      function removeTaskFromCompleted(TodoId){
        const todoTarget = findTodoIndex(TodoId)

        if(todoTarget === -1)return;

        todos.splice(todoTarget,1)
        document.dispatchEvent(new Event(RENDER_EVENT))
      }

      function undoTaskFromComplete(TodoId){
        const todoTarget = findTodo(TodoId)

        if(todoTarget == null) return;

        todoTarget.isComplete = false;
        document.dispatchEvent(new Event(RENDER_EVENT)) 
      }

      function findTodoIndex(todoId){
        for(const index in todos){
            if(todos[index].id === todoId){
                return index
            }
        }
        return -1
      }



    // ALL EVENT
    const submitForm = document.getElementById('form')
    submitForm.addEventListener('submit',function(event){
        event.preventDefault()
        addTodo()
        console.log('KONTOL')

    })

    document.addEventListener(RENDER_EVENT,function(){
        console.log(todos)
        const uncompleateTODOList = document.getElementById('todos')
        uncompleateTODOList.innerHTML = ''

        const completeTODOList = document.getElementById('completed-todos')
        completeTODOList.innerHTML = ''

        for(const todoItem of todos){
            const todoElement = makeTodo(todoItem)
            if(!todoItem.isComplete){
                uncompleateTODOList.append(todoElement)
            
            }else{
                completeTODOList.append(todoElement)
            }
        }
    })

    
})




