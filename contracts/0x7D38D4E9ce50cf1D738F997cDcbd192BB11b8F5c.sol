contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function sub_9a945f78(?) {
    require calldata.size - 4 >= 96
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 >= 96 and (32 * ('cd', 68).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 68).length) + 128
    mem[96] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require calldata.size + -cd[68] + -cd[s] - 36 >= 64
        _85 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[(cd[68] + cd[s] + 36)] == address(cd[(cd[68] + cd[s] + 36)])
        mem[_85] = cd[(cd[68] + cd[s] + 36)]
        require cd[(cd[68] + cd[s] + 68)] <= test266151307()
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 68)] + 67 < calldata.size
        require cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 68)] + 36)] <= test266151307()
        _97 = mem[64]
        require mem[64] + (32 * cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 68)] + 36)]) + 32
        mem[_97] = cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 68)] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 68)] + (32 * cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 68)] + 36)]) + 68 <= calldata.size
        u = cd[68] + cd[s] + cd[(cd[68] + cd[s] + 68)] + 68
        v = _97 + 32
        w = 0
        while w < cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 68)] + 36)]:
            require cd[u] == address(cd[u])
            mem[v] = cd[u]
            u = u + 32
            v = v + 32
            w = w + 1
            continue 
        mem[_85 + 32] = _97
        mem[t] = _85
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner!'
    require 0 < mem[96]
    require 0 < mem[mem[mem[128] + 32]]
    _91 = mem[mem[mem[128] + 32] + 32]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = cd[4]
    require ext_code.size(address(_91))
    call address(_91).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[4]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _95 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_95] == bool(mem[_95])
    _168 = mem[96]
    idx = 0
    while idx < _168:
        require idx < mem[96]
        require 0 < mem[mem[mem[(32 * idx) + 128] + 32]]
        _179 = mem[mem[mem[(32 * idx) + 128] + 32] + 32]
        require idx < mem[96]
        _182 = mem[mem[(32 * idx) + 128]]
        require idx < mem[96]
        require 0 < mem[mem[mem[(32 * idx) + 128] + 32]]
        _188 = mem[mem[mem[(32 * idx) + 128] + 32] + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_188))
        staticcall address(_188).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _193 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _199 = mem[_193]
        mem[mem[64] + 4] = address(_182)
        mem[mem[64] + 36] = _199
        require ext_code.size(address(_179))
        call address(_179).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(_182), _199
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _211 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_211] == bool(mem[_211])
        require idx < mem[96]
        _218 = mem[mem[(32 * idx) + 128]]
        require idx < mem[96]
        require 0 < mem[mem[mem[(32 * idx) + 128] + 32]]
        _224 = mem[mem[mem[(32 * idx) + 128] + 32] + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_224))
        staticcall address(_224).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _229 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _230 = mem[_229]
        require idx < mem[96]
        _233 = mem[mem[(32 * idx) + 128] + 32]
        _234 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _230
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        _235 = mem[_233]
        mem[mem[64] + 164] = mem[_233]
        s = 0
        t = mem[64] + 196
        u = _233 + 32
        while s < _235:
            mem[t] = mem[u + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_234 + 100] = this.address
        mem[_234 + 132] = cd[36]
        require ext_code.size(address(_218))
        call address(_218).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _234 + (32 * _235) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require 0 < mem[96]
    require 0 < mem[mem[mem[128] + 32]]
    _177 = mem[mem[mem[128] + 32] + 32]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_177))
    staticcall address(_177).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _190 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_190] <= cd[4]:
        revert with 0, 'revert'
    require 0 < mem[96]
    require 0 < mem[mem[mem[128] + 32]]
    _200 = mem[mem[mem[128] + 32] + 32]
    require 0 < mem[96]
    require 0 < mem[mem[mem[128] + 32]]
    _207 = mem[mem[mem[128] + 32] + 32]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_207))
    staticcall address(_207).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _212 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _214 = mem[_212]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _214
    require ext_code.size(address(_200))
    call address(_200).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, _214
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _226 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_226] == bool(mem[_226])
}



}
