contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_bec29f4d(?) payable {
    mem[96] = 0xa1f0406d00000000000000000000000000000000000000000000000000000000
    mem[100] = 3
    require ext_code.size(0x342ebf0a5cec4404ccff73a40f9c30288fc72611)
    staticcall 0x342ebf0a5cec4404ccff73a40f9c30288fc72611.gems(uint256 arg1) with:
            gas gas_remaining wei
           args 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 288
    _4 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= test266151307()
    require mem[96 len 4], 0 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], 0 + 96]
    if mem[mem[96 len 4], 0 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], 0 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _89 = 3, mem[132 len 28]
        require 3, mem[132 len 28] <= test266151307()
        require 3, mem[132 len 28] + 127 < return_data.size + 96
        _91 = mem[3, mem[132 len 28] + 96]
        if mem[3, mem[132 len 28] + 96] > test266151307():
            revert with 'NH{q', 65
        _93 = mem[64]
        if mem[64] + ceil32(ceil32(mem[3, mem[132 len 28] + 96])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[3, mem[132 len 28] + 96])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[3, mem[132 len 28] + 96])) + 1
        mem[_93] = _91
        require _89 + _91 + 32 <= return_data.size
        mem[_93 + 32 len ceil32(_91)] = mem[_89 + 128 len ceil32(_91)]
        if ceil32(_91) <= _91:
            _171 = mem[160]
            require mem[160] == mem[160]
            _175 = mem[192]
            require mem[192] == mem[192]
            _179 = mem[224]
            require mem[224] == mem[224]
            _183 = mem[256]
            require mem[256] == mem[256]
            _187 = mem[288]
            require mem[288] == mem[300 len 20]
            _191 = mem[320]
            require mem[320] == mem[332 len 20]
            _195 = mem[352]
            require mem[352] == mem[364 len 20]
            mem[mem[64]] = 288
            mem[mem[64] + 288] = _5
            mem[mem[64] + 320 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
            if ceil32(_5) > _5:
                mem[mem[64] + _5 + 320] = 0
            mem[mem[64] + 32] = ceil32(_5) + 320
            mem[mem[64] + ceil32(_5) + 320] = _91
            mem[mem[64] + ceil32(_5) + 352 len ceil32(_91)] = mem[_93 + 32 len ceil32(_91)]
            if ceil32(_91) > _91:
                mem[mem[64] + ceil32(_5) + _91 + 352] = 0
            mem[mem[64] + 64] = _171
            mem[mem[64] + 96] = _175
            return Array(len=_5, data=mem[mem[64] + 320 len ceil32(_5) + ceil32(_91) + 32]), 
                   ceil32(_5) + 320,
                   _171,
                   _175,
                   _179,
                   _183,
                   address(_187),
                   address(_191),
                   address(_195)
        mem[_93 + _91 + 32] = 0
        _173 = mem[160]
        require mem[160] == mem[160]
        _177 = mem[192]
        require mem[192] == mem[192]
        _181 = mem[224]
        require mem[224] == mem[224]
        _185 = mem[256]
        require mem[256] == mem[256]
        _189 = mem[288]
        require mem[288] == mem[300 len 20]
        _193 = mem[320]
        require mem[320] == mem[332 len 20]
        _197 = mem[352]
        require mem[352] == mem[364 len 20]
        mem[mem[64]] = 288
        mem[mem[64] + 288] = _5
        mem[mem[64] + 320 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) > _5:
            mem[mem[64] + _5 + 320] = 0
        mem[mem[64] + 32] = ceil32(_5) + 320
        mem[mem[64] + ceil32(_5) + 320] = _91
        mem[mem[64] + ceil32(_5) + 352 len ceil32(_91)] = mem[_93 + 32 len ceil32(_91)]
        if ceil32(_91) > _91:
            mem[mem[64] + ceil32(_5) + _91 + 352] = 0
        mem[mem[64] + 64] = _173
        mem[mem[64] + 96] = _177
        return Array(len=_5, data=mem[mem[64] + 320 len ceil32(_5) + ceil32(_91) + 32]), 
               ceil32(_5) + 320,
               _173,
               _177,
               _181,
               _185,
               address(_189),
               address(_193),
               address(_197)
    mem[ceil32(return_data.size) + _5 + 128] = 0
    _90 = 3, mem[132 len 28]
    require 3, mem[132 len 28] <= test266151307()
    require 3, mem[132 len 28] + 127 < return_data.size + 96
    _92 = mem[3, mem[132 len 28] + 96]
    if mem[3, mem[132 len 28] + 96] > test266151307():
        revert with 'NH{q', 65
    _94 = mem[64]
    if mem[64] + ceil32(ceil32(mem[3, mem[132 len 28] + 96])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[3, mem[132 len 28] + 96])) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + ceil32(ceil32(mem[3, mem[132 len 28] + 96])) + 1
    mem[_94] = _92
    require _90 + _92 + 32 <= return_data.size
    mem[_94 + 32 len ceil32(_92)] = mem[_90 + 128 len ceil32(_92)]
    if ceil32(_92) <= _92:
        _172 = mem[160]
        require mem[160] == mem[160]
        _176 = mem[192]
        require mem[192] == mem[192]
        _180 = mem[224]
        require mem[224] == mem[224]
        _184 = mem[256]
        require mem[256] == mem[256]
        _188 = mem[288]
        require mem[288] == mem[300 len 20]
        _192 = mem[320]
        require mem[320] == mem[332 len 20]
        _196 = mem[352]
        require mem[352] == mem[364 len 20]
        mem[mem[64]] = 288
        mem[mem[64] + 288] = _5
        mem[mem[64] + 320 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) > _5:
            mem[mem[64] + _5 + 320] = 0
        mem[mem[64] + 32] = ceil32(_5) + 320
        mem[mem[64] + ceil32(_5) + 320] = _92
        mem[mem[64] + ceil32(_5) + 352 len ceil32(_92)] = mem[_94 + 32 len ceil32(_92)]
        if ceil32(_92) > _92:
            mem[mem[64] + ceil32(_5) + _92 + 352] = 0
        mem[mem[64] + 64] = _172
        mem[mem[64] + 96] = _176
        return Array(len=_5, data=mem[mem[64] + 320 len ceil32(_5) + ceil32(_92) + 32]), 
               ceil32(_5) + 320,
               _172,
               _176,
               _180,
               _184,
               address(_188),
               address(_192),
               address(_196)
    mem[_94 + _92 + 32] = 0
    _174 = mem[160]
    require mem[160] == mem[160]
    _178 = mem[192]
    require mem[192] == mem[192]
    _182 = mem[224]
    require mem[224] == mem[224]
    _186 = mem[256]
    require mem[256] == mem[256]
    _190 = mem[288]
    require mem[288] == mem[300 len 20]
    _194 = mem[320]
    require mem[320] == mem[332 len 20]
    _198 = mem[352]
    require mem[352] == mem[364 len 20]
    mem[mem[64]] = 288
    mem[mem[64] + 288] = _5
    mem[mem[64] + 320 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[mem[64] + _5 + 320] = 0
    mem[mem[64] + 32] = ceil32(_5) + 320
    mem[mem[64] + ceil32(_5) + 320] = _92
    mem[mem[64] + ceil32(_5) + 352 len ceil32(_92)] = mem[_94 + 32 len ceil32(_92)]
    if ceil32(_92) > _92:
        mem[mem[64] + ceil32(_5) + _92 + 352] = 0
    mem[mem[64] + 64] = _174
    mem[mem[64] + 96] = _178
    return Array(len=_5, data=mem[mem[64] + 320 len ceil32(_5) + ceil32(_92) + 32]), 
           ceil32(_5) + 320,
           _174,
           _178,
           _182,
           _186,
           address(_190),
           address(_194),
           address(_198)
}



}
