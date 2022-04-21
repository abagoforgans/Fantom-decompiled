contract main {




// =====================  Runtime code  =====================


address owner;
address harvesterAddress;
address stor2;
uint256 stor3;

function harvester() {
    return harvesterAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function withdrawEther() {
    if owner != msg.sender:
        revert with 0, 'caller !owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2cde9964(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'caller !owner'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'caller !owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'caller !owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_c14e85fb(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'caller !owner'
    mem[128] = address(arg1)
    mem[160] = address(arg3)
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg2, 0, 160, address(this.address), block.timestamp + 60, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_375357b0(?) {
    if owner != msg.sender:
        if harvesterAddress != msg.sender:
            revert with 0, 'caller !(owner || harvester)'
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.enterMechs(uint256 rg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x575f8738efda7f512e3654f277c77e80c7d2725)
    staticcall 0x575f8738efda7f512e3654f277c77e80c7d2725.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.enterMechs(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_586172af(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'caller !owner'
    require ext_code.size(stor2)
    call stor2.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor3 = 0
    stor2 = address(arg1)
    require ext_code.size(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5)
    staticcall 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.deposit(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor3 > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    stor3 += ext_call.return_data[0]
}

function emergencyExit() {
    if owner != msg.sender:
        revert with 0, 'caller !owner'
    require ext_code.size(stor2)
    call stor2.emergencyWithdraw() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor3 = 0
    require ext_code.size(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5)
    staticcall 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x575f8738efda7f512e3654f277c77e80c7d2725)
    staticcall 0x575f8738efda7f512e3654f277c77e80c7d2725.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x575f8738efda7f512e3654f277c77e80c7d2725)
    call 0x0575f8738efda7f512e3654f277c77e80c7d2725.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function exit() {
    if owner != msg.sender:
        revert with 0, 'caller !owner'
    require ext_code.size(stor2)
    call stor2.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor3 = 0
    require ext_code.size(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5)
    staticcall 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.leaveMechs(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x575f8738efda7f512e3654f277c77e80c7d2725)
    staticcall 0x575f8738efda7f512e3654f277c77e80c7d2725.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x575f8738efda7f512e3654f277c77e80c7d2725)
    call 0x0575f8738efda7f512e3654f277c77e80c7d2725.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_7f7b62de(?) {
    if owner != msg.sender:
        if harvesterAddress != msg.sender:
            revert with 0, 'caller !(owner || harvester)'
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.enterMechs(uint256 rg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x575f8738efda7f512e3654f277c77e80c7d2725)
    staticcall 0x575f8738efda7f512e3654f277c77e80c7d2725.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.enterMechs(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5)
    staticcall 0x85c85647e1a79c2b8bc3ed2b6a1dde326eec66c5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.deposit(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor3 > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    stor3 += ext_call.return_data[0]
}

function swap(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'caller !owner'
    mem[96] = 2
    mem[128] = arg1
    mem[160] = arg3
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = 0
    mem[260] = 160
    mem[356] = 2
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[292] = this.address
    mem[324] = block.timestamp + 60
    require ext_code.size(0x53c153a0df7e050bbefbb70ee9632061f12795fb)
    call 0x53c153a0df7e050bbefbb70ee9632061f12795fb.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg2, 0, 160, address(this.address), block.timestamp + 60, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _18 = mem[192 len 4], Mask(224, 32, arg2) >> 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 223 < return_data.size + 192
    _19 = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    require _18 + (32 * _19) + 32 <= return_data.size
    idx = 0
    s = _18 + 224
    t = ceil32(return_data.size) + 224
    while idx < _19:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}



}
