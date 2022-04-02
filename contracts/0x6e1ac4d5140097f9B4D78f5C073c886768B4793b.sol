contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function testEvent() payable {
    emit Transfer(address(msg.sender), msg.sender, 10, 1, 2);
}



}
