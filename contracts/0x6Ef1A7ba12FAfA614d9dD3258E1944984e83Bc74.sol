contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function sub_b9aac9e2(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ext_code.size(stor0)
    staticcall stor0.isApprovedForAll(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'please approve'
    idx = 0
    while idx < ('cd', 4).length:
        mem[ceil32(return_data.size) + 96] = 0x379607f500000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor1)
        call stor1.claim(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ea34f5b1(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(stor0)
    staticcall stor0.isApprovedForAll(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'please approve'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        staticcall stor0.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _103 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if block.timestamp <= mem[_103]:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor0)
            staticcall stor0.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _109 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _110 = mem[_109]
            mem[mem[64] + 4] = mem[_109]
            require ext_code.size(stor0)
            staticcall stor0.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args _110
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _116 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _118 = mem[_116]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor0)
            staticcall stor0.xp(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if mem[_124] < _118:
                if cd[((32 * idx) + cd[4] + 36)] >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * cd[((32 * idx) + cd[4] + 36)]) + cd[36] + 36)] == bool(cd[((32 * cd[((32 * idx) + cd[4] + 36)]) + cd[36] + 36)])
                if cd[((32 * cd[((32 * idx) + cd[4] + 36)]) + cd[36] + 36)]:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require ext_code.size(stor3)
                    staticcall stor3.ability_scores(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _137 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 192
                    require mem[_137] == mem[_137 + 28 len 4]
                    require mem[_137 + 32] == mem[_137 + 60 len 4]
                    require mem[_137 + 64] == mem[_137 + 92 len 4]
                    require mem[_137 + 96] == mem[_137 + 124 len 4]
                    require mem[_137 + 128] == mem[_137 + 156 len 4]
                    require mem[_137 + 160] == mem[_137 + 188 len 4]
                    if mem[_137 + 28 len 4] != 0:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(stor2)
                        staticcall stor2.adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _172 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if block.timestamp > mem[_172]:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(stor2)
                            call stor2.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(stor0)
                call stor0.level_up(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if cd[((32 * idx) + cd[4] + 36)] >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * cd[((32 * idx) + cd[4] + 36)]) + cd[36] + 36)] == bool(cd[((32 * cd[((32 * idx) + cd[4] + 36)]) + cd[36] + 36)])
                if cd[((32 * cd[((32 * idx) + cd[4] + 36)]) + cd[36] + 36)]:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require ext_code.size(stor3)
                    staticcall stor3.ability_scores(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _143 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 192
                    require mem[_143] == mem[_143 + 28 len 4]
                    require mem[_143 + 32] == mem[_143 + 60 len 4]
                    require mem[_143 + 64] == mem[_143 + 92 len 4]
                    require mem[_143 + 96] == mem[_143 + 124 len 4]
                    require mem[_143 + 128] == mem[_143 + 156 len 4]
                    require mem[_143 + 160] == mem[_143 + 188 len 4]
                    if mem[_143 + 28 len 4] != 0:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(stor2)
                        staticcall stor2.adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _179 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if block.timestamp > mem[_179]:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(stor2)
                            call stor2.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(stor0)
            call stor0.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor0)
            staticcall stor0.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _115 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _117 = mem[_115]
            mem[mem[64] + 4] = mem[_115]
            require ext_code.size(stor0)
            staticcall stor0.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args _117
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _123 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _125 = mem[_123]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor0)
            staticcall stor0.xp(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _130 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if mem[_130] < _125:
                if cd[((32 * idx) + cd[4] + 36)] >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * cd[((32 * idx) + cd[4] + 36)]) + cd[36] + 36)] == bool(cd[((32 * cd[((32 * idx) + cd[4] + 36)]) + cd[36] + 36)])
                if cd[((32 * cd[((32 * idx) + cd[4] + 36)]) + cd[36] + 36)]:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require ext_code.size(stor3)
                    staticcall stor3.ability_scores(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _144 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 192
                    require mem[_144] == mem[_144 + 28 len 4]
                    require mem[_144 + 32] == mem[_144 + 60 len 4]
                    require mem[_144 + 64] == mem[_144 + 92 len 4]
                    require mem[_144 + 96] == mem[_144 + 124 len 4]
                    require mem[_144 + 128] == mem[_144 + 156 len 4]
                    require mem[_144 + 160] == mem[_144 + 188 len 4]
                    if mem[_144 + 28 len 4] != 0:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(stor2)
                        staticcall stor2.adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _180 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if block.timestamp > mem[_180]:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(stor2)
                            call stor2.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(stor0)
                call stor0.level_up(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if cd[((32 * idx) + cd[4] + 36)] >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * cd[((32 * idx) + cd[4] + 36)]) + cd[36] + 36)] == bool(cd[((32 * cd[((32 * idx) + cd[4] + 36)]) + cd[36] + 36)])
                if cd[((32 * cd[((32 * idx) + cd[4] + 36)]) + cd[36] + 36)]:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require ext_code.size(stor3)
                    staticcall stor3.ability_scores(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _151 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 192
                    require mem[_151] == mem[_151 + 28 len 4]
                    require mem[_151 + 32] == mem[_151 + 60 len 4]
                    require mem[_151 + 64] == mem[_151 + 92 len 4]
                    require mem[_151 + 96] == mem[_151 + 124 len 4]
                    require mem[_151 + 128] == mem[_151 + 156 len 4]
                    require mem[_151 + 160] == mem[_151 + 188 len 4]
                    if mem[_151 + 28 len 4] != 0:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                        require ext_code.size(stor2)
                        staticcall stor2.adventurers_log(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _187 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if block.timestamp > mem[_187]:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                            require ext_code.size(stor2)
                            call stor2.adventure(uint256 arg1) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + cd[4] + 36)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
