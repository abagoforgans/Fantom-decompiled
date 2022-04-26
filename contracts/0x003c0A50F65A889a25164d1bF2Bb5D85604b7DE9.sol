contract main {




// =====================  Runtime code  =====================


#
#  - sub_16816262(?)
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;

function kill() {
    if stor4 != msg.sender:
        revert with 0, 'Sol: Unauthorized'
    selfdestruct(stor4)
}

function _fallback() payable {
    revert
}

function sub_f2bf71d0(?) {
    require calldata.size - 4 >= 128
    if stor4 != msg.sender:
        revert with 0, 'Sol: Unauthorized'
    stor0 = arg1
    stor1 = arg2
    stor2 = arg3
    stor3 = arg4
}

function getPairAddress(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[199 len 29]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        return address(sha3(0, 17241416772799840749, sha3(arg1, arg2), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
    if not arg2:
        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
    return address(sha3(0, 17241416772799840749, sha3(arg2, arg1), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        call stor4 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
