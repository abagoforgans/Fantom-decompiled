contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_eee6eee9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if 0x9c82236d36b781f9f921057cc35ce1fa7b3fdacc != msg.sender:
        revert with 0, '!'
    if block.number < 1:
        revert with 'NH{q', 17
    if sha3(block.timestamp, block.hash(block.number - 1), arg1, 0x3aad295e2570a321c12ee930e62d081cb5c2cd8000000000000000000000000 >> 672) % 20 < 19:
        revert with 0, '!d20'
    require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
    staticcall 0x3aad295e2570a321c12ee930e62d081cb5c2cd8.0xfcdd8e7e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, '!left'
    require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
    staticcall 0x3aad295e2570a321c12ee930e62d081cb5c2cd8.next_item() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 392] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = mem[ceil32(return_data.size) + 392]
    t = ext_call.return_data[0]
    while idx < arg2:
        u = 0
        v = 10
        while u < 11:
            mem[(2 * ceil32(return_data.size)) + 392] = 0x289137a100000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 396] = arg1
            mem[(2 * ceil32(return_data.size)) + 428] = 500
            require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
            call 0x03aad295e2570a321c12ee930e62d081cb5c2cd8.craft(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg1, 500
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if t > -v - 1:
                revert with 'NH{q', 17
            if t + v < 110:
                if v > -11:
                    revert with 'NH{q', 17
                if u == -1:
                    revert with 'NH{q', 17
                u = u + 1
                v = v + 10
                continue 
            mem[(2 * ceil32(return_data.size)) + 392] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 396] = this.address
            mem[(2 * ceil32(return_data.size)) + 428] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 460] = s
            require ext_code.size(0x3aad295e2570a321c12ee930e62d081cb5c2cd8)
            call 0x03aad295e2570a321c12ee930e62d081cb5c2cd8.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s > -2:
                revert with 'NH{q', 17
            if t < 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            t = t - 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s
        t = t
        continue 
}



}
