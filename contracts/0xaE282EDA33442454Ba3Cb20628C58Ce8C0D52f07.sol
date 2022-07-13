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
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = idx
            require ext_code.size(stor1)
            staticcall stor1.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args msg.sender, idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _86 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_86] == mem[_86]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = mem[_86]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _118 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _118:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            stor2 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _130 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _130
            require ext_code.size(stor1)
            call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), _130
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _138 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64]] = 0xae169a5000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _138
            require ext_code.size(stor1)
            call stor1.claimReward(uint256 arg1) with:
                 gas gas_remaining wei
                args _138
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            if not ext_call.success:
                _146 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _146
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, _146
            else:
                _152 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _152
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, _152
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            _118 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
    else:
        mem[(2 * ceil32(return_data.size)) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = idx
            require ext_code.size(stor1)
            staticcall stor1.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args msg.sender, idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _87 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_87] == mem[_87]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = mem[_87]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _119 = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        while idx < _119:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            stor2 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _132 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _132
            require ext_code.size(stor1)
            call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), _132
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            _140 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[mem[64]] = 0xae169a5000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _140
            require ext_code.size(stor1)
            call stor1.claimReward(uint256 arg1) with:
                 gas gas_remaining wei
                args _140
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            if not ext_call.success:
                _149 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _149
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, _149
            else:
                _154 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _154
                require ext_code.size(stor1)
                call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, _154
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            _119 = mem[(2 * ceil32(return_data.size)) + 96]
            idx = idx + 1
            continue 
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
