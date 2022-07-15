contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
    revert
}

function getContract(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0[arg1].field_0:
        return stor0[arg1].field_0, 
               stor0[arg1].field_256,
               stor0[arg1].field_512,
               stor0[arg1].field_768,
               stor0[arg1].field_1024,
               stor0[arg1].field_1280,
               bool(stor0[arg1].field_1536),
               bool(stor0[arg1].field_1544),
               stor0[arg1].field_1792
    else:
        return 0
}

function withdraw(bytes32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[arg1].field_0:
        revert with 0, 'contractId does not exist'
    hash = sha256hash(arg2) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor0[arg1].field_1024 != hash:
        revert with 0, 'hashlock hash does not match'
    if stor0[arg1].field_256 != msg.sender:
        revert with 0, 'withdrawable: not receiver'
    if stor0[arg1].field_1536:
        revert with 0, 'withdrawable: already withdrawn'
    stor0[arg1].field_1792 = arg2
    stor0[arg1].field_1536 = 1
    require ext_code.size(stor0[arg1].field_512)
    call stor0[arg1].field_512.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0[arg1].field_256, stor0[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit HTLCERC20Withdraw(arg1);
    return 1
}

function refund(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0[arg1].field_0:
        revert with 0, 'contractId does not exist'
    if stor0[arg1].field_0 != msg.sender:
        revert with 0, 'refundable: not sender'
    if stor0[arg1].field_1544:
        revert with 0, 'refundable: already refunded'
    if stor0[arg1].field_1536:
        revert with 0, 'refundable: already withdrawn'
    if block.timestamp < stor0[arg1].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x65726566756e6461626c653a2074696d656c6f636b206e6f7420796574207061737365,
                    mem[199 len 29]
    stor0[arg1].field_1544 = 1
    require ext_code.size(stor0[arg1].field_512)
    call stor0[arg1].field_512.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0[arg1].field_0, stor0[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit HTLCERC20Refund(arg1);
    return 1
}

function newContract(address arg1, bytes32 arg2, uint256 arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if arg5 <= 0:
        revert with 0, 'token amount must be > 0'
    require ext_code.size(arg4)
    staticcall arg4.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64746f6b656e20616c6c6f77616e6365206d757374206265203e3d20616d6f756e,
                    mem[197 len 31]
    if arg3 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe74696d656c6f636b2074696d65206d75737420626520696e20746865206675747572,
                    mem[199 len 29]
    hash = sha256hash(Mask(160, 96, msg.sender) >> 96, arg1, arg4, arg5, arg2, uint32(arg3), Mask(224, 0, arg3)) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor0[hash].field_0:
        revert with 0, 'Contract already exists'
    require ext_code.size(arg4)
    call arg4.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'ttransferFrom sender to this faile', uint32(arg3)
    stor0[hash].field_0 = msg.sender
    stor0[hash].field_256 = arg1
    stor0[hash].field_512 = arg4
    stor0[hash].field_768 = arg5
    stor0[hash].field_1024 = arg2
    stor0[hash].field_1280 = arg3
    stor0[hash].field_1536 = 0
    stor0[hash].field_1544 = 0
    stor0[hash].field_1792 = 0
    emit HTLCERC20New(address(arg4), arg5, arg2, arg3, hash, msg.sender, arg1);
    return hash
}



}
