//SPDX-Lisence-Identifier:MIT
pragma solidity ^0.8.9;

contract Struct{
    struct Todo{
        string text;
        bool completed;
    }
    Todo[] public todos;

    function create(string calldata _text) external{
        // todos.push(Todo({
        //     text:_text,
        //     completed:false
        // }));
        //todos.push();
    }

    function updateText(uint _index, string calldata _text) external {
        todos[_index].text = _text;
    }
    function updateText2(uint _index, string calldata _text) external {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    function get(uint _index) external view returns(string memory, bool) {
        Todo memory todo = todos[_index];
        return (todo.text,todo.completed);
    }
}