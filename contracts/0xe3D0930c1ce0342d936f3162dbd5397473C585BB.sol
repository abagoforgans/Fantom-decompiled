contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
uint256 id;
uint256 max;
address stor9;
uint256 balance;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function max() {
    return max
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function id() {
    return id
}

function balance() {
    return balance
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function getBalance() {
    balance = eth.balance(this.address)
}

function sub_d2546630(?) {
    call stor9 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require msg.sender == ownerOf[arg1]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor2[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_13bdcc81(?) payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    require balanceOf[address(msg.sender)] <= 0
    require id <= max
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor7]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor7] = msg.sender
    emit Transfer(0, msg.sender, id);
    if ext_code.size(msg.sender) > 0:
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, id, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    if id > -2:
        revert with 'NH{q', 17
    id++
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) <= 0:
    require ext_code.size(arg2)
    call arg2 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        if not return_data.size:
            if not arg4.length:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with arg4[all]
        if not return_data.size:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not 0, ext_call.return_data[4 len 28]
    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[96] = 28
    mem[128] = 'https://sunnysideup.fun/nft/'
    if not arg1:
        mem[294] = 'https://sunnysideup.fun/nft/'
        mem[322] = '0', '.json' / 256
        mem[328] = 32
        mem[360] = Mask(216, 0, '.json'), mem[289 len 5]
        mem[392 len ceil32(Mask(216, 0, '.json'), mem[289 len 5])] = mem[294 len ceil32(Mask(216, 0, '.json'), mem[289 len 5])]
        if ceil32(Mask(216, 0, '.json'), mem[289 len 5]) > Mask(216, 0, '.json'), mem[289 len 5]:
            mem[Mask(216, 0, '.json'), mem[289 len 5] + 392] = 0
        return memory
          from 328
           len ceil32(Mask(216, 0, '.json'), mem[289 len 5]) + 64
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[160] = s
    mem[64] = ceil32(s) + 192
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[160]:
                revert with 'NH{q', 50
            mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _287 = mem[64]
        _289 = mem[160]
        mem[mem[64] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        mem[mem[64] + _289 + 32] = '.json'
        if ceil32(_289) <= _289:
            _501 = mem[64]
            mem[mem[64]] = _289 + 5
            mem[64] = mem[64] + _289 + 37
            _517 = mem[96]
            mem[_287 + _289 + 69 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_517) <= _517:
                _673 = mem[_501]
                mem[_287 + _289 + _517 + 69 len ceil32(mem[_501])] = mem[_501 + 32 len ceil32(mem[_501])]
                if ceil32(_673) > _673:
                    mem[_287 + _289 + _517 + _673 + 69] = 0
                mem[64] = _287 + _289 + _517 + _673 + 69
                mem[_287 + _289 + _517 + _673 + 69] = 32
                mem[_287 + _289 + _517 + _673 + 101] = mem[_287 + _289 + 37]
                mem[_287 + _289 + _517 + _673 + 133 len ceil32(mem[_287 + _289 + 37])] = mem[_287 + _289 + 69 len ceil32(mem[_287 + _289 + 37])]
                if ceil32(mem[_287 + _289 + 37]) > mem[_287 + _289 + 37]:
                    mem[_287 + _289 + _517 + _673 + mem[_287 + _289 + 37] + 133] = 0
                return Array(len=mem[_287 + _289 + 37], data=mem[_287 + _289 + _517 + _673 + 133 len ceil32(mem[_287 + _289 + 37])])
            mem[_287 + _289 + _517 + 69] = 0
            _677 = mem[_501]
            mem[_287 + _289 + _517 + 69 len ceil32(mem[_501])] = mem[_501 + 32 len ceil32(mem[_501])]
            if ceil32(_677) > _677:
                mem[_287 + _289 + _517 + _677 + 69] = 0
            mem[64] = _287 + _289 + _517 + _677 + 69
            mem[_287 + _289 + _517 + _677 + 69] = 32
            mem[_287 + _289 + _517 + _677 + 101] = mem[_287 + _289 + 37]
            mem[_287 + _289 + _517 + _677 + 133 len ceil32(mem[_287 + _289 + 37])] = mem[_287 + _289 + 69 len ceil32(mem[_287 + _289 + 37])]
            if ceil32(mem[_287 + _289 + 37]) > mem[_287 + _289 + 37]:
                mem[_287 + _289 + _517 + _677 + mem[_287 + _289 + 37] + 133] = 0
            return Array(len=mem[_287 + _289 + 37], data=mem[_287 + _289 + _517 + _677 + 133 len ceil32(mem[_287 + _289 + 37])])
        _505 = mem[64]
        mem[mem[64]] = _289 + 5
        mem[64] = mem[64] + _289 + 37
        _519 = mem[96]
        mem[_287 + _289 + 69 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_519) <= _519:
            _674 = mem[_505]
            mem[_287 + _289 + _519 + 69 len ceil32(mem[_505])] = mem[_505 + 32 len ceil32(mem[_505])]
            if ceil32(_674) > _674:
                mem[_287 + _289 + _519 + _674 + 69] = 0
            mem[64] = _287 + _289 + _519 + _674 + 69
            mem[_287 + _289 + _519 + _674 + 69] = 32
            mem[_287 + _289 + _519 + _674 + 101] = mem[_287 + _289 + 37]
            mem[_287 + _289 + _519 + _674 + 133 len ceil32(mem[_287 + _289 + 37])] = mem[_287 + _289 + 69 len ceil32(mem[_287 + _289 + 37])]
            if ceil32(mem[_287 + _289 + 37]) > mem[_287 + _289 + 37]:
                mem[_287 + _289 + _519 + _674 + mem[_287 + _289 + 37] + 133] = 0
            return Array(len=mem[_287 + _289 + 37], data=mem[_287 + _289 + _519 + _674 + 133 len ceil32(mem[_287 + _289 + 37])])
        mem[_287 + _289 + _519 + 69] = 0
        _678 = mem[_505]
        mem[_287 + _289 + _519 + 69 len ceil32(mem[_505])] = mem[_505 + 32 len ceil32(mem[_505])]
        if ceil32(_678) > _678:
            mem[_287 + _289 + _519 + _678 + 69] = 0
        mem[64] = _287 + _289 + _519 + _678 + 69
        mem[_287 + _289 + _519 + _678 + 69] = 32
        mem[_287 + _289 + _519 + _678 + 101] = mem[_287 + _289 + 37]
        mem[_287 + _289 + _519 + _678 + 133 len ceil32(mem[_287 + _289 + 37])] = mem[_287 + _289 + 69 len ceil32(mem[_287 + _289 + 37])]
        if ceil32(mem[_287 + _289 + 37]) > mem[_287 + _289 + 37]:
            mem[_287 + _289 + _519 + _678 + mem[_287 + _289 + 37] + 133] = 0
        return Array(len=mem[_287 + _289 + 37], data=mem[_287 + _289 + _519 + _678 + 133 len ceil32(mem[_287 + _289 + 37])])
    mem[192 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[160]:
            revert with 'NH{q', 50
        mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _288 = mem[64]
    _290 = mem[160]
    mem[mem[64] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
    mem[mem[64] + _290 + 32] = '.json'
    if ceil32(_290) <= _290:
        _503 = mem[64]
        mem[mem[64]] = _290 + 5
        mem[64] = mem[64] + _290 + 37
        _518 = mem[96]
        mem[_288 + _290 + 69 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_518) <= _518:
            _675 = mem[_503]
            mem[_288 + _290 + _518 + 69 len ceil32(mem[_503])] = mem[_503 + 32 len ceil32(mem[_503])]
            if ceil32(_675) > _675:
                mem[_288 + _290 + _518 + _675 + 69] = 0
            mem[64] = _288 + _290 + _518 + _675 + 69
            mem[_288 + _290 + _518 + _675 + 69] = 32
            mem[_288 + _290 + _518 + _675 + 101] = mem[_288 + _290 + 37]
            mem[_288 + _290 + _518 + _675 + 133 len ceil32(mem[_288 + _290 + 37])] = mem[_288 + _290 + 69 len ceil32(mem[_288 + _290 + 37])]
            if ceil32(mem[_288 + _290 + 37]) > mem[_288 + _290 + 37]:
                mem[_288 + _290 + _518 + _675 + mem[_288 + _290 + 37] + 133] = 0
            return Array(len=mem[_288 + _290 + 37], data=mem[_288 + _290 + _518 + _675 + 133 len ceil32(mem[_288 + _290 + 37])])
        mem[_288 + _290 + _518 + 69] = 0
        _679 = mem[_503]
        mem[_288 + _290 + _518 + 69 len ceil32(mem[_503])] = mem[_503 + 32 len ceil32(mem[_503])]
        if ceil32(_679) > _679:
            mem[_288 + _290 + _518 + _679 + 69] = 0
        mem[64] = _288 + _290 + _518 + _679 + 69
        mem[_288 + _290 + _518 + _679 + 69] = 32
        mem[_288 + _290 + _518 + _679 + 101] = mem[_288 + _290 + 37]
        mem[_288 + _290 + _518 + _679 + 133 len ceil32(mem[_288 + _290 + 37])] = mem[_288 + _290 + 69 len ceil32(mem[_288 + _290 + 37])]
        if ceil32(mem[_288 + _290 + 37]) > mem[_288 + _290 + 37]:
            mem[_288 + _290 + _518 + _679 + mem[_288 + _290 + 37] + 133] = 0
        return Array(len=mem[_288 + _290 + 37], data=mem[_288 + _290 + _518 + _679 + 133 len ceil32(mem[_288 + _290 + 37])])
    _507 = mem[64]
    mem[mem[64]] = _290 + 5
    mem[64] = mem[64] + _290 + 37
    _520 = mem[96]
    mem[_288 + _290 + 69 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(_520) <= _520:
        _676 = mem[_507]
        mem[_288 + _290 + _520 + 69 len ceil32(mem[_507])] = mem[_507 + 32 len ceil32(mem[_507])]
        if ceil32(_676) > _676:
            mem[_288 + _290 + _520 + _676 + 69] = 0
        mem[64] = _288 + _290 + _520 + _676 + 69
        mem[_288 + _290 + _520 + _676 + 69] = 32
        mem[_288 + _290 + _520 + _676 + 101] = mem[_288 + _290 + 37]
        mem[_288 + _290 + _520 + _676 + 133 len ceil32(mem[_288 + _290 + 37])] = mem[_288 + _290 + 69 len ceil32(mem[_288 + _290 + 37])]
        if ceil32(mem[_288 + _290 + 37]) > mem[_288 + _290 + 37]:
            mem[_288 + _290 + _520 + _676 + mem[_288 + _290 + 37] + 133] = 0
        return Array(len=mem[_288 + _290 + 37], data=mem[_288 + _290 + _520 + _676 + 133 len ceil32(mem[_288 + _290 + 37])])
    mem[_288 + _290 + _520 + 69] = 0
    _680 = mem[_507]
    mem[_288 + _290 + _520 + 69 len ceil32(mem[_507])] = mem[_507 + 32 len ceil32(mem[_507])]
    if ceil32(_680) > _680:
        mem[_288 + _290 + _520 + _680 + 69] = 0
    mem[64] = _288 + _290 + _520 + _680 + 69
    mem[_288 + _290 + _520 + _680 + 69] = 32
    mem[_288 + _290 + _520 + _680 + 101] = mem[_288 + _290 + 37]
    mem[_288 + _290 + _520 + _680 + 133 len ceil32(mem[_288 + _290 + 37])] = mem[_288 + _290 + 69 len ceil32(mem[_288 + _290 + 37])]
    if ceil32(mem[_288 + _290 + 37]) > mem[_288 + _290 + 37]:
        mem[_288 + _290 + _520 + _680 + mem[_288 + _290 + 37] + 133] = 0
    return Array(len=mem[_288 + _290 + 37], data=mem[_288 + _290 + _520 + _680 + 133 len ceil32(mem[_288 + _290 + 37])])
}



}
