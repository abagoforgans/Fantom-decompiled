contract main {




// =====================  Runtime code  =====================


array of uint256 name;
uint256 amount;

function getName() payable {
    return name[0 len name.length]
}

function getAmount() payable {
    return amount
}

function _fallback() payable {
    revert
}

function setAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    amount = arg1
}

function setName(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    name[] = Array(len=arg1.length, data=arg1[all])
}



}
