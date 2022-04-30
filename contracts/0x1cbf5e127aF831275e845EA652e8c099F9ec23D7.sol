contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0; offset 8

function _fallback() payable {
    revert
}

function pause() {
    require msg.sender == address(stor0.field_8)
    uint8(stor0.field_0) = 1
}

function unpause() {
    require msg.sender == address(stor0.field_8)
    uint8(stor0.field_0) = 0
}

function support() payable {
    if uint8(stor0.field_0):
        revert with 0, 'contract is paused'
    call 0xb9d65266915c4ad4eea406c4e57379a0407dd09f with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call 0x086a5dc27b6fae334ccce05c37a87f6d3c527667 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
}



}
