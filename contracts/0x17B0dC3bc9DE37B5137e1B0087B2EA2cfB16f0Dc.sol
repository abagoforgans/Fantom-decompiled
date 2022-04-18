contract main {




// =====================  Runtime code  =====================


uint256 sub_4d2abbd0;
array of address stor1;
array of address stor2;
array of address sub_207daecd;

function sub_207daecd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 10
    return sub_207daecd[arg1]
}

function sub_300c9476(?) payable {
    return stor1.length
}

function sub_4d2abbd0(?) payable {
    return sub_4d2abbd0
}

function sub_8360369a(?) payable {
    return stor2.length
}

function _fallback() payable {
    revert
}

function sub_0855bcb9(?) payable {
    require calldata.size - 4 >= 32
    if stor2.length != msg.sender:
        revert with 0, 'Caller is not Guru!'
    sub_4d2abbd0 = arg1
}

function setElite(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor2.length != msg.sender:
        revert with 0, 'Caller is not Guru!'
    stor1.length = arg1
}

function sub_cc96115e(?) payable {
    idx = 416
    s = 3
    while 736 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    return sub_207daecd.length, mem[448 len 288]
}

function checkPosition(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 1337
    while idx < 10:
        if arg1 != sub_207daecd[idx]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = idx
        continue 
    return s
}

function castVote(address arg1) payable {
    require calldata.size - 4 >= 32
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'invalid contract address'
    if not ext_code.hash(arg1):
        revert with 0, 'invalid contract address'
    require ext_code.size(stor1.length)
    call stor1.length.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, 0, sub_4d2abbd0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Couldn't burn the ELITE?'
    idx = 0
    s = 1337
    while idx < 10:
        if arg1 != sub_207daecd[idx]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = idx
        continue 
    if s != 1337:
        idx = s
        while idx > 0:
            require idx - 1 < 10
            require idx < 10
            sub_207daecd[idx] = stor2[idx]
            idx = idx - 1
            continue 
    else:
        idx = 9
        while idx > 0:
            require idx - 1 < 10
            require idx < 10
            sub_207daecd[idx] = stor2[idx]
            idx = idx - 1
            continue 
    sub_207daecd.length = arg1
}



}
