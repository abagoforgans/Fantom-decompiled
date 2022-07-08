contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address target_token_address;
uint256 stor6; offset 32
uint256 stor6;
uint256 minium_purchase_amount;
uint8 stor8;
address stor8; offset 8

function can_buy() {
    return bool(uint8(stor8.field_0))
}

function minium_purchase_amount() {
    return minium_purchase_amount
}

function target_token_address() {
    return target_token_address
}

function _fallback() payable {
    revert
}

function sub_139f1734(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    target_token_address = arg1
}

function sub_a1f42839(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    minium_purchase_amount = arg1
}

function sub_c3dbd258(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_8114bc4a(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_0fe5d662(?) {
    if not uint8(stor8.field_0):
        revert with 0, 's'
    mem[192] = target_token_address
    mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[228] = uint256(stor6.field_0)
    mem[260] = minium_purchase_amount
    mem[324] = stor2
    mem[356] = 1756181673
    mem[292] = 160
    mem[388] = 3
    mem[420 len 0] = None
    require ext_code.size(address(stor8.field_8))
    call address(stor8.field_8).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args uint256(stor6.field_0), minium_purchase_amount, Array(len=3, data=mem[420 len 96]), stor2, 1756181673
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    require mem[224 len 4], Mask(224, 0, stor6.field_32) <= 4294967296
    require mem[224 len 4], Mask(224, 0, stor6.field_32) + 32 <= return_data.size
    require mem[mem[224 len 4], Mask(224, 0, stor6.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor6.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor6.field_32) + 224]) + 32 <= return_data.size
    uint8(stor8.field_0) = 0
}



}
