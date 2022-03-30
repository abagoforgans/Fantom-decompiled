contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;

function _fallback() payable {
  stop
}

function sub_48794ce5(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require calldata.size + -cd[36] + -cd[s] - 36 >= 96
        _67 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        require cd[(cd[36] + cd[s] + 36)] == address(cd[(cd[36] + cd[s] + 36)])
        mem[_67] = cd[(cd[36] + cd[s] + 36)]
        require cd[(cd[36] + cd[s] + 68)] == address(cd[(cd[36] + cd[s] + 68)])
        mem[_67 + 32] = cd[(cd[36] + cd[s] + 68)]
        require cd[(cd[36] + cd[s] + 100)] <= test266151307()
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)] <= test266151307()
        _78 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)]) + 32
        mem[_78] = cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)] + 68 <= calldata.size
        mem[_78 + 32 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)]] = call.data[cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 68 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)]]
        mem[_78 + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)] + 32] = 0
        mem[_67 + 64] = _78
        mem[t] = _67
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner!'
    require 0 < mem[96]
    _71 = mem[mem[128]]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = cd[4]
    require ext_code.size(address(_71))
    call address(_71).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[4]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _75 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_75] == bool(mem[_75])
    _132 = mem[96]
    idx = 0
    while idx < _132:
        require idx < mem[96]
        _139 = mem[mem[(32 * idx) + 128]]
        require idx < mem[96]
        _142 = mem[mem[(32 * idx) + 128] + 32]
        require idx < mem[96]
        _146 = mem[mem[(32 * idx) + 128]]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_146))
        staticcall address(_146).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _151 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _154 = mem[_151]
        mem[mem[64] + 4] = address(_142)
        mem[mem[64] + 36] = _154
        require ext_code.size(address(_139))
        call address(_139).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(_142), _154
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _165 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_165] == bool(mem[_165])
        require idx < mem[96]
        _172 = mem[mem[(32 * idx) + 128] + 32]
        require idx < mem[96]
        _176 = mem[mem[(32 * idx) + 128] + 64]
        _177 = mem[64]
        _178 = mem[mem[mem[(32 * idx) + 128] + 64]]
        s = 0
        while s < _178:
            mem[s + _177] = mem[_176 + s + 32]
            _132 = mem[96]
            s = s + 32
            continue 
        if ceil32(_178) <= _178:
            call address(_172).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _178 + _177 + -mem[64] - 4]
            if return_data.size:
                _188 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_188] = return_data.size
                mem[_188 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_177 + _178] = 0
            call address(_172).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _178 + _177 + -mem[64] - 4]
            if return_data.size:
                _190 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_190] = return_data.size
                mem[_190 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        _132 = mem[96]
        idx = idx + 1
        continue 
    require 0 < mem[96]
    _136 = mem[mem[128]]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_136))
    staticcall address(_136).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _148 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    stor1 = mem[_148] - cd[4]
    if not mem[_148] - cd[4]:
        revert with 0, 'revert'
    require 0 < mem[96]
    _156 = mem[mem[128]]
    require 0 < mem[96]
    _160 = mem[mem[128]]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_160))
    staticcall address(_160).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _166 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _168 = mem[_166]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _168
    require ext_code.size(address(_156))
    call address(_156).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, _168
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _179 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_179] == bool(mem[_179])
}



}
