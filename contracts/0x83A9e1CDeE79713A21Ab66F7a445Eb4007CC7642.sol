contract main {




// =====================  Runtime code  =====================


array of uint256 text;

function text() payable {
    return text[0 len text.length]
}

function _fallback() payable {
    revert
}

function setText(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    text[] = Array(len=arg1.length, data=arg1[all])
}



}
