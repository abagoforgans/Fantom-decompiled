contract main {




// =====================  Runtime code  =====================


const name = 'Personal Daycare', 0

const symbol = '', 0


address stor0;
array of uint256 sub_aa5965ae;
address stor2;

function sub_aa5965ae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_aa5965ae.length
    return sub_aa5965ae[arg1]
}

function _fallback() payable {
    revert
}

function sub_f1c4de09(?) payable {
    require msg.sender == stor0
    idx = 0
    while idx < sub_aa5965ae.length:
        mem[0] = 1
        require ext_code.size(stor2)
        call stor2.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args sub_aa5965ae[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = msg.sender
        mem[128] = sub_aa5965ae[idx]
        emit 0x89518b83: msg.sender, sub_aa5965ae[idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_6f896369(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    idx = 0
    s = 0
    while idx < sub_aa5965ae.length:
        mem[0] = 1
        if sub_aa5965ae[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[96] = msg.sender
        mem[128] = arg1
        emit 0xacaa43ed: msg.sender, arg1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = 1
        continue 
    if not s:
        sub_aa5965ae.length++
        sub_aa5965ae[sub_aa5965ae.length] = arg1
        emit 0xacaa43ed: msg.sender, arg1
}



}
