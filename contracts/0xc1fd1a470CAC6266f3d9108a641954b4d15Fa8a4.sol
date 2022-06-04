contract main {




// =====================  Runtime code  =====================


address owner;
address sub_6b41bf93Address;
mapping of struct ledger;
array of struct userOffers;
address devAddress;

function ledger(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return ledger[arg1].field_0, ledger[arg1].field_256, ledger[arg1].field_512, ledger[arg1].field_768
}

function sub_6b41bf93(?) {
    return sub_6b41bf93Address
}

function owner() {
    return owner
}

function dev() {
    return devAddress
}

function userOffers(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < userOffers[arg1].field_0
    return userOffers[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function forceReturnNft(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ledger[arg1].field_512 <= 0:
        revert with 0, 'invalid return'
    require ext_code.size(sub_6b41bf93Address)
    call sub_6b41bf93Address.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), ledger[arg1].field_0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    ledger[arg1].field_512 = 0
}

function ask(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= 0:
        revert with 0, 'invalid price: price is 0'
    require ext_code.size(sub_6b41bf93Address)
    call sub_6b41bf93Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    ledger[arg1].field_0 = msg.sender
    ledger[arg1].field_256 = arg1
    ledger[arg1].field_512 = arg2
    ledger[arg1].field_768 = 0
    ledger[arg1].field_1024 = 0
    userOffers[address(msg.sender)].field_0++
    userOffers[address(msg.sender)][userOffers[address(msg.sender)].field_0].field_0 = arg1
    emit Ask(msg.sender, arg1, arg2);
}

function getUserOffers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userOffers[address(arg1)].field_0:
        mem[128] = userOffers[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * userOffers[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = userOffers[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=userOffers[address(arg1)].field_0, data=mem[128 len 32 * userOffers[address(arg1)].field_0])
    mem[(32 * userOffers[address(arg1)].field_0) + 128] = 32
    mem[(32 * userOffers[address(arg1)].field_0) + 160] = userOffers[address(arg1)].field_0
    mem[(32 * userOffers[address(arg1)].field_0) + 192 len 32 * userOffers[address(arg1)].field_0] = mem[128 len 32 * userOffers[address(arg1)].field_0]
    return memory
      from (32 * userOffers[address(arg1)].field_0) + 128
       len (96 * userOffers[address(arg1)].field_0) + 64
}

function forceReturnAllNft() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < 500:
        mem[0] = idx
        mem[32] = 2
        if ledger[idx].field_512 > 0:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if ledger[idx].field_512 <= 0:
                revert with 0, 'invalid return'
            mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[100] = this.address
            mem[132] = ledger[idx].field_0
            mem[164] = idx
            require ext_code.size(sub_6b41bf93Address)
            call sub_6b41bf93Address.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), ledger[idx].field_0, idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = idx
            mem[32] = 2
            ledger[idx].field_512 = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function cancelOffer(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ledger[arg1].field_0 != msg.sender:
        revert with 0, 'this diamond is not yours!'
    if not ledger[arg1].field_512:
        revert with 0, 'this diamond is no for sale'
    if ledger[arg1].field_768:
        revert with 0, 'error'
    idx = 0
    while idx < userOffers[stor2[arg1].field_0].field_0:
        if idx >= userOffers[stor2[arg1].field_0].field_0:
            revert with 'NH{q', 50
        if userOffers[stor2[arg1].field_0][idx].field_0 != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = ledger[arg1].field_0
            mem[32] = 3
            idx = idx + 1
            continue 
        if userOffers[stor2[arg1].field_0].field_0 < 1:
            revert with 'NH{q', 17
        if userOffers[stor2[arg1].field_0].field_0 - 1 >= userOffers[stor2[arg1].field_0].field_0:
            revert with 'NH{q', 50
        if idx >= userOffers[stor2[arg1].field_0].field_0:
            revert with 'NH{q', 50
        userOffers[stor2[arg1].field_0][idx].field_0 = userOffers[stor2[arg1].field_0][userOffers[stor2[arg1].field_0].field_0].field_0
        if not userOffers[stor2[arg1].field_0].field_0:
            revert with 'NH{q', 49
        userOffers[stor2[arg1].field_0][userOffers[stor2[arg1].field_0].field_0].field_0 = 0
        userOffers[stor2[arg1].field_0].field_0--
        ledger[arg1].field_512 = 0
        require ext_code.size(sub_6b41bf93Address)
        call sub_6b41bf93Address.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Cancel(msg.sender, arg1);
    ledger[arg1].field_512 = 0
    require ext_code.size(sub_6b41bf93Address)
    call sub_6b41bf93Address.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Cancel(msg.sender, arg1);
}

function bid(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ledger[arg1].field_512 <= 0:
        revert with 0, 'this diamond is no for sale'
    if ledger[arg1].field_768:
        revert with 0, 'this diamond is sold'
    if msg.value < ledger[arg1].field_512:
        revert with 0, 'amount is not enough'
    require ext_code.size(sub_6b41bf93Address)
    call sub_6b41bf93Address.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < userOffers[stor2[arg1].field_0].field_0:
        if idx >= userOffers[stor2[arg1].field_0].field_0:
            revert with 'NH{q', 50
        if userOffers[stor2[arg1].field_0][idx].field_0 != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = ledger[arg1].field_0
            mem[32] = 3
            idx = idx + 1
            continue 
        if userOffers[stor2[arg1].field_0].field_0 < 1:
            revert with 'NH{q', 17
        if userOffers[stor2[arg1].field_0].field_0 - 1 >= userOffers[stor2[arg1].field_0].field_0:
            revert with 'NH{q', 50
        if idx >= userOffers[stor2[arg1].field_0].field_0:
            revert with 'NH{q', 50
        userOffers[stor2[arg1].field_0][idx].field_0 = userOffers[stor2[arg1].field_0][userOffers[stor2[arg1].field_0].field_0].field_0
        if not userOffers[stor2[arg1].field_0].field_0:
            revert with 'NH{q', 49
        userOffers[stor2[arg1].field_0][userOffers[stor2[arg1].field_0].field_0].field_0 = 0
        userOffers[stor2[arg1].field_0].field_0--
        emit Bid(ledger[arg1].field_512, ledger[arg1].field_0, msg.sender, arg1);
        require ext_code.size(sub_6b41bf93Address)
        staticcall sub_6b41bf93Address.0x2a55205a with:
                gas gas_remaining wei
               args 0, ledger[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[32]
        if ledger[arg1].field_512 < ext_call.return_data[32]:
            revert with 'NH{q', 17
        ledger[arg1].field_512 = 0
        ledger[arg1].field_768 = msg.sender
        call ext_call.return_data[12 len 20] with:
           value ext_call.return_data[32] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'no money'
        call ledger[arg1].field_0 with:
           value ledger[arg1].field_512 - ext_call.return_data[32] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'no money'
    emit Bid(ledger[arg1].field_512, ledger[arg1].field_0, msg.sender, arg1);
    require ext_code.size(sub_6b41bf93Address)
    staticcall sub_6b41bf93Address.0x2a55205a with:
            gas gas_remaining wei
           args 0, ledger[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ledger[arg1].field_512 < ext_call.return_data[32]:
        revert with 'NH{q', 17
    ledger[arg1].field_512 = 0
    ledger[arg1].field_768 = msg.sender
    call ext_call.return_data[12 len 20] with:
       value ext_call.return_data[32] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'no money'
    call ledger[arg1].field_0 with:
       value ledger[arg1].field_512 - ext_call.return_data[32] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'no money'
}



}
