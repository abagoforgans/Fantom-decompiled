contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 presaleRate;
uint256 presaleCap;
uint256 sub_e471a74e;
uint8 stor5;
uint8 stor5; offset 8

function presaleStarted() {
    return bool(uint8(stor5.field_0))
}

function presaleRate() {
    return presaleRate
}

function presaleCap() {
    return presaleCap
}

function getOwner() {
    return owner
}

function sub_e471a74e(?) {
    return sub_e471a74e
}

function presaleEnded() {
    return bool(uint8(stor5.field_8))
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function startPresale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor5.field_8):
        revert with 0, 'Presale has ended'
    uint8(stor5.field_0) = 1
}

function endPresale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor5.field_0):
        revert with 0, 'Presale has not started'
    uint8(stor5.field_8) = 1
}

function setPresaleCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor5.field_0):
        revert with 0, 'Presale has started'
    presaleCap = arg1
}

function setPresaleRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor5.field_0):
        revert with 0, 'Presale has started'
    presaleRate = arg1
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor5.field_0):
        revert with 0, 'Presale has started'
    stor1 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function buyPresale() payable {
    if not uint8(stor5.field_0):
        revert with 0, 'Presale has not started'
    if uint8(stor5.field_8):
        revert with 0, 'Presale has ended'
    if msg.value and presaleRate > -1 / msg.value:
        revert with 'NH{q', 17
    if sub_e471a74e > !(msg.value * presaleRate):
        revert with 'NH{q', 17
    sub_e471a74e += msg.value * presaleRate
    if sub_e471a74e > presaleCap:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchase would exceed allocated presale amount'
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value * presaleRate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_93a4d3b0(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor5.field_8):
        revert with 0, 'Presale is still active'
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'Address: insufficient balance'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        if not uint8(stor5.field_0):
            revert with 0, 'Presale has not started'
        if uint8(stor5.field_8):
            revert with 0, 'Presale has ended'
        if msg.value and presaleRate > -1 / msg.value:
            revert with 'NH{q', 17
        if sub_e471a74e > !(msg.value * presaleRate):
            revert with 'NH{q', 17
        sub_e471a74e += msg.value * presaleRate
        if sub_e471a74e > presaleCap:
            revert with 0, 'Purchase would exceed allocated presale amount'
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value * presaleRate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if unknown_0x893d20e8(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x42f39381(?????) > uint32(call.func_hash) >> 224:
                if presaleStarted() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(uint8(stor5.field_0))
                if startPresale() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if uint8(stor5.field_8):
                        revert with 0, 'Presale has ended'
                    uint8(stor5.field_0) = 1
                else:
                    require unknown_0x144fa6d7(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if uint8(stor5.field_0):
                        revert with 0, 'Presale has started'
                    stor1 = address(arg1)
            else:
                if unknown_0x42f39381(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return presaleRate
                if unknown_0x63d5502f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return presaleCap
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    emit OwnershipTransferred(owner, 0);
                    owner = 0
                else:
                    require unknown_0x755bfdde(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if uint8(stor5.field_0):
                        revert with 0, 'Presale has started'
                    presaleCap = arg1
        else:
            if unknown_0xe471a74e(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xe471a74e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_e471a74e
                if unknown_0xe580b2b0(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(uint8(stor5.field_8))
                if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                    require unknown_0xf449ffe4(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if uint8(stor5.field_0):
                        revert with 0, 'Presale has started'
                    presaleRate = arg1
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(arg1):
                        revert with 0, 'Ownable: new owner is the zero address'
                    emit OwnershipTransferred(owner, address(arg1));
                    owner = address(arg1)
            else:
                if unknown_0x893d20e8(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if uint32(call.func_hash) >> 224 != unknown_0x93a4d3b0(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x9fcdec61(?????):
                        require unknown_0xa43be57b(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not uint8(stor5.field_0):
                            revert with 0, 'Presale has not started'
                        uint8(stor5.field_8) = 1
                    else:
                        if not uint8(stor5.field_0):
                            revert with 0, 'Presale has not started'
                        if uint8(stor5.field_8):
                            revert with 0, 'Presale has ended'
                        if msg.value and presaleRate > -1 / msg.value:
                            revert with 'NH{q', 17
                        if sub_e471a74e > !(msg.value * presaleRate):
                            revert with 'NH{q', 17
                        sub_e471a74e += msg.value * presaleRate
                        if sub_e471a74e > presaleCap:
                            revert with 0, 'Purchase would exceed allocated presale amount'
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, msg.value * presaleRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not uint8(stor5.field_8):
                        revert with 0, 'Presale is still active'
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 'Address: insufficient balance'
                    call owner with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args owner
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
