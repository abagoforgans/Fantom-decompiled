contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    revert
}

function claimNFT(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'sup?'
    require ext_code.size(stor1)
    call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimAll() {
    if stor0 != msg.sender:
        revert with 0, 'sup?'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_90eedb65(?) {
    if stor0 != msg.sender:
        revert with 0, 'sup?'
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, '1'
    require ext_code.size(stor1)
    staticcall stor1.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    stor2 = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.claimReward(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) <= 0:
        revert with 0, '1337'
}

function sub_ea555ef3(?) {
    if stor0 != msg.sender:
        revert with 0, 'sup?'
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, '1'
    require ext_code.size(stor1)
    staticcall stor1.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor2 = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.claimReward(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) <= 0:
        revert with 0, '1337'
}

function sub_1941e6cf(?) {
    if stor0 != msg.sender:
        revert with 0, 'sup?'
    mem[100] = msg.sender
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, '1'
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 0
        require ext_code.size(stor1)
        staticcall stor1.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _32 = mem[_31]
        require mem[_31] == mem[_31]
        stor2 = mem[_31]
        require ext_code.size(stor1)
        call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), mem[_31]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        call stor1.claimReward(uint256 arg1) with:
             gas gas_remaining wei
            args mem[_31]
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _32
        require ext_code.size(stor1)
        call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, _32
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
