contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint8 stor2; offset 160
uint128 stor2; offset 160
address stor2;
mapping of uint8 stor3;

function _fallback() payable {
    revert
}

function change_owner(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Not the owner'
    stor1 = arg1
}

function sub_9d6f8d22(?) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Not the owner'
    address(stor2.field_0) = arg1
}

function sub_7a6a8a4b(?) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Not the owner'
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
}

function sub_fc4333c3(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    call stor0.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function recoverSigner(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg2.length == 65
    signer = erecover(arg1, 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function splitSignature(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg1.length == 65
    _3 = mem[128]
    _4 = mem[160]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = _3
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
           mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
           _4
}

function sub_d5866ffa(?) payable {
    if stor1 != msg.sender:
        revert with 0, 'Not the owner'
    require ext_code.size(stor0)
    staticcall stor0.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getSigner(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    mem[ceil32(arg4.length) + 160] = address(arg1)
    mem[ceil32(arg4.length) + 180] = arg2
    mem[ceil32(arg4.length) + 212] = arg3
    mem[ceil32(arg4.length) + 128] = 84
    require arg4.length == 65
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]])), 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sub_884907af(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if uint8(stor2.field_160):
        revert with 0, 'Withdrawal is paused'
    mem[ceil32(arg4.length) + 160] = address(arg1)
    mem[ceil32(arg4.length) + 180] = arg2
    mem[ceil32(arg4.length) + 212] = arg3
    mem[ceil32(arg4.length) + 128] = 84
    require arg4.length == 65
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]])), 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != address(stor2.field_0):
        revert with 0, 'Message Signer Address Mismatch'
    if arg1 != msg.sender:
        revert with 0, 
                    32,
                    36,
                    0xfe4d6573736167652053656e64657220616e64205265636970656e74204d69736d617463,
                    mem[168 len 24],
                    mem[ceil32(arg4.length) + 496 len 4]
    require not stor3[arg3]
    stor3[arg3] = 1
    require ext_code.size(stor0)
    call stor0.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
