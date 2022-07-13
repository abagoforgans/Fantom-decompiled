contract main {




// =====================  Runtime code  =====================


#
#  - mint(uint8 arg1)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
uint256 stor10;
address owner;
address stor12;
address stor13;
address stor14;
mapping of uint8 stor15;
mapping of uint8 stor16;
mapping of address sub_6bc80c66;
mapping of uint8 stor18;
mapping of uint8 stor19;
mapping of struct stor20;
mapping of uint256 sub_25bd9e35;
mapping of uint256 flare;
mapping of uint256 stor23;
mapping of uint256 sub_c2e4ff21;
mapping of uint256 sub_aade6e42;
mapping of uint256 sub_2fd333c4;
mapping of uint256 stor27;
mapping of uint256 stor28;
mapping of uint256 stor29;
mapping of uint8 status;
mapping of uint8 rarity;
mapping of uint8 class;
mapping of uint8 face;
mapping of uint8 sub_72136828;
mapping of uint8 stor35;
mapping of uint8 stor36;
mapping of uint8 stor37;
mapping of uint8 stor99;

function sub_001c0766(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(stor37[arg1]))
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_1a77392b(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(stor19[arg1[all]])
}

function sub_25bd9e35(?) {
    require calldata.size - 4 >= 32
    return sub_25bd9e35[arg1]
}

function sub_26e22e5f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(stor35[arg1]))
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_2fd333c4(?) {
    require calldata.size - 4 >= 32
    return sub_2fd333c4[arg1]
}

function getRarity(uint256 arg1) {
    require calldata.size - 4 >= 32
    return rarity[arg1]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function getClass(uint256 arg1) {
    require calldata.size - 4 >= 32
    return class[arg1]
}

function getStatus(uint256 arg1) {
    require calldata.size - 4 >= 32
    return status[arg1]
}

function getFace(uint256 arg1) {
    require calldata.size - 4 >= 32
    return face[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function sub_6bc80c66(?) {
    require calldata.size - 4 >= 32
    return sub_6bc80c66[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_72136828(?) {
    require calldata.size - 4 >= 32
    return sub_72136828[arg1]
}

function owner() {
    return owner
}

function sub_aade6e42(?) {
    require calldata.size - 4 >= 32
    return sub_aade6e42[arg1]
}

function sub_bae404d2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor16[arg1])
}

function sub_c2e4ff21(?) {
    require calldata.size - 4 >= 32
    return sub_c2e4ff21[arg1]
}

function getFlare(uint256 arg1) {
    require calldata.size - 4 >= 32
    return flare[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function sub_f92f844b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(stor36[arg1]))
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function toggleTeam(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor15[address(arg1)]) = not uint8(stor15[address(arg1)]) or Mask(248, 8, uint256(stor15[address(arg1)]))
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_a106d771(?) {
    require calldata.size - 4 >= 32
    if sub_6bc80c66[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only this trainer's current location can do this'
    if 2 == status[arg1]:
        revert with 0, 'Already battling'
    status[arg1] = 2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_7bee2c50(?) {
    require calldata.size - 4 >= 32
    if status[arg1] != 3:
        return stor23[arg1]
    if not uint8(stor37[stor17[arg1]]):
        return stor23[arg1]
    if stor23[arg1] > !block.timestamp:
        revert with 'NH{q', 17
    if stor23[arg1] + block.timestamp < stor28[arg1]:
        revert with 'NH{q', 17
    return (stor23[arg1] + block.timestamp - stor28[arg1])
}

function _leave(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_6bc80c66[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only this trainer's current location can do this'
    if 3 == status[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot leave via _leave() while healing'
    status[arg1] = 0
    sub_6bc80c66[arg1] = 0
}

function sub_7f40711e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if stor13 != msg.sender:
            if stor14 != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't do that, you are not part of the team'
    uint256(stor35[address(arg1)]) = not uint8(stor35[address(arg1)]) or Mask(248, 8, uint256(stor35[address(arg1)]))
}

function sub_be85bf1e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if stor13 != msg.sender:
            if stor14 != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't do that, you are not part of the team'
    uint256(stor36[address(arg1)]) = not uint8(stor36[address(arg1)]) or Mask(248, 8, uint256(stor36[address(arg1)]))
}

function sub_cb4c20f6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if stor13 != msg.sender:
            if stor14 != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't do that, you are not part of the team'
    uint256(stor37[address(arg1)]) = not uint8(stor37[address(arg1)]) or Mask(248, 8, uint256(stor37[address(arg1)]))
}

function sub_7ed75068(?) {
    require calldata.size - 4 >= 32
    if sub_6bc80c66[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only this trainer's current location can do this'
    if status[arg1] != 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only do this if currently lost'
    if sub_c2e4ff21[arg1] == -1:
        revert with 'NH{q', 17
    sub_c2e4ff21[arg1]++
    status[arg1] = 0
    sub_6bc80c66[arg1] = 0
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_6d3ff596(?) {
    require calldata.size - 4 >= 32
    if sub_6bc80c66[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only this trainer's current location can do this'
    if status[arg1] != 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only do this if currently treating wounds'
    if uint8(stor37[stor17[arg1]]):
        if block.timestamp < stor28[arg1]:
            revert with 'NH{q', 17
        if stor23[arg1] > !(block.timestamp - stor28[arg1]):
            revert with 'NH{q', 17
        stor23[arg1] = stor23[arg1] + block.timestamp - stor28[arg1]
    status[arg1] = 0
    sub_6bc80c66[arg1] = 0
}

function sub_21742e2d(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if sub_6bc80c66[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only this trainer's current location can do this'
    if status[arg1] != 1:
        if status[arg1] != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only do this if currently at an arena'
    if 2 == status[arg1]:
        if uint8(stor36[stor17[arg1]]):
            if not arg2:
                if sub_2fd333c4[arg1] == -1:
                    revert with 'NH{q', 17
                sub_2fd333c4[arg1]++
            else:
                if sub_aade6e42[arg1] == -1:
                    revert with 'NH{q', 17
                sub_aade6e42[arg1]++
    status[arg1] = 0
    sub_6bc80c66[arg1] = 0
}

function sub_d2973153(?) {
    require calldata.size - 4 >= 32
    if arg1 > tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'That tokenId has not yet been claimed'
    if status[arg1] != 3:
        if 1 > !(stor23[arg1] / 24 * 3600):
            revert with 'NH{q', 17
        return ((stor23[arg1] / 24 * 3600) + 1)
    if not uint8(stor37[stor17[arg1]]):
        if 1 > !(stor23[arg1] / 24 * 3600):
            revert with 'NH{q', 17
        return ((stor23[arg1] / 24 * 3600) + 1)
    if stor23[arg1] > !block.timestamp:
        revert with 'NH{q', 17
    if stor23[arg1] + block.timestamp < stor28[arg1]:
        revert with 'NH{q', 17
    if 1 > !(stor23[arg1] + block.timestamp - stor28[arg1] / 24 * 3600):
        revert with 'NH{q', 17
    return ((stor23[arg1] + block.timestamp - stor28[arg1] / 24 * 3600) + 1)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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

function sub_2c22642c(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        if stor13 != msg.sender:
            if stor14 != msg.sender:
                revert with 0, 'Can't do that, you are not part of the team'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 16
        stor16[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_53802602(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner of that tokenId can do that'
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if status[arg1]:
        revert with 0, 'Trainer busy'
    status[arg1] = 1
    sub_6bc80c66[arg1] = address(arg2)
    require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ext_code.size(address(arg2))
    call address(arg2).0x9caac016 with:
         gas gas_remaining wei
        args arg1, Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor10 = 1
}

function sub_cd6516ac(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner of that tokenId can do that'
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if status[arg1]:
        revert with 0, 'Trainer busy'
    status[arg1] = 3
    stor28[arg1] = block.timestamp
    sub_6bc80c66[arg1] = address(arg2)
    require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ext_code.size(address(arg2))
    call address(arg2).0x9caac016 with:
         gas gas_remaining wei
        args arg1, Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor10 = 1
}

function sub_9d39958f(?) {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner of that tokenId can do that'
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if status[arg1]:
        revert with 0, 'Trainer busy'
    if not uint8(stor35[address(arg3)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can only interact with an enabled Fantomon contract'
    if 3600 > !stor27[arg1]:
        revert with 'NH{q', 17
    if block.timestamp <= stor27[arg1] + 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only interact with a fantomon once per hour'
    require ext_code.size(address(arg3))
    call address(arg3).0xfcfd05d2 with:
         gas gas_remaining wei
        args arg1, arg2, Array(len=1, data=2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if flare[arg1] == -1:
        revert with 'NH{q', 17
    flare[arg1]++
    stor27[arg1] = block.timestamp
    stor10 = 1
}

function sub_055a2082(?) {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner of that tokenId can do that'
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if status[arg1]:
        revert with 0, 'Trainer busy'
    if not uint8(stor35[address(arg3)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can only interact with an enabled Fantomon contract'
    if 3600 > !stor27[arg1]:
        revert with 'NH{q', 17
    if block.timestamp <= stor27[arg1] + 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only interact with a fantomon once per hour'
    require ext_code.size(address(arg3))
    call address(arg3).0xfcfd05d2 with:
         gas gas_remaining wei
        args arg1, arg2, 96, 1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_25bd9e35[arg1] == -1:
        revert with 'NH{q', 17
    sub_25bd9e35[arg1]++
    stor27[arg1] = block.timestamp
    stor10 = 1
}

function sub_0c8beff7(?) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner of that tokenId can do that'
    if status[arg1] != 2:
        if 3 == status[arg1]:
            if uint8(stor37[stor17[arg1]]):
                if block.timestamp < stor28[arg1]:
                    revert with 'NH{q', 17
                if stor23[arg1] > !(block.timestamp - stor28[arg1]):
                    revert with 'NH{q', 17
                stor23[arg1] = stor23[arg1] + block.timestamp - stor28[arg1]
    else:
        if uint8(stor36[stor17[arg1]]):
            if sub_2fd333c4[arg1] == -1:
                revert with 'NH{q', 17
            sub_2fd333c4[arg1]++
        else:
            if 3 == status[arg1]:
                if uint8(stor37[stor17[arg1]]):
                    if block.timestamp < stor28[arg1]:
                        revert with 'NH{q', 17
                    if stor23[arg1] > !(block.timestamp - stor28[arg1]):
                        revert with 'NH{q', 17
                    stor23[arg1] = stor23[arg1] + block.timestamp - stor28[arg1]
    status[arg1] = 0
    sub_6bc80c66[arg1] = 0
    emit 0xde6cab0f: arg1
}

function play(uint256 arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner of that tokenId can do that'
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if status[arg1]:
        revert with 0, 'Trainer busy'
    if not uint8(stor35[address(arg3)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can only interact with an enabled Fantomon contract'
    if 3600 > !stor27[arg1]:
        revert with 'NH{q', 17
    if block.timestamp <= stor27[arg1] + 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only interact with a fantomon once per hour'
    require ext_code.size(arg3)
    call arg3.0xfcfd05d2 with:
         gas gas_remaining wei
        args arg1, arg2, Array(len=1, data=1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_25bd9e35[arg1] == -1:
        revert with 'NH{q', 17
    sub_25bd9e35[arg1]++
    stor27[arg1] = block.timestamp
    stor10 = 1
}

function sub_67c5f720(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner of that tokenId can do that'
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if status[arg1]:
        revert with 0, 'Trainer busy'
    if 12 * 3600 > !stor29[arg1]:
        revert with 'NH{q', 17
    if block.timestamp <= stor29[arg1] + (12 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only journey once every 12 hours'
    status[arg1] = 4
    stor29[arg1] = block.timestamp
    sub_6bc80c66[arg1] = address(arg2)
    require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ext_code.size(address(arg2))
    call address(arg2).0x9caac016 with:
         gas gas_remaining wei
        args arg1, Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor10 = 1
}

function sub_84cb37ea(?) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner of that tokenId can do that'
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if status[arg1] != 2:
        if 3 == status[arg1]:
            if uint8(stor37[stor17[arg1]]):
                if block.timestamp < stor28[arg1]:
                    revert with 'NH{q', 17
                if stor23[arg1] > !(block.timestamp - stor28[arg1]):
                    revert with 'NH{q', 17
                stor23[arg1] = stor23[arg1] + block.timestamp - stor28[arg1]
    else:
        if uint8(stor36[stor17[arg1]]):
            if sub_2fd333c4[arg1] == -1:
                revert with 'NH{q', 17
            sub_2fd333c4[arg1]++
        else:
            if 3 == status[arg1]:
                if uint8(stor37[stor17[arg1]]):
                    if block.timestamp < stor28[arg1]:
                        revert with 'NH{q', 17
                    if stor23[arg1] > !(block.timestamp - stor28[arg1]):
                        revert with 'NH{q', 17
                    stor23[arg1] = stor23[arg1] + block.timestamp - stor28[arg1]
    require ext_code.size(sub_6bc80c66[arg1])
    call sub_6bc80c66[arg1].0x84cb37ea with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    status[arg1] = 0
    sub_6bc80c66[arg1] = 0
    stor10 = 1
}

function withdraw() {
    if owner != msg.sender:
        if stor13 != msg.sender:
            if stor14 != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't do that, you are not part of the team'
    if eth.balance(this.address) < eth.balance(this.address) / 2:
        revert with 0, 'Address: insufficient balance'
    call stor13 with:
       value eth.balance(this.address) / 2 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
        if eth.balance(this.address) < eth.balance(this.address) / 2:
            revert with 0, 'Address: insufficient balance'
        call stor14 with:
           value eth.balance(this.address) / 2 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Address: unable to send value, recipient may have reverted'
        else:
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        if eth.balance(this.address) < eth.balance(this.address) / 2:
            revert with 0, 'Address: insufficient balance'
        call stor14 with:
           value eth.balance(this.address) / 2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0x8c4c1b2f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = this.address
    require ext_code.size(stor12)
    staticcall stor12.tokenURI(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[_5 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_5) + _19 + -mem[64] + 64
    mem[_5 + ceil32(return_data.size) + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[_5 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_5) + _20 + -mem[64] + 64
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
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
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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

function sub_6d449371(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Only owner of that tokenId can do that'
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 19
    if stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])]:
        revert with 0, 'Name already taken, choose another'
    if arg2.length <= 0:
        revert with 0, 'Name empty or too long'
    if arg2.length > 24:
        revert with 0, 'Name empty or too long'
    mem[ceil32(ceil32(arg2.length)) + 176 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 15) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(ceil32(arg2.length)) + 176] = 0
    if sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 15) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * arg2.length) - 256) == sha3('UNKNOWN TRAINER'):
        revert with 0, 'Invalid name'
    if bool(stor20[arg1].field_0):
        if bool(stor20[arg1].field_0) == uint255(uint256(stor20[arg1].field_0)) * 0.5 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            uint256(stor20[arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor20[arg1].field_0) = 0
            idx = 0
            while (uint255(uint256(stor20[arg1].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor20[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            uint256(stor20[arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor20[arg1].field_0) = 0
            idx = 0
            while stor20[arg1].field_1 % 128 + 31 / 32 > idx:
                uint256(stor20[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
    mem[arg2.length + ceil32(ceil32(arg2.length)) + 176 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 15) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
    mem[(2 * arg2.length) + ceil32(ceil32(arg2.length)) + 176] = 19
    stor[mem[arg2.length + ceil32(ceil32(arg2.length)) + ceil32(arg2.length) + 176 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 15) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256] = 1
    stor18[arg1] = 1
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
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
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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
    if ext_code.size(arg2):
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

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor0[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1 % 128:
                if 31 < stor0.length.field_1 % 128:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor0[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor0[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1 % 128:
            if 31 < stor0.length.field_1 % 128:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor0[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    mem[ceil32(stor0.length.field_1 % 128) + 192 len ceil32(stor0.length.field_1 % 128)] = mem[128 len ceil32(stor0.length.field_1 % 128)]
    if ceil32(stor0.length.field_1 % 128) > stor0.length.field_1 % 128:
        mem[stor0.length.field_1 % 128 + ceil32(stor0.length.field_1 % 128) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor1[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1 % 128:
                if 31 < stor1.length.field_1 % 128:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor1[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor1[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1 % 128:
            if 31 < stor1.length.field_1 % 128:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor1[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    mem[ceil32(stor1.length.field_1 % 128) + 192 len ceil32(stor1.length.field_1 % 128)] = mem[128 len ceil32(stor1.length.field_1 % 128)]
    if ceil32(stor1.length.field_1 % 128) > stor1.length.field_1 % 128:
        mem[stor1.length.field_1 % 128 + ceil32(stor1.length.field_1 % 128) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
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
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function sub_a95a036b(?) {
    require calldata.size - 4 >= 32
    if not stor18[arg1]:
        return 'UNKNOWN TRAINER', 0
    if bool(stor20[arg1].field_0):
        if bool(stor20[arg1].field_0) == uint255(uint256(stor20[arg1].field_0)) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor20[arg1].field_0):
            if bool(stor20[arg1].field_0) == uint255(uint256(stor20[arg1].field_0)) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, uint256(stor20[arg1].field_0)):
                if 31 < uint255(uint256(stor20[arg1].field_0)) * 0.5:
                    mem[128] = uint256(stor20[arg1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor20[arg1].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor20[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor20[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor20[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
        else:
            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor20[arg1].field_1 % 128:
                if 31 < stor20[arg1].field_1 % 128:
                    mem[128] = uint256(stor20[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor20[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor20[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor20[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor20[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
        mem[ceil32(uint255(uint256(stor20[arg1].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor20[arg1].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor20[arg1].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor20[arg1].field_0)) * 0.5) > uint255(uint256(stor20[arg1].field_0)) * 0.5:
            mem[(uint255(uint256(stor20[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(stor20[arg1].field_0)) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor20[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor20[arg1].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor20[arg1].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor20[arg1].field_0)) * 0.5)]), 
    if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor20[arg1].field_0):
        if bool(stor20[arg1].field_0) == uint255(uint256(stor20[arg1].field_0)) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, uint256(stor20[arg1].field_0)):
            if 31 < uint255(uint256(stor20[arg1].field_0)) * 0.5:
                mem[128] = uint256(stor20[arg1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor20[arg1].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor20[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20[arg1].field_0 % 128, data=mem[128 len ceil32(stor20[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
    else:
        if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor20[arg1].field_1 % 128:
            if 31 < stor20[arg1].field_1 % 128:
                mem[128] = uint256(stor20[arg1].field_0)
                idx = 128
                s = 0
                while stor20[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor20[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20[arg1].field_0 % 128, data=mem[128 len ceil32(stor20[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
    mem[ceil32(stor20[arg1].field_1 % 128) + 192 len ceil32(stor20[arg1].field_1 % 128)] = mem[128 len ceil32(stor20[arg1].field_1 % 128)]
    if ceil32(stor20[arg1].field_1 % 128) > stor20[arg1].field_1 % 128:
        mem[stor20[arg1].field_1 % 128 + ceil32(stor20[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor20[arg1].field_0 % 128, data=mem[128 len ceil32(stor20[arg1].field_1 % 128)], mem[(2 * ceil32(stor20[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor20[arg1].field_1 % 128)]), 
}



}
