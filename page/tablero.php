<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kanban Board</title>
    
</head>
<body>
    <style>
        body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
}

h1 {
    text-align: center;
}

.board {
    display: flex;
    justify-content: center;
    margin: 20px;
}

.column {
    background-color: #f0f0f0;
    border: 1px solid #ccc;
    width: 30%;
    margin: 0 10px;
    padding: 10px;
    border-radius: 5px;
}

h2 {
    text-align: center;
}

.task {
    background-color: #fff;
    border: 1px solid #ccc;
    margin: 10px 0;
    padding: 10px;
    border-radius: 5px;
    cursor: grab;
}

    </style>
    <h1>TUS PROSPECTOS</h1>
    <div class="board">
        <div class="column" id="todo" ondrop="drop(event)" ondragover="allowDrop(event)">
            <h2>Iniciado</h2>
            <div class="task" id="task1" draggable="true" ondragstart="drag(event)">
                Alejandro Maldonado ★★★
            </div>

        </div>
        <div class="column" id="inprogress" ondrop="drop(event)" ondragover="allowDrop(event)">
            <h2>Pendiente de cita</h2>
            <div class="task" id="task2" draggable="true" ondragstart="drag(event)">
                Marcelo suarez ★★★★★
            </div>
        </div>
        <div class="column" id="done" ondrop="drop(event)" ondragover="allowDrop(event)">
            <h2>Oportunidad ganada</h2>
        </div>
    </div>

    <script>
        function allowDrop(event) {
    event.preventDefault();
}

function drag(event) {
    event.dataTransfer.setData("text", event.target.id);
}

function drop(event) {
    event.preventDefault( );
    var data = event.dataTransfer.getData("text");
    var task = document.getElementById(data);
    event.target.appendChild(task);
}

    </script>
</body>
</html>
