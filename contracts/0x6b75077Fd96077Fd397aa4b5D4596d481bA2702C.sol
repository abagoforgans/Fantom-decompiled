contract main {




// =====================  Runtime code  =====================


address rarityAddress;
address sub_d486adccAddress;
address sub_bba4a299Address;
address sub_c0e25263Address;

function sub_bba4a299(?) payable {
    return sub_bba4a299Address
}

function sub_c0e25263(?) payable {
    return sub_c0e25263Address
}

function sub_d486adcc(?) payable {
    return sub_d486adccAddress
}

function rarity() payable {
    return rarityAddress
}

function _fallback() payable {
    revert
}

function execute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.adventurers_log(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(rarityAddress)
    if block.timestamp > ext_call.return_data[0]:
        call rarityAddress.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    staticcall rarityAddress.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(rarityAddress)
    if ext_call.return_data[12 len 20] != this.address:
        call rarityAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    staticcall rarityAddress.level(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.xp_required(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(rarityAddress)
    staticcall rarityAddress.xp(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        require ext_code.size(rarityAddress)
        call rarityAddress.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_d486adccAddress)
        call sub_d486adccAddress.claim(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_bba4a299Address)
    staticcall sub_bba4a299Address.adventurers_log(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_bba4a299Address)
    staticcall sub_bba4a299Address.scout(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp > ext_call.return_data[0]:
        if ext_call.return_data[0] > 0:
            require ext_code.size(sub_bba4a299Address)
            call sub_bba4a299Address.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_38e20078(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _165 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_165] == mem[_165]
        if block.timestamp <= mem[_165]:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.getApproved(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _171 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_171] == mem[_171 + 12 len 20]
            if mem[_171 + 12 len 20] == this.address:
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.level(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _180 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _183 = mem[_180]
                require mem[_180] == mem[_180]
                mem[mem[64] + 4] = mem[_180]
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.xp_required(uint256 arg1) with:
                        gas gas_remaining wei
                       args _183
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _195 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _198 = mem[_195]
                require mem[_195] == mem[_195]
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.xp(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _211 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_211] == mem[_211]
                if mem[_211] < _198:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(sub_bba4a299Address)
                    staticcall sub_bba4a299Address.adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _230 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _234 = mem[_230]
                    require mem[_230] == mem[_230]
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(sub_bba4a299Address)
                    staticcall sub_bba4a299Address.scout(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _258 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_258] == mem[_258]
                    if block.timestamp > _234:
                        if mem[_258] > 0:
                            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_bba4a299Address)
                            call sub_bba4a299Address.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(rarityAddress)
                    call rarityAddress.level_up(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[4] + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d486adccAddress)
                    call sub_d486adccAddress.claim(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[4] + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(sub_bba4a299Address)
                    staticcall sub_bba4a299Address.adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _257 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _262 = mem[_257]
                    require mem[_257] == mem[_257]
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(sub_bba4a299Address)
                    staticcall sub_bba4a299Address.scout(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _288 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_288] == mem[_288]
                    if block.timestamp > _262:
                        if mem[_288] > 0:
                            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_bba4a299Address)
                            call sub_bba4a299Address.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[mem[64] + 36] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(rarityAddress)
                call rarityAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.level(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _192 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _196 = mem[_192]
                require mem[_192] == mem[_192]
                mem[mem[64] + 4] = mem[_192]
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.xp_required(uint256 arg1) with:
                        gas gas_remaining wei
                       args _196
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _208 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _212 = mem[_208]
                require mem[_208] == mem[_208]
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.xp(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _225 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_225] == mem[_225]
                if mem[_225] < _212:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(sub_bba4a299Address)
                    staticcall sub_bba4a299Address.adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _251 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _259 = mem[_251]
                    require mem[_251] == mem[_251]
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(sub_bba4a299Address)
                    staticcall sub_bba4a299Address.scout(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _285 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_285] == mem[_285]
                    if block.timestamp > _259:
                        if mem[_285] > 0:
                            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_bba4a299Address)
                            call sub_bba4a299Address.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(rarityAddress)
                    call rarityAddress.level_up(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[4] + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d486adccAddress)
                    call sub_d486adccAddress.claim(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[4] + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(sub_bba4a299Address)
                    staticcall sub_bba4a299Address.adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _283 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _289 = mem[_283]
                    require mem[_283] == mem[_283]
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(sub_bba4a299Address)
                    staticcall sub_bba4a299Address.scout(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _309 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_309] == mem[_309]
                    if block.timestamp > _289:
                        if mem[_309] > 0:
                            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_bba4a299Address)
                            call sub_bba4a299Address.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(rarityAddress)
            call rarityAddress.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.getApproved(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _175 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_175] == mem[_175 + 12 len 20]
            if mem[_175 + 12 len 20] == this.address:
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.level(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _187 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _189 = mem[_187]
                require mem[_187] == mem[_187]
                mem[mem[64] + 4] = mem[_187]
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.xp_required(uint256 arg1) with:
                        gas gas_remaining wei
                       args _189
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _203 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _206 = mem[_203]
                require mem[_203] == mem[_203]
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.xp(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _219 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_219] == mem[_219]
                if mem[_219] < _206:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(sub_bba4a299Address)
                    staticcall sub_bba4a299Address.adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _244 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _247 = mem[_244]
                    require mem[_244] == mem[_244]
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(sub_bba4a299Address)
                    staticcall sub_bba4a299Address.scout(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _275 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_275] == mem[_275]
                    if block.timestamp > _247:
                        if mem[_275] > 0:
                            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_bba4a299Address)
                            call sub_bba4a299Address.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(rarityAddress)
                    call rarityAddress.level_up(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[4] + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d486adccAddress)
                    call sub_d486adccAddress.claim(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[4] + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(sub_bba4a299Address)
                    staticcall sub_bba4a299Address.adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _273 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _277 = mem[_273]
                    require mem[_273] == mem[_273]
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(sub_bba4a299Address)
                    staticcall sub_bba4a299Address.scout(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _301 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_301] == mem[_301]
                    if block.timestamp > _277:
                        if mem[_301] > 0:
                            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_bba4a299Address)
                            call sub_bba4a299Address.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[mem[64] + 36] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(rarityAddress)
                call rarityAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.level(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _200 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _204 = mem[_200]
                require mem[_200] == mem[_200]
                mem[mem[64] + 4] = mem[_200]
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.xp_required(uint256 arg1) with:
                        gas gas_remaining wei
                       args _204
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _216 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _220 = mem[_216]
                require mem[_216] == mem[_216]
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.xp(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _236 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_236] == mem[_236]
                if mem[_236] < _220:
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(sub_bba4a299Address)
                    staticcall sub_bba4a299Address.adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _269 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _276 = mem[_269]
                    require mem[_269] == mem[_269]
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(sub_bba4a299Address)
                    staticcall sub_bba4a299Address.scout(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _300 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_300] == mem[_300]
                    if block.timestamp > _276:
                        if mem[_300] > 0:
                            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_bba4a299Address)
                            call sub_bba4a299Address.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(rarityAddress)
                    call rarityAddress.level_up(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[4] + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d486adccAddress)
                    call sub_d486adccAddress.claim(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[((32 * idx) + cd[4] + 36)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(sub_bba4a299Address)
                    staticcall sub_bba4a299Address.adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _297 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _302 = mem[_297]
                    require mem[_297] == mem[_297]
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(sub_bba4a299Address)
                    staticcall sub_bba4a299Address.scout(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _317 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_317] == mem[_317]
                    if block.timestamp > _302:
                        if mem[_317] > 0:
                            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(sub_bba4a299Address)
                            call sub_bba4a299Address.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
