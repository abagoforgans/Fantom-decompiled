contract main {




// =====================  Runtime code  =====================


const SID = 3931153

const MAX_UINT = -1


address stor2;
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function craft(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    idx = 0
    while idx < arg2:
        mem[96] = 0x289137a100000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        mem[132] = 1
        require ext_code.size(stor2)
        call stor2.0x289137a1 with:
             gas gas_remaining wei
            args arg1, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
