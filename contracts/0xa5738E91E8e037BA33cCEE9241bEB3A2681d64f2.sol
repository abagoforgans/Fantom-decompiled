contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
address stor1;
uint256 stor2;
address stor3;

function owner() {
    return owner
}

function sub_0a0eb9e8(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = arg1
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function distribute() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= 1:
        revert with 0, 'Balance too low'
    if eth.balance(this.address) < 1:
        revert with 0, 17
    if eth.balance(this.address) - 1 and stor2 > -1 / eth.balance(this.address) - 1:
        revert with 0, 17
    call stor1 with:
       value -stor2 + (eth.balance(this.address) * stor2) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) - 1 < -stor2 + (eth.balance(this.address) * stor2) / 100:
        revert with 0, 17
    require ext_code.size(stor3)
    call stor3.reflectToOwners() with:
       value eth.balance(this.address) + -(-stor2 + (eth.balance(this.address) * stor2) / 100) - 1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        if eth.balance(this.address) <= 1:
            revert with 0, 'Balance too low'
        if eth.balance(this.address) < 1:
            revert with 0, 17
        if eth.balance(this.address) - 1 and stor2 > -1 / eth.balance(this.address) - 1:
            revert with 0, 17
        call stor1 with:
           value -stor2 + (eth.balance(this.address) * stor2) / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) - 1 < -stor2 + (eth.balance(this.address) * stor2) / 100:
            revert with 0, 17
        require ext_code.size(stor3)
        call stor3.reflectToOwners() with:
           value eth.balance(this.address) + -(-stor2 + (eth.balance(this.address) * stor2) / 100) - 1 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if unknown_0x75f890ab(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x0a0eb9e8(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor2 = arg1
            else:
                if unknown_0x12065fe0(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return eth.balance(this.address)
                if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    require ext_call.success
                else:
                    require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
        else:
            if unknown_0x75f890ab(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor3 = address(arg1)
            else:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if uint32(call.func_hash) >> 224 != unknown_0xe4fc6b6d(?????):
                    require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(arg1):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(arg1)
                    emit OwnershipTransferred(owner, address(arg1));
                else:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if eth.balance(this.address) <= 1:
                        revert with 0, 'Balance too low'
                    if eth.balance(this.address) < 1:
                        revert with 0, 17
                    if eth.balance(this.address) - 1 and stor2 > -1 / eth.balance(this.address) - 1:
                        revert with 0, 17
                    call stor1 with:
                       value -stor2 + (eth.balance(this.address) * stor2) / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) - 1 < -stor2 + (eth.balance(this.address) * stor2) / 100:
                        revert with 0, 17
                    require ext_code.size(stor3)
                    call stor3.reflectToOwners() with:
                       value eth.balance(this.address) + -(-stor2 + (eth.balance(this.address) * stor2) / 100) - 1 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
