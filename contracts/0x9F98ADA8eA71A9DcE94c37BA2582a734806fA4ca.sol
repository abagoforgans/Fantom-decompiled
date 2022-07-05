contract main {




// =====================  Runtime code  =====================


uint256 input;
address owner;
address stor3;

function owner() {
    return owner
}

function input() {
    return input
}

function _fallback() payable {
    revert
}

function withdraw() {
    if eth.balance(this.address):
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_b56effbb(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable1: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function swap(bytes32 arg1, uint8 arg2, address arg3, address arg4, uint256 arg5, bytes arg6, address arg7, bool arg8, address arg9, bool arg10, uint256 arg11, uint256 arg12) payable {
    require calldata.size - 4 >= 224
    require arg1 <= test266151307()
    require calldata.size + -arg1 - 4 >= 192
    require cd[(arg1 + 36)] < 2
    require cd[(arg1 + 68)] == address(cd[(arg1 + 68)])
    require cd[(arg1 + 100)] == address(cd[(arg1 + 100)])
    require cd[(arg1 + 164)] <= test266151307()
    require arg1 + cd[(arg1 + 164)] + 35 < calldata.size
    if cd[(arg1 + cd[(arg1 + 164)] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(arg1 + cd[(arg1 + 164)] + 4)])) + 289 < 288 or ceil32(ceil32(cd[(arg1 + cd[(arg1 + 164)] + 4)])) + 289 > test266151307():
        revert with 0, 65
    require arg1 + cd[(arg1 + 164)] + cd[(arg1 + cd[(arg1 + 164)] + 4)] + 36 <= calldata.size
    require calldata.size - 36 >= 128
    if not bool(ceil32(ceil32(cd[(arg1 + cd[(arg1 + 164)] + 4)])) + 417 <= test266151307()):
        revert with 0, 65
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    require arg4 == arg4
    require arg5 == bool(arg5)
    require ext_code.size(stor3)
    call stor3.0x52bbbe29 with:
       value msg.value wei
         gas gas_remaining wei
        args 224, address(this.address), bool(arg3), address(msg.sender), bool(arg5), arg6, arg7, arg1.length, 0, address(cd[(arg1 + 68)]), address(cd[(arg1 + 100)]), cd[(arg1 + 132)], 192, cd[(arg1 + cd[(arg1 + 164)] + 4)], call.data[arg1 + cd[(arg1 + 164)] + 36 len cd[(arg1 + cd[(arg1 + 164)] + 4)]], Mask(8 * ceil32(cd[(arg1 + cd[(arg1 + 164)] + 4)]) - cd[(arg1 + cd[(arg1 + 164)] + 4)], -(8 * ceil32(cd[(arg1 + cd[(arg1 + 164)] + 4)]) + -ceil32(ceil32(cd[(arg1 + cd[(arg1 + 164)] + 4)])) + 31) + 256, arg2) >> -(8 * ceil32(cd[(arg1 + cd[(arg1 + 164)] + 4)]) + -ceil32(ceil32(cd[(arg1 + cd[(arg1 + 164)] + 4)])) + 31) + 256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
