contract main {




// =====================  Runtime code  =====================


#
#  - sub_17fc0d02(?)
#  - sub_3f4ee2e4(?)
#  - sub_66c83029(?)
#  - sub_7357f5d2(?)
#
address owner;
mapping of struct sub_320fc375;
mapping of uint256 credits;
uint256 sub_756b4e11;
mapping of uint256 fees;
uint256 sub_9b73156b;
uint256 feeMultiplier;
mapping of address sub_8f2ca1cc;
mapping of uint256 sub_1a00aea7;
uint256 sub_22c745d7;
address rarityAddress;
address sub_c0e25263Address;
address sub_d486adccAddress;
address sub_d011ee7eAddress;
address sub_5e53e940Address;
array of address sub_45046bc4;

function sub_1a00aea7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_1a00aea7[arg1]
}

function sub_22c745d7(?) {
    return sub_22c745d7
}

function sub_320fc375(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_320fc375[arg1].field_0
}

function sub_45046bc4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_45046bc4.length
    return sub_45046bc4[arg1]
}

function sub_5e53e940(?) {
    return sub_5e53e940Address
}

function sub_756b4e11(?) {
    return sub_756b4e11
}

function owner() {
    return owner
}

function sub_8f2ca1cc(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_8f2ca1cc[arg1]
}

function sub_9b73156b(?) {
    return sub_9b73156b
}

function sub_c0e25263(?) {
    return sub_c0e25263Address
}

function sub_d011ee7e(?) {
    return sub_d011ee7eAddress
}

function sub_d486adcc(?) {
    return sub_d486adccAddress
}

function feeMultiplier() {
    return feeMultiplier
}

function fees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return fees[arg1]
}

function credits(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return credits[arg1]
}

function rarity() {
    return rarityAddress
}

function _fallback() payable {
    revert
}

function sub_d39b1832(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return (credits[address(arg1)] < sub_756b4e11)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_61c15d5a(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9b73156b = arg1
}

function sub_b82eacc1(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_22c745d7 = arg1
}

function sub_cbb0d50b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_756b4e11 = arg1
}

function sub_3604610a(?) payable {
    if credits[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    credits[address(msg.sender)] += msg.value
    emit 0x2f278cf5: msg.value, msg.sender
}

function setFeeMultiplier(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeMultiplier = arg1
}

function sub_b224e511(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1a00aea7[address(arg1)] = arg2
}

function sub_f8d439d4(?) {
    if fees[address(msg.sender)] <= 0:
        revert with 0, 'BOT_INSUFFICIENT_FEE'
    fees[address(msg.sender)] = 0
    call msg.sender with:
       value fees[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function withdrawFees(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        if fees[address(this.address)] < arg2:
            revert with 0, 'BOT_INSUFFICIENT_FEE'
        if fees[address(this.address)] < arg2:
            revert with 'NH{q', 17
        fees[address(this.address)] -= arg2
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    else:
        if fees[address(this.address)] < fees[address(this.address)]:
            revert with 0, 'BOT_INSUFFICIENT_FEE'
        if fees[address(this.address)] < fees[address(this.address)]:
            revert with 'NH{q', 17
        fees[address(this.address)] = 0
        call arg1 with:
           value fees[address(this.address)] wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawCredit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1:
        if credits[address(msg.sender)] < arg1:
            revert with 0, 'BOT_INSUFFICIENT_CREDIT'
        if credits[address(msg.sender)] < arg1:
            revert with 'NH{q', 17
        credits[address(msg.sender)] -= arg1
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x6b009602: arg1, msg.sender
    else:
        if credits[address(msg.sender)] < credits[address(msg.sender)]:
            revert with 0, 'BOT_INSUFFICIENT_CREDIT'
        if credits[address(msg.sender)] < credits[address(msg.sender)]:
            revert with 'NH{q', 17
        credits[address(msg.sender)] = 0
        call msg.sender with:
           value credits[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x6b009602: credits[address(msg.sender)], msg.sender
}

function sub_14c41cfa(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'BOT_INVALID_LENGTHS'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_16] == mem[_16 + 12 len 20]
        if mem[_16 + 12 len 20] != msg.sender:
            revert with 0, 'BOT_NOT_SUMMONER_OWNER'
        if not mem[_16 + 12 len 20]:
            revert with 0, 'BOT_AFFILIATE_EQUAL_OWNER'
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 101
        sub_320fc375[cd[((32 * idx) + cd[4] + 36)]].field_0 = cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64]] = cd[((32 * idx) + cd[36] + 36)]
        emit 0x4168a6bc: cd[((32 * idx) + cd[36] + 36)], msg.sender, cd[((32 * idx) + cd[4] + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_f9fe88ec(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'BOT_INVALID_LENGTHS'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_19] == mem[_19 + 12 len 20]
        if mem[_19 + 12 len 20] != msg.sender:
            revert with 0, 'BOT_NOT_SUMMONER_OWNER'
        if mem[_19 + 12 len 20] == address(cd[68]):
            revert with 0, 'BOT_AFFILIATE_EQUAL_OWNER'
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 101
        sub_320fc375[cd[((32 * idx) + cd[4] + 36)]].field_0 = cd[((32 * idx) + cd[36] + 36)]
        if address(cd[68]):
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 107
            sub_8f2ca1cc[cd[((32 * idx) + cd[4] + 36)]] = address(cd[68])
        mem[mem[64]] = cd[((32 * idx) + cd[36] + 36)]
        emit 0x4168a6bc: cd[((32 * idx) + cd[36] + 36)], msg.sender, cd[((32 * idx) + cd[4] + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_a3ddd357(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 101
    if not sub_320fc375[arg1].field_0:
        return 0
    mem[100] = arg1
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.summoner(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[ceil32(return_data.size) + 96 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 128
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        if sub_320fc375[arg1].field_0 != 1:
            if sub_320fc375[arg1].field_1 != 1:
                if sub_320fc375[arg1].field_2 != 1:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2650 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2650] == mem[_2650]
                                if mem[_2650] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3262 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3262] == mem[_3262]
                                    if mem[_3262]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if address(ext_call.return_data[0]) != this.address:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2651 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2651] == mem[_2651]
                                if mem[_2651] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3263 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3263] == mem[_3263]
                                    if mem[_3263]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                mem[(2 * ceil32(return_data.size)) + 100] = arg1
                require ext_code.size(sub_d486adccAddress)
                staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2652 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2652] == mem[_2652]
                                if mem[_2652] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3264 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3264] == mem[_3264]
                                    if mem[_3264]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2653 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2653] == mem[_2653]
                            if mem[_2653] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3265 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3265] == mem[_3265]
                                if mem[_3265]:
                                    return 12
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 4
            if address(ext_call.return_data[0]) != this.address:
                if sub_320fc375[arg1].field_2 != 1:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2654 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2654] == mem[_2654]
                                if mem[_2654] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3266 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3266] == mem[_3266]
                                    if mem[_3266]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if address(ext_call.return_data[0]) != this.address:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2655 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2655] == mem[_2655]
                                if mem[_2655] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3267 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3267] == mem[_3267]
                                    if mem[_3267]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                mem[(2 * ceil32(return_data.size)) + 100] = arg1
                require ext_code.size(sub_d486adccAddress)
                staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2656 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2656] == mem[_2656]
                                if mem[_2656] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3268 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3268] == mem[_3268]
                                    if mem[_3268]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2657 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2657] == mem[_2657]
                            if mem[_2657] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3269 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3269] == mem[_3269]
                                if mem[_3269]:
                                    return 12
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 4
            mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[96]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[96]
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                if sub_320fc375[arg1].field_2 != 1:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2658 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2658] == mem[_2658]
                                if mem[_2658] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3270 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3270] == mem[_3270]
                                    if mem[_3270]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if address(ext_call.return_data[0]) != this.address:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2659 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2659] == mem[_2659]
                                if mem[_2659] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3271 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3271] == mem[_3271]
                                    if mem[_3271]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                mem[(4 * ceil32(return_data.size)) + 100] = arg1
                require ext_code.size(sub_d486adccAddress)
                staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2660 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2660] == mem[_2660]
                                if mem[_2660] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3272 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3272] == mem[_3272]
                                    if mem[_3272]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2661 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2661] == mem[_2661]
                            if mem[_2661] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3273 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3273] == mem[_3273]
                                if mem[_3273]:
                                    return 12
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 4
            if sub_320fc375[arg1].field_2 != 1:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2662 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2662] == mem[_2662]
                            if mem[_2662] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3274 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3274] == mem[_3274]
                                if mem[_3274]:
                                    return 10
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 2
            if address(ext_call.return_data[0]) != this.address:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2663 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2663] == mem[_2663]
                            if mem[_2663] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3275 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3275] == mem[_3275]
                                if mem[_3275]:
                                    return 10
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 2
            mem[(4 * ceil32(return_data.size)) + 100] = arg1
            require ext_code.size(sub_d486adccAddress)
            staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2664 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2664] == mem[_2664]
                            if mem[_2664] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3276 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3276] == mem[_3276]
                                if mem[_3276]:
                                    return 10
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 2
            if sub_320fc375[arg1].field_3 == 1:
                if address(ext_call.return_data[0]) == this.address:
                    idx = 0
                    while uint8(idx) < sub_45046bc4.length:
                        mem[0] = 115
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(sub_45046bc4[uint8(idx)])
                        staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2665 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2665] == mem[_2665]
                        if mem[_2665] < block.timestamp:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3277 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3277] == mem[_3277]
                            if mem[_3277]:
                                return 14
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
            return 6
        if address(ext_call.return_data[0]) != this.address:
            if sub_320fc375[arg1].field_1 != 1:
                if sub_320fc375[arg1].field_2 != 1:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2666 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2666] == mem[_2666]
                                if mem[_2666] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3278 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3278] == mem[_3278]
                                    if mem[_3278]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if address(ext_call.return_data[0]) != this.address:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2667 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2667] == mem[_2667]
                                if mem[_2667] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3279 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3279] == mem[_3279]
                                    if mem[_3279]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                mem[(2 * ceil32(return_data.size)) + 100] = arg1
                require ext_code.size(sub_d486adccAddress)
                staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2668 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2668] == mem[_2668]
                                if mem[_2668] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3280 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3280] == mem[_3280]
                                    if mem[_3280]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2669 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2669] == mem[_2669]
                            if mem[_2669] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3281 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3281] == mem[_3281]
                                if mem[_3281]:
                                    return 12
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 4
            if address(ext_call.return_data[0]) != this.address:
                if sub_320fc375[arg1].field_2 != 1:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2670 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2670] == mem[_2670]
                                if mem[_2670] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3282 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3282] == mem[_3282]
                                    if mem[_3282]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if address(ext_call.return_data[0]) != this.address:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2671 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2671] == mem[_2671]
                                if mem[_2671] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3283 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3283] == mem[_3283]
                                    if mem[_3283]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                mem[(2 * ceil32(return_data.size)) + 100] = arg1
                require ext_code.size(sub_d486adccAddress)
                staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2672 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2672] == mem[_2672]
                                if mem[_2672] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3284 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3284] == mem[_3284]
                                    if mem[_3284]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2673 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2673] == mem[_2673]
                            if mem[_2673] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3285 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3285] == mem[_3285]
                                if mem[_3285]:
                                    return 12
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 4
            mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[96]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[96]
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                if sub_320fc375[arg1].field_2 != 1:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2674 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2674] == mem[_2674]
                                if mem[_2674] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3286 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3286] == mem[_3286]
                                    if mem[_3286]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if address(ext_call.return_data[0]) != this.address:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2675 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2675] == mem[_2675]
                                if mem[_2675] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3287 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3287] == mem[_3287]
                                    if mem[_3287]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                mem[(4 * ceil32(return_data.size)) + 100] = arg1
                require ext_code.size(sub_d486adccAddress)
                staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2676 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2676] == mem[_2676]
                                if mem[_2676] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3288 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3288] == mem[_3288]
                                    if mem[_3288]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2677 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2677] == mem[_2677]
                            if mem[_2677] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3289 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3289] == mem[_3289]
                                if mem[_3289]:
                                    return 12
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 4
            if sub_320fc375[arg1].field_2 != 1:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2678 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2678] == mem[_2678]
                            if mem[_2678] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3290 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3290] == mem[_3290]
                                if mem[_3290]:
                                    return 10
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 2
            if address(ext_call.return_data[0]) != this.address:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2679 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2679] == mem[_2679]
                            if mem[_2679] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3291 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3291] == mem[_3291]
                                if mem[_3291]:
                                    return 10
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 2
            mem[(4 * ceil32(return_data.size)) + 100] = arg1
            require ext_code.size(sub_d486adccAddress)
            staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2680 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2680] == mem[_2680]
                            if mem[_2680] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3292 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3292] == mem[_3292]
                                if mem[_3292]:
                                    return 10
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 2
            if sub_320fc375[arg1].field_3 == 1:
                if address(ext_call.return_data[0]) == this.address:
                    idx = 0
                    while uint8(idx) < sub_45046bc4.length:
                        mem[0] = 115
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(sub_45046bc4[uint8(idx)])
                        staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2681 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2681] == mem[_2681]
                        if mem[_2681] < block.timestamp:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3293 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3293] == mem[_3293]
                            if mem[_3293]:
                                return 14
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
            return 6
        if ext_call.return_data[32] >= block.timestamp:
            if sub_320fc375[arg1].field_1 != 1:
                if sub_320fc375[arg1].field_2 != 1:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2682 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2682] == mem[_2682]
                                if mem[_2682] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3294 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3294] == mem[_3294]
                                    if mem[_3294]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if address(ext_call.return_data[0]) != this.address:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2683 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2683] == mem[_2683]
                                if mem[_2683] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3295 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3295] == mem[_3295]
                                    if mem[_3295]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                mem[(2 * ceil32(return_data.size)) + 100] = arg1
                require ext_code.size(sub_d486adccAddress)
                staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2684 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2684] == mem[_2684]
                                if mem[_2684] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3296 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3296] == mem[_3296]
                                    if mem[_3296]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2685 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2685] == mem[_2685]
                            if mem[_2685] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3297 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3297] == mem[_3297]
                                if mem[_3297]:
                                    return 12
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 4
            if address(ext_call.return_data[0]) != this.address:
                if sub_320fc375[arg1].field_2 != 1:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2686 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2686] == mem[_2686]
                                if mem[_2686] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3298 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3298] == mem[_3298]
                                    if mem[_3298]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if address(ext_call.return_data[0]) != this.address:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2687 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2687] == mem[_2687]
                                if mem[_2687] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3299 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3299] == mem[_3299]
                                    if mem[_3299]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                mem[(2 * ceil32(return_data.size)) + 100] = arg1
                require ext_code.size(sub_d486adccAddress)
                staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2688 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2688] == mem[_2688]
                                if mem[_2688] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3300 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3300] == mem[_3300]
                                    if mem[_3300]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2689 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2689] == mem[_2689]
                            if mem[_2689] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3301 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3301] == mem[_3301]
                                if mem[_3301]:
                                    return 12
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 4
            mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[96]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[96]
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                if sub_320fc375[arg1].field_2 != 1:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2690 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2690] == mem[_2690]
                                if mem[_2690] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3302 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3302] == mem[_3302]
                                    if mem[_3302]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if address(ext_call.return_data[0]) != this.address:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2691 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2691] == mem[_2691]
                                if mem[_2691] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3303 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3303] == mem[_3303]
                                    if mem[_3303]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                mem[(4 * ceil32(return_data.size)) + 100] = arg1
                require ext_code.size(sub_d486adccAddress)
                staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2692 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2692] == mem[_2692]
                                if mem[_2692] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3304 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3304] == mem[_3304]
                                    if mem[_3304]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2693 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2693] == mem[_2693]
                            if mem[_2693] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3305 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3305] == mem[_3305]
                                if mem[_3305]:
                                    return 12
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 4
            if sub_320fc375[arg1].field_2 != 1:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2694 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2694] == mem[_2694]
                            if mem[_2694] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3306 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3306] == mem[_3306]
                                if mem[_3306]:
                                    return 10
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 2
            if address(ext_call.return_data[0]) != this.address:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2695 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2695] == mem[_2695]
                            if mem[_2695] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3307 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3307] == mem[_3307]
                                if mem[_3307]:
                                    return 10
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 2
            mem[(4 * ceil32(return_data.size)) + 100] = arg1
            require ext_code.size(sub_d486adccAddress)
            staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2696 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2696] == mem[_2696]
                            if mem[_2696] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3308 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3308] == mem[_3308]
                                if mem[_3308]:
                                    return 10
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 2
            if sub_320fc375[arg1].field_3 == 1:
                if address(ext_call.return_data[0]) == this.address:
                    idx = 0
                    while uint8(idx) < sub_45046bc4.length:
                        mem[0] = 115
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(sub_45046bc4[uint8(idx)])
                        staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2697 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2697] == mem[_2697]
                        if mem[_2697] < block.timestamp:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3309 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3309] == mem[_3309]
                            if mem[_3309]:
                                return 14
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
            return 6
        if sub_320fc375[arg1].field_1 != 1:
            if sub_320fc375[arg1].field_2 != 1:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2698 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2698] == mem[_2698]
                            if mem[_2698] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3310 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3310] == mem[_3310]
                                if mem[_3310]:
                                    return 9
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 1
            if address(ext_call.return_data[0]) != this.address:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2699 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2699] == mem[_2699]
                            if mem[_2699] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3311 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3311] == mem[_3311]
                                if mem[_3311]:
                                    return 9
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 1
            mem[(2 * ceil32(return_data.size)) + 100] = arg1
            require ext_code.size(sub_d486adccAddress)
            staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2700 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2700] == mem[_2700]
                            if mem[_2700] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3312 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3312] == mem[_3312]
                                if mem[_3312]:
                                    return 9
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 1
            if sub_320fc375[arg1].field_3 == 1:
                if address(ext_call.return_data[0]) == this.address:
                    idx = 0
                    while uint8(idx) < sub_45046bc4.length:
                        mem[0] = 115
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(sub_45046bc4[uint8(idx)])
                        staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2701 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2701] == mem[_2701]
                        if mem[_2701] < block.timestamp:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3313 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3313] == mem[_3313]
                            if mem[_3313]:
                                return 13
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
            return 5
        if address(ext_call.return_data[0]) != this.address:
            if sub_320fc375[arg1].field_2 != 1:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2702 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2702] == mem[_2702]
                            if mem[_2702] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3314 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3314] == mem[_3314]
                                if mem[_3314]:
                                    return 9
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 1
            if address(ext_call.return_data[0]) != this.address:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2703 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2703] == mem[_2703]
                            if mem[_2703] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3315 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3315] == mem[_3315]
                                if mem[_3315]:
                                    return 9
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 1
            mem[(2 * ceil32(return_data.size)) + 100] = arg1
            require ext_code.size(sub_d486adccAddress)
            staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2704 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2704] == mem[_2704]
                            if mem[_2704] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3316 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3316] == mem[_3316]
                                if mem[_3316]:
                                    return 9
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 1
            if sub_320fc375[arg1].field_3 == 1:
                if address(ext_call.return_data[0]) == this.address:
                    idx = 0
                    while uint8(idx) < sub_45046bc4.length:
                        mem[0] = 115
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(sub_45046bc4[uint8(idx)])
                        staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2705 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2705] == mem[_2705]
                        if mem[_2705] < block.timestamp:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3317 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3317] == mem[_3317]
                            if mem[_3317]:
                                return 13
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
            return 5
        mem[(2 * ceil32(return_data.size)) + 100] = ext_call.return_data[96]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[96]
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            if sub_320fc375[arg1].field_2 != 1:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2706 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2706] == mem[_2706]
                            if mem[_2706] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3318 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3318] == mem[_3318]
                                if mem[_3318]:
                                    return 9
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 1
            if address(ext_call.return_data[0]) != this.address:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2707 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2707] == mem[_2707]
                            if mem[_2707] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3319 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3319] == mem[_3319]
                                if mem[_3319]:
                                    return 9
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 1
            mem[(4 * ceil32(return_data.size)) + 100] = arg1
            require ext_code.size(sub_d486adccAddress)
            staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2708 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2708] == mem[_2708]
                            if mem[_2708] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3320 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3320] == mem[_3320]
                                if mem[_3320]:
                                    return 9
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 1
            if sub_320fc375[arg1].field_3 == 1:
                if address(ext_call.return_data[0]) == this.address:
                    idx = 0
                    while uint8(idx) < sub_45046bc4.length:
                        mem[0] = 115
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(sub_45046bc4[uint8(idx)])
                        staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2709 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2709] == mem[_2709]
                        if mem[_2709] < block.timestamp:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3321 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3321] == mem[_3321]
                            if mem[_3321]:
                                return 13
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
            return 5
        if sub_320fc375[arg1].field_2 != 1:
            if sub_320fc375[arg1].field_3 == 1:
                if address(ext_call.return_data[0]) == this.address:
                    idx = 0
                    while uint8(idx) < sub_45046bc4.length:
                        mem[0] = 115
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(sub_45046bc4[uint8(idx)])
                        staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2710 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2710] == mem[_2710]
                        if mem[_2710] < block.timestamp:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3322 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3322] == mem[_3322]
                            if mem[_3322]:
                                return 11
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
            return 3
        if address(ext_call.return_data[0]) != this.address:
            if sub_320fc375[arg1].field_3 == 1:
                if address(ext_call.return_data[0]) == this.address:
                    idx = 0
                    while uint8(idx) < sub_45046bc4.length:
                        mem[0] = 115
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(sub_45046bc4[uint8(idx)])
                        staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2711 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2711] == mem[_2711]
                        if mem[_2711] < block.timestamp:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3323 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3323] == mem[_3323]
                            if mem[_3323]:
                                return 11
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
            return 3
        mem[(4 * ceil32(return_data.size)) + 100] = arg1
        require ext_code.size(sub_d486adccAddress)
        staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if sub_320fc375[arg1].field_3 == 1:
                if address(ext_call.return_data[0]) == this.address:
                    idx = 0
                    while uint8(idx) < sub_45046bc4.length:
                        mem[0] = 115
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(sub_45046bc4[uint8(idx)])
                        staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2712 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2712] == mem[_2712]
                        if mem[_2712] < block.timestamp:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3324 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3324] == mem[_3324]
                            if mem[_3324]:
                                return 11
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
            return 3
        if sub_320fc375[arg1].field_3 == 1:
            if address(ext_call.return_data[0]) == this.address:
                idx = 0
                while uint8(idx) < sub_45046bc4.length:
                    mem[0] = 115
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(sub_45046bc4[uint8(idx)])
                    staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2713 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2713] == mem[_2713]
                    if mem[_2713] < block.timestamp:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(sub_45046bc4[uint8(idx)])
                        staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3325 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3325] == mem[_3325]
                        if mem[_3325]:
                            return 15
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
    else:
        mem[ceil32(return_data.size) + 100] = arg1
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args arg1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.0xe985e9c5 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.summoner(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(4 * ceil32(return_data.size)) + 96 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 96
        require return_data.size >= 128
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        if sub_320fc375[arg1].field_0 != 1:
            if sub_320fc375[arg1].field_1 != 1:
                if sub_320fc375[arg1].field_2 != 1:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2714 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2714] == mem[_2714]
                                if mem[_2714] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3326 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3326] == mem[_3326]
                                    if mem[_3326]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if address(ext_call.return_data[0]) != this.address:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2715 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2715] == mem[_2715]
                                if mem[_2715] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3327 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3327] == mem[_3327]
                                    if mem[_3327]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                mem[(6 * ceil32(return_data.size)) + 100] = arg1
                require ext_code.size(sub_d486adccAddress)
                staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2716 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2716] == mem[_2716]
                                if mem[_2716] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3328 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3328] == mem[_3328]
                                    if mem[_3328]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2717 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2717] == mem[_2717]
                            if mem[_2717] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3329 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3329] == mem[_3329]
                                if mem[_3329]:
                                    return 12
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 4
            if not ext_call.return_data[0]:
                if sub_320fc375[arg1].field_2 != 1:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2718 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2718] == mem[_2718]
                                if mem[_2718] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3330 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3330] == mem[_3330]
                                    if mem[_3330]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if address(ext_call.return_data[0]) != this.address:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2719 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2719] == mem[_2719]
                                if mem[_2719] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3331 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3331] == mem[_3331]
                                    if mem[_3331]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                mem[(6 * ceil32(return_data.size)) + 100] = arg1
                require ext_code.size(sub_d486adccAddress)
                staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2720 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2720] == mem[_2720]
                                if mem[_2720] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3332 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3332] == mem[_3332]
                                    if mem[_3332]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2721 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2721] == mem[_2721]
                            if mem[_2721] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3333 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3333] == mem[_3333]
                                if mem[_3333]:
                                    return 12
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 4
            mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[96]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[96]
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                if sub_320fc375[arg1].field_2 != 1:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2722 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2722] == mem[_2722]
                                if mem[_2722] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3334 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3334] == mem[_3334]
                                    if mem[_3334]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if address(ext_call.return_data[0]) != this.address:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2723 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2723] == mem[_2723]
                                if mem[_2723] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3335 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3335] == mem[_3335]
                                    if mem[_3335]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                mem[(7 * ceil32(return_data.size)) + 100] = arg1
                require ext_code.size(sub_d486adccAddress)
                staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3806 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3806] == mem[_3806]
                                if mem[_3806] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3886 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3886] == mem[_3886]
                                    if mem[_3886]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3807 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3807] == mem[_3807]
                            if mem[_3807] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3887 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3887] == mem[_3887]
                                if mem[_3887]:
                                    return 12
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 4
            if sub_320fc375[arg1].field_2 != 1:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2724 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2724] == mem[_2724]
                            if mem[_2724] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3336 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3336] == mem[_3336]
                                if mem[_3336]:
                                    return 10
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 2
            if address(ext_call.return_data[0]) != this.address:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2725 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2725] == mem[_2725]
                            if mem[_2725] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3337 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3337] == mem[_3337]
                                if mem[_3337]:
                                    return 10
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 2
            mem[(7 * ceil32(return_data.size)) + 100] = arg1
            require ext_code.size(sub_d486adccAddress)
            staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3808 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3808] == mem[_3808]
                            if mem[_3808] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3888 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3888] == mem[_3888]
                                if mem[_3888]:
                                    return 10
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 2
            if sub_320fc375[arg1].field_3 == 1:
                if address(ext_call.return_data[0]) == this.address:
                    idx = 0
                    while uint8(idx) < sub_45046bc4.length:
                        mem[0] = 115
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(sub_45046bc4[uint8(idx)])
                        staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3809 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3809] == mem[_3809]
                        if mem[_3809] < block.timestamp:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3889 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3889] == mem[_3889]
                            if mem[_3889]:
                                return 14
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
            return 6
        if not ext_call.return_data[0]:
            if sub_320fc375[arg1].field_1 != 1:
                if sub_320fc375[arg1].field_2 != 1:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2726 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2726] == mem[_2726]
                                if mem[_2726] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3338 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3338] == mem[_3338]
                                    if mem[_3338]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if address(ext_call.return_data[0]) != this.address:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2727 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2727] == mem[_2727]
                                if mem[_2727] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3339 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3339] == mem[_3339]
                                    if mem[_3339]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                mem[(6 * ceil32(return_data.size)) + 100] = arg1
                require ext_code.size(sub_d486adccAddress)
                staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2728 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2728] == mem[_2728]
                                if mem[_2728] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3340 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3340] == mem[_3340]
                                    if mem[_3340]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2729 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2729] == mem[_2729]
                            if mem[_2729] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3341 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3341] == mem[_3341]
                                if mem[_3341]:
                                    return 12
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 4
            if not ext_call.return_data[0]:
                if sub_320fc375[arg1].field_2 != 1:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2730 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2730] == mem[_2730]
                                if mem[_2730] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3342 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3342] == mem[_3342]
                                    if mem[_3342]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if address(ext_call.return_data[0]) != this.address:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2731 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2731] == mem[_2731]
                                if mem[_2731] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3343 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3343] == mem[_3343]
                                    if mem[_3343]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                mem[(6 * ceil32(return_data.size)) + 100] = arg1
                require ext_code.size(sub_d486adccAddress)
                staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2732 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2732] == mem[_2732]
                                if mem[_2732] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3344 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3344] == mem[_3344]
                                    if mem[_3344]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2733 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2733] == mem[_2733]
                            if mem[_2733] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3345 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3345] == mem[_3345]
                                if mem[_3345]:
                                    return 12
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 4
            mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[96]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[96]
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                if sub_320fc375[arg1].field_2 != 1:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2734 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2734] == mem[_2734]
                                if mem[_2734] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3346 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3346] == mem[_3346]
                                    if mem[_3346]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if address(ext_call.return_data[0]) != this.address:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2735 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2735] == mem[_2735]
                                if mem[_2735] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3347 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3347] == mem[_3347]
                                    if mem[_3347]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                mem[(7 * ceil32(return_data.size)) + 100] = arg1
                require ext_code.size(sub_d486adccAddress)
                staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3810 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3810] == mem[_3810]
                                if mem[_3810] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3890 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3890] == mem[_3890]
                                    if mem[_3890]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3811 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3811] == mem[_3811]
                            if mem[_3811] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3891 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3891] == mem[_3891]
                                if mem[_3891]:
                                    return 12
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 4
            if sub_320fc375[arg1].field_2 != 1:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2737 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2737] == mem[_2737]
                            if mem[_2737] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3348 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3348] == mem[_3348]
                                if mem[_3348]:
                                    return 10
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 2
            if address(ext_call.return_data[0]) != this.address:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2738 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2738] == mem[_2738]
                            if mem[_2738] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3349 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3349] == mem[_3349]
                                if mem[_3349]:
                                    return 10
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 2
            mem[(7 * ceil32(return_data.size)) + 100] = arg1
            require ext_code.size(sub_d486adccAddress)
            staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3812 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3812] == mem[_3812]
                            if mem[_3812] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3892 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3892] == mem[_3892]
                                if mem[_3892]:
                                    return 10
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 2
            if sub_320fc375[arg1].field_3 == 1:
                if address(ext_call.return_data[0]) == this.address:
                    idx = 0
                    while uint8(idx) < sub_45046bc4.length:
                        mem[0] = 115
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(sub_45046bc4[uint8(idx)])
                        staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3813 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3813] == mem[_3813]
                        if mem[_3813] < block.timestamp:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3893 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3893] == mem[_3893]
                            if mem[_3893]:
                                return 14
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
            return 6
        if ext_call.return_data[32] >= block.timestamp:
            if sub_320fc375[arg1].field_1 != 1:
                if sub_320fc375[arg1].field_2 != 1:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2740 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2740] == mem[_2740]
                                if mem[_2740] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3350 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3350] == mem[_3350]
                                    if mem[_3350]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if address(ext_call.return_data[0]) != this.address:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2741 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2741] == mem[_2741]
                                if mem[_2741] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3351 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3351] == mem[_3351]
                                    if mem[_3351]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                mem[(6 * ceil32(return_data.size)) + 100] = arg1
                require ext_code.size(sub_d486adccAddress)
                staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2742 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2742] == mem[_2742]
                                if mem[_2742] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3352 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3352] == mem[_3352]
                                    if mem[_3352]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2743 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2743] == mem[_2743]
                            if mem[_2743] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3353 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3353] == mem[_3353]
                                if mem[_3353]:
                                    return 12
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 4
            if not ext_call.return_data[0]:
                if sub_320fc375[arg1].field_2 != 1:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2744 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2744] == mem[_2744]
                                if mem[_2744] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3354 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3354] == mem[_3354]
                                    if mem[_3354]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if address(ext_call.return_data[0]) != this.address:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2745 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2745] == mem[_2745]
                                if mem[_2745] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3355 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3355] == mem[_3355]
                                    if mem[_3355]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                mem[(6 * ceil32(return_data.size)) + 100] = arg1
                require ext_code.size(sub_d486adccAddress)
                staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2746 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2746] == mem[_2746]
                                if mem[_2746] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3356 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3356] == mem[_3356]
                                    if mem[_3356]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2747 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2747] == mem[_2747]
                            if mem[_2747] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3357 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3357] == mem[_3357]
                                if mem[_3357]:
                                    return 12
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 4
            mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[96]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[96]
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                if sub_320fc375[arg1].field_2 != 1:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2748 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2748] == mem[_2748]
                                if mem[_2748] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3358 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3358] == mem[_3358]
                                    if mem[_3358]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if address(ext_call.return_data[0]) != this.address:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2749 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2749] == mem[_2749]
                                if mem[_2749] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3359 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3359] == mem[_3359]
                                    if mem[_3359]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                mem[(7 * ceil32(return_data.size)) + 100] = arg1
                require ext_code.size(sub_d486adccAddress)
                staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if sub_320fc375[arg1].field_3 == 1:
                        if address(ext_call.return_data[0]) == this.address:
                            idx = 0
                            while uint8(idx) < sub_45046bc4.length:
                                mem[0] = 115
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3814 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3814] == mem[_3814]
                                if mem[_3814] < block.timestamp:
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(sub_45046bc4[uint8(idx)])
                                    staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3894 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3894] == mem[_3894]
                                    if mem[_3894]:
                                        return 8
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                continue 
                            return 0
                        else:
                            return 0
                    else:
                        return 0
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3815 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3815] == mem[_3815]
                            if mem[_3815] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3895 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3895] == mem[_3895]
                                if mem[_3895]:
                                    return 12
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 4
            if sub_320fc375[arg1].field_2 != 1:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2750 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2750] == mem[_2750]
                            if mem[_2750] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3360 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3360] == mem[_3360]
                                if mem[_3360]:
                                    return 10
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 2
            if address(ext_call.return_data[0]) != this.address:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2751 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2751] == mem[_2751]
                            if mem[_2751] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3361 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3361] == mem[_3361]
                                if mem[_3361]:
                                    return 10
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 2
            mem[(7 * ceil32(return_data.size)) + 100] = arg1
            require ext_code.size(sub_d486adccAddress)
            staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3816 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3816] == mem[_3816]
                            if mem[_3816] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3896 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3896] == mem[_3896]
                                if mem[_3896]:
                                    return 10
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 2
            if sub_320fc375[arg1].field_3 == 1:
                if address(ext_call.return_data[0]) == this.address:
                    idx = 0
                    while uint8(idx) < sub_45046bc4.length:
                        mem[0] = 115
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(sub_45046bc4[uint8(idx)])
                        staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3817 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3817] == mem[_3817]
                        if mem[_3817] < block.timestamp:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3897 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3897] == mem[_3897]
                            if mem[_3897]:
                                return 14
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
            return 6
        if sub_320fc375[arg1].field_1 != 1:
            if sub_320fc375[arg1].field_2 != 1:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2752 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2752] == mem[_2752]
                            if mem[_2752] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3362 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3362] == mem[_3362]
                                if mem[_3362]:
                                    return 9
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 1
            if address(ext_call.return_data[0]) != this.address:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2753 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2753] == mem[_2753]
                            if mem[_2753] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3363 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3363] == mem[_3363]
                                if mem[_3363]:
                                    return 9
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 1
            mem[(6 * ceil32(return_data.size)) + 100] = arg1
            require ext_code.size(sub_d486adccAddress)
            staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2754 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2754] == mem[_2754]
                            if mem[_2754] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3364 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3364] == mem[_3364]
                                if mem[_3364]:
                                    return 9
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 1
            if sub_320fc375[arg1].field_3 == 1:
                if address(ext_call.return_data[0]) == this.address:
                    idx = 0
                    while uint8(idx) < sub_45046bc4.length:
                        mem[0] = 115
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(sub_45046bc4[uint8(idx)])
                        staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2755 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2755] == mem[_2755]
                        if mem[_2755] < block.timestamp:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3365 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3365] == mem[_3365]
                            if mem[_3365]:
                                return 13
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
            return 5
        if not ext_call.return_data[0]:
            if sub_320fc375[arg1].field_2 != 1:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2756 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2756] == mem[_2756]
                            if mem[_2756] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3366 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3366] == mem[_3366]
                                if mem[_3366]:
                                    return 9
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 1
            if address(ext_call.return_data[0]) != this.address:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2757 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2757] == mem[_2757]
                            if mem[_2757] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3367 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3367] == mem[_3367]
                                if mem[_3367]:
                                    return 9
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 1
            mem[(6 * ceil32(return_data.size)) + 100] = arg1
            require ext_code.size(sub_d486adccAddress)
            staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2758 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2758] == mem[_2758]
                            if mem[_2758] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3368 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3368] == mem[_3368]
                                if mem[_3368]:
                                    return 9
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 1
            if sub_320fc375[arg1].field_3 == 1:
                if address(ext_call.return_data[0]) == this.address:
                    idx = 0
                    while uint8(idx) < sub_45046bc4.length:
                        mem[0] = 115
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(sub_45046bc4[uint8(idx)])
                        staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2759 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2759] == mem[_2759]
                        if mem[_2759] < block.timestamp:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3369 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3369] == mem[_3369]
                            if mem[_3369]:
                                return 13
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
            return 5
        mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[96]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[96]
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            if sub_320fc375[arg1].field_2 != 1:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2760 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2760] == mem[_2760]
                            if mem[_2760] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3370 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3370] == mem[_3370]
                                if mem[_3370]:
                                    return 9
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 1
            if address(ext_call.return_data[0]) != this.address:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2761 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2761] == mem[_2761]
                            if mem[_2761] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3371 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3371] == mem[_3371]
                                if mem[_3371]:
                                    return 9
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 1
            mem[(7 * ceil32(return_data.size)) + 100] = arg1
            require ext_code.size(sub_d486adccAddress)
            staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if sub_320fc375[arg1].field_3 == 1:
                    if address(ext_call.return_data[0]) == this.address:
                        idx = 0
                        while uint8(idx) < sub_45046bc4.length:
                            mem[0] = 115
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3818 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3818] == mem[_3818]
                            if mem[_3818] < block.timestamp:
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(sub_45046bc4[uint8(idx)])
                                staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3898 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3898] == mem[_3898]
                                if mem[_3898]:
                                    return 9
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            continue 
                return 1
            if sub_320fc375[arg1].field_3 == 1:
                if address(ext_call.return_data[0]) == this.address:
                    idx = 0
                    while uint8(idx) < sub_45046bc4.length:
                        mem[0] = 115
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(sub_45046bc4[uint8(idx)])
                        staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3819 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3819] == mem[_3819]
                        if mem[_3819] < block.timestamp:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3899 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3899] == mem[_3899]
                            if mem[_3899]:
                                return 13
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
            return 5
        if sub_320fc375[arg1].field_2 != 1:
            if sub_320fc375[arg1].field_3 == 1:
                if address(ext_call.return_data[0]) == this.address:
                    idx = 0
                    while uint8(idx) < sub_45046bc4.length:
                        mem[0] = 115
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(sub_45046bc4[uint8(idx)])
                        staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2762 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2762] == mem[_2762]
                        if mem[_2762] < block.timestamp:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3372 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3372] == mem[_3372]
                            if mem[_3372]:
                                return 11
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
            return 3
        if address(ext_call.return_data[0]) != this.address:
            if sub_320fc375[arg1].field_3 == 1:
                if address(ext_call.return_data[0]) == this.address:
                    idx = 0
                    while uint8(idx) < sub_45046bc4.length:
                        mem[0] = 115
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(sub_45046bc4[uint8(idx)])
                        staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2763 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2763] == mem[_2763]
                        if mem[_2763] < block.timestamp:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3373 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3373] == mem[_3373]
                            if mem[_3373]:
                                return 11
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
            return 3
        mem[(7 * ceil32(return_data.size)) + 100] = arg1
        require ext_code.size(sub_d486adccAddress)
        staticcall sub_d486adccAddress.claimable(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if sub_320fc375[arg1].field_3 == 1:
                if address(ext_call.return_data[0]) == this.address:
                    idx = 0
                    while uint8(idx) < sub_45046bc4.length:
                        mem[0] = 115
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(sub_45046bc4[uint8(idx)])
                        staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3820 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3820] == mem[_3820]
                        if mem[_3820] < block.timestamp:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(sub_45046bc4[uint8(idx)])
                            staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3900 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3900] == mem[_3900]
                            if mem[_3900]:
                                return 11
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
            return 3
        if sub_320fc375[arg1].field_3 == 1:
            if address(ext_call.return_data[0]) == this.address:
                idx = 0
                while uint8(idx) < sub_45046bc4.length:
                    mem[0] = 115
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(sub_45046bc4[uint8(idx)])
                    staticcall sub_45046bc4[uint8(idx)].adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3821 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3821] == mem[_3821]
                    if mem[_3821] < block.timestamp:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(sub_45046bc4[uint8(idx)])
                        staticcall sub_45046bc4[uint8(idx)].scout(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3901 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3901] == mem[_3901]
                        if mem[_3901]:
                            return 15
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    continue 
    return 7
}



}
