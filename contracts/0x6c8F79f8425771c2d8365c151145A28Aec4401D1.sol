contract main {




// =====================  Runtime code  =====================


const PRESALE_RATE = 500


uint8 presaleEnded; offset 160
address owner;
address stor1;

function getOwner() {
    return owner
}

function presaleEnded() {
    return bool(presaleEnded)
}

function endPresale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    presaleEnded = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_9c48c535(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = address(arg1)
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

function claim() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not presaleEnded:
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
}

function buyPresale() payable {
    if presaleEnded:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sale must be active to mint tokens'
    if msg.value and 500 > -1 / msg.value:
        revert with 'NH{q', 17
    require ext_code.size(stor1)
    staticcall stor1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] / 100 > 0x1999999999999999999999999999999999999999999999999999999999999999:
        revert with 'NH{q', 17
    require ext_code.size(stor1)
    staticcall stor1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !(500 * msg.value):
        revert with 'NH{q', 17
    if ext_call.return_data[0] + (500 * msg.value) > 10 * ext_call.return_data[0] / 100:
        revert with 0, 'Purchase would exceed max supply'
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 500 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x9c48c535(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x340695c0(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 500
            if uint32(call.func_hash) >> 224 != unknown_0x4e71d92d(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x715018a6(?????):
                    require unknown_0x893d20e8(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return owner
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                emit OwnershipTransferred(owner, 0);
                owner = 0
            else:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not presaleEnded:
                    revert with 0, 'Presale is still active'
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 'Address: insufficient balance'
                call owner with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
        else:
            if unknown_0xa43be57b(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xa43be57b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    presaleEnded = 1
                else:
                    if unknown_0xe580b2b0(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return bool(presaleEnded)
                    require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
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
                if unknown_0x9c48c535(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor1 = address(arg1)
                else:
                    require unknown_0x9fcdec61(?????) == uint32(call.func_hash) >> 224
                    if presaleEnded:
                        revert with 0, 'Sale must be active to mint tokens'
                    if msg.value and 500 > -1 / msg.value:
                        revert with 'NH{q', 17
                    require ext_code.size(stor1)
                    staticcall stor1.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] / 100 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 'NH{q', 17
                    require ext_code.size(stor1)
                    staticcall stor1.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > !(500 * msg.value):
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] + (500 * msg.value) > 10 * ext_call.return_data[0] / 100:
                        revert with 0, 'Purchase would exceed max supply'
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 500 * msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
