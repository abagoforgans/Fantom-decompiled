contract main {




// =====================  Runtime code  =====================


array of uint256 name;

function name() payable {
    return name[0 len name.length]
}

function getName() payable {
    return name[0 len name.length]
}

function _fallback() payable {
    revert
}

function setName(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    name.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        name[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while name.length + 31 / 32 > idx:
        name[idx] = 0
        idx = idx + 1
        continue 
}



}
