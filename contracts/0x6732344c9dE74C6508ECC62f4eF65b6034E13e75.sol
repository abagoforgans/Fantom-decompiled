contract main {




// =====================  Runtime code  =====================


#
#  - contractInfo()
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - add()
#  - tokens(uint256 arg1)
#  - sub_a326e0f6(?)
#  - sub_c025cbaf(?)
#  - tokenInfo(uint256 arg1)
#  - sub_f12ee59b(?)
#
const sub_146f136d(?) = 10

const sub_e8ae3d7a(?) = 0x80ac58cd00000000000000000000000000000000000000000000000000000000, 0x1ffc9a700000000000000000000000000000000000000000000000000000000, 0x5b5e139f00000000000000000000000000000000000000000000000000000000, 0x150b7a0200000000000000000000000000000000000000000000000000000000, 0

const MAX_SUPPLY = 250

const MAX_MINT = 10


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
uint8 stor8;
array of struct stor9;
uint256 stor10;
mapping of struct stor14;
array of struct tokenOfOwnerByIndex;
mapping of uint256 sub_65758bc3;
mapping of uint256 sub_1c671b6e;
array of struct sub_052f4407;
uint256 totalSupply;
uint256 decimals;
uint256 price;
array of uint256 allTokens;
mapping of uint256 allTokensIndex;
address walletAddress;
uint256 sub_0b5a4e36;
uint256 lastBlockTimestamp;
uint256 sub_1224649e;
uint256 seed;
uint256 randomHash;
uint256 sub_90b603dc;

function sub_052f4407(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_052f4407[arg1].field_0
    return sub_052f4407[arg1][arg2].field_0
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_0b5a4e36(?) payable {
    return sub_0b5a4e36
}

function sub_1224649e(?) payable {
    return sub_1224649e
}

function totalSupply() payable {
    return totalSupply
}

function sub_1c671b6e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_1c671b6e[arg1][arg2]
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0, 'Owner index out of bounds'
    if arg2 >= tokenOfOwnerByIndex[address(arg1)].field_0:
        revert with 0, 50
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function decimals() payable {
    return decimals
}

function allTokensIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return allTokensIndex[arg1]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= totalSupply:
        revert with 0, 'Global index out of bounds'
    if arg1 >= allTokens.length:
        revert with 0, 50
    return allTokens[arg1]
}

function wallet() payable {
    return walletAddress
}

function randomHash() payable {
    return randomHash
}

function allTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allTokens.length
    return allTokens[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function sub_65758bc3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_65758bc3[arg1][arg2]
}

function sub_66847be5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < tokenOfOwnerByIndex[arg1].field_0
    return tokenOfOwnerByIndex[arg1][arg2].field_0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function seed() payable {
    return seed
}

function lastBlockTimestamp() payable {
    return lastBlockTimestamp
}

function owner() payable {
    return owner
}

function sub_90b603dc(?) payable {
    return sub_90b603dc
}

function price() payable {
    return price
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function sub_a06937c8(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
}

function setPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price = arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if not Mask(32, 224, arg1):
        return not bool(Mask(32, 224, arg1))
    if 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) payable {
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

function sub_ed200736(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor10:
        revert with 0, 'No such rarity id'
    if sub_052f4407[arg1].field_0:
        mem[128] = sub_052f4407[arg1].field_0
        idx = 128
        s = 0
        while (32 * sub_052f4407[arg1].field_0) + 96 > idx:
            mem[idx + 32] = sub_052f4407[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_052f4407[arg1].field_0, data=mem[128 len 32 * sub_052f4407[arg1].field_0])
    mem[(32 * sub_052f4407[arg1].field_0) + 128] = 32
    mem[(32 * sub_052f4407[arg1].field_0) + 160] = sub_052f4407[arg1].field_0
    mem[(32 * sub_052f4407[arg1].field_0) + 192 len 32 * sub_052f4407[arg1].field_0] = mem[128 len 32 * sub_052f4407[arg1].field_0]
    return memory
      from (32 * sub_052f4407[arg1].field_0) + 128
       len (96 * sub_052f4407[arg1].field_0) + 64
}

function userTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenOfOwnerByIndex[address(arg1)].field_0:
        mem[128] = tokenOfOwnerByIndex[address(arg1)].field_0
        if (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 32 > 64:
            mem[160] = tokenOfOwnerByIndex[address(arg1)].field_256
            idx = 160
            s = 1
            while (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = tokenOfOwnerByIndex[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128] = 32
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 160] = tokenOfOwnerByIndex[address(arg1)].field_0
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len 32 * tokenOfOwnerByIndex[address(arg1)].field_0] = mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)].field_0]
    return memory
      from (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128
       len (96 * tokenOfOwnerByIndex[address(arg1)].field_0) + 64
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenOfOwnerByIndex[address(arg1)].field_0:
        mem[128] = tokenOfOwnerByIndex[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = tokenOfOwnerByIndex[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=tokenOfOwnerByIndex[address(arg1)].field_0, data=mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)].field_0]), 
               sub_1c671b6e[address(arg1)][0],
               sub_1c671b6e[address(arg1)][1],
               sub_1c671b6e[address(arg1)][2],
               sub_1c671b6e[address(arg1)][3]
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128] = 160
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 288] = tokenOfOwnerByIndex[address(arg1)].field_0
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 320 len 32 * tokenOfOwnerByIndex[address(arg1)].field_0] = mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)].field_0]
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 160] = sub_1c671b6e[address(arg1)][0]
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192] = sub_1c671b6e[address(arg1)][1]
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 224] = sub_1c671b6e[address(arg1)][2]
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 256] = sub_1c671b6e[address(arg1)][3]
    return memory
      from (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128
       len (96 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[ceil32(uint255(stor0.length) * 0.5) + (uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
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

function title() payable {
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor9.length):
            if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor9.length):
                if 31 < uint255(stor9.length) * 0.5:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor9.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)])
                mem[128] = 256 * stor9.length.field_8
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)])
                mem[128] = 256 * stor9.length.field_8
        mem[ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
        if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
            mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)], mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor9.length) * 0.5)]), 
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 0, 34
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor9.length):
            if 31 < uint255(stor9.length) * 0.5:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while (uint255(stor9.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
    if ceil32(stor9.length.field_1) > stor9.length.field_1:
        mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
}

function symbol() payable {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'Token not exist'
    if stor14[arg1].field_0:
        if stor14[arg1].field_0 == uint255(stor14[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor14[arg1].field_0:
            if stor14[arg1].field_0 == uint255(stor14[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor14[arg1].field_0):
                if 31 < uint255(stor14[arg1].field_0) * 0.5:
                    mem[128] = stor14[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor14[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor14[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14[arg1].field_0), data=mem[128 len ceil32(uint255(stor14[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor14[arg1].field_8
        else:
            if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
                revert with 0, 34
            if stor14[arg1].field_1:
                if 31 < stor14[arg1].field_1:
                    mem[128] = stor14[arg1].field_0
                    idx = 128
                    s = 0
                    while stor14[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor14[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14[arg1].field_0), data=mem[128 len ceil32(uint255(stor14[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor14[arg1].field_8
        mem[ceil32(uint255(stor14[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor14[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor14[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor14[arg1].field_0) * 0.5) > uint255(stor14[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor14[arg1].field_0) * 0.5) + (uint255(stor14[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor14[arg1].field_0), data=mem[128 len ceil32(uint255(stor14[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor14[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor14[arg1].field_0) * 0.5)]), 
    if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
        revert with 0, 34
    if stor14[arg1].field_0:
        if stor14[arg1].field_0 == uint255(stor14[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor14[arg1].field_0):
            if 31 < uint255(stor14[arg1].field_0) * 0.5:
                mem[128] = stor14[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor14[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor14[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14[arg1].field_0, data=mem[128 len ceil32(stor14[arg1].field_1)])
            mem[128] = 256 * stor14[arg1].field_8
    else:
        if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
            revert with 0, 34
        if stor14[arg1].field_1:
            if 31 < stor14[arg1].field_1:
                mem[128] = stor14[arg1].field_0
                idx = 128
                s = 0
                while stor14[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor14[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14[arg1].field_0, data=mem[128 len ceil32(stor14[arg1].field_1)])
            mem[128] = 256 * stor14[arg1].field_8
    mem[ceil32(stor14[arg1].field_1) + 192 len ceil32(stor14[arg1].field_1)] = mem[128 len ceil32(stor14[arg1].field_1)]
    if ceil32(stor14[arg1].field_1) > stor14[arg1].field_1:
        mem[ceil32(stor14[arg1].field_1) + stor14[arg1].field_1 + 192] = 0
    return Array(len=stor14[arg1].field_0, data=mem[128 len ceil32(stor14[arg1].field_1)], mem[(2 * ceil32(stor14[arg1].field_1)) + 192 len 2 * ceil32(stor14[arg1].field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    mem[64] = 128
    mem[96] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if msg.sender == ownerOf[arg3]:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg3] != arg1:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not arg2:
            revert with 0, 'ERC721: transfer to the zero address'
        if arg1:
            if this.address == arg2:
                revert with 0, 'Can't receive sold tokens'
            mem[0] = arg1
            mem[32] = 15
            idx = 0
            while idx < tokenOfOwnerByIndex[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 15)
                if tokenOfOwnerByIndex[address(arg1)][idx].field_0 != arg3:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                    revert with 0, 17
                if var59002 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    if 1 > !var63002:
                        revert with 0, 17
                    idx = var65003 + 1
                    s = var65006
                    while idx < tokenOfOwnerByIndex[address(arg1)].field_0:
                        if s >= tokenOfOwnerByIndex[address(arg1)].field_0:
                            revert with 0, 50
                        mem[0] = sha3(address(arg1), 15)
                        tokenOfOwnerByIndex[address(arg1)][s].field_0 = tokenOfOwnerByIndex[address(arg1)][idx].field_0
                        if s == -1:
                            revert with 0, 17
                        if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                            revert with 0, 17
                        if s + 1 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if not tokenOfOwnerByIndex[address(arg1)].field_0:
                            revert with 0, 49
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                        tokenOfOwnerByIndex[address(arg1)].field_0--
                        if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                            revert with 0, 17
                        sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
                        tokenOfOwnerByIndex[address(arg2)].field_0++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                        if sub_1c671b6e[address(arg2)][stor14[arg3].field_768] > -2:
                            revert with 0, 17
                        sub_1c671b6e[address(arg2)][stor14[arg3].field_768]++
                        approved[arg3] = 0
                        if not ownerOf[arg3]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[arg3], 0, arg3);
                        if balanceOf[address(arg1)] < 1:
                            revert with 0, 17
                        balanceOf[address(arg1)]--
                        if balanceOf[address(arg2)] > -2:
                            revert with 0, 17
                        balanceOf[address(arg2)]++
                        ownerOf[arg3] = arg2
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[132] = msg.sender
                            idx = 0
                            while idx < 0:
                                mem[idx + 292] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
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
                    revert with 0, 50
                if not tokenOfOwnerByIndex[address(arg1)].field_0:
                    revert with 0, 49
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                    revert with 0, 17
                sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                if sub_1c671b6e[address(arg2)][stor14[arg3].field_768] > -2:
                    revert with 0, 17
                sub_1c671b6e[address(arg2)][stor14[arg3].field_768]++
                approved[arg3] = 0
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[arg3], 0, arg3);
                if balanceOf[address(arg1)] < 1:
                    revert with 0, 17
                balanceOf[address(arg1)]--
                if balanceOf[address(arg2)] > -2:
                    revert with 0, 17
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2):
                    mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[132] = msg.sender
                    idx = 0
                    while idx < 0:
                        mem[idx + 292] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    require ext_code.size(arg2)
                    call arg2.0x150b7a02 with:
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
            if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                revert with 0, 17
            if var56002 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                if 1 > !var60002:
                    revert with 0, 17
                idx = var62003 + 1
                s = var62006
                while idx < tokenOfOwnerByIndex[address(arg1)].field_0:
                    if s >= tokenOfOwnerByIndex[address(arg1)].field_0:
                        revert with 0, 50
                    mem[0] = sha3(address(arg1), 15)
                    tokenOfOwnerByIndex[address(arg1)][s].field_0 = tokenOfOwnerByIndex[address(arg1)][idx].field_0
                    if s == -1:
                        revert with 0, 17
                    if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                        revert with 0, 17
                    if s + 1 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                        if 1 > !(s + 1):
                            revert with 0, 17
                        idx = s + 2
                        s = s + 1
                        continue 
                    if not tokenOfOwnerByIndex[address(arg1)].field_0:
                        revert with 0, 49
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                    tokenOfOwnerByIndex[address(arg1)].field_0--
                    if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                        revert with 0, 17
                    sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    if sub_1c671b6e[address(arg2)][stor14[arg3].field_768] > -2:
                        revert with 0, 17
                    sub_1c671b6e[address(arg2)][stor14[arg3].field_768]++
                    approved[arg3] = 0
                    if not ownerOf[arg3]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[arg3], 0, arg3);
                    if balanceOf[address(arg1)] < 1:
                        revert with 0, 17
                    balanceOf[address(arg1)]--
                    if balanceOf[address(arg2)] > -2:
                        revert with 0, 17
                    balanceOf[address(arg2)]++
                    ownerOf[arg3] = arg2
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[132] = msg.sender
                        idx = 0
                        while idx < 0:
                            mem[idx + 292] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
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
                revert with 0, 50
            if not tokenOfOwnerByIndex[address(arg1)].field_0:
                revert with 0, 49
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
            tokenOfOwnerByIndex[address(arg1)].field_0--
            if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                revert with 0, 17
            sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
    else:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] == msg.sender:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg3] != arg1:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not arg2:
                revert with 0, 'ERC721: transfer to the zero address'
            if arg1:
                if this.address == arg2:
                    revert with 0, 'Can't receive sold tokens'
                mem[0] = arg1
                mem[32] = 15
                idx = 0
                while idx < tokenOfOwnerByIndex[address(arg1)].field_0:
                    mem[0] = sha3(address(arg1), 15)
                    if tokenOfOwnerByIndex[address(arg1)][idx].field_0 != arg3:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                        revert with 0, 17
                    if var65002 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                        if 1 > !var69002:
                            revert with 0, 17
                        idx = var71003 + 1
                        s = var71006
                        while idx < tokenOfOwnerByIndex[address(arg1)].field_0:
                            if s >= tokenOfOwnerByIndex[address(arg1)].field_0:
                                revert with 0, 50
                            mem[0] = sha3(address(arg1), 15)
                            tokenOfOwnerByIndex[address(arg1)][s].field_0 = tokenOfOwnerByIndex[address(arg1)][idx].field_0
                            if s == -1:
                                revert with 0, 17
                            if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                                revert with 0, 17
                            if s + 1 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if not tokenOfOwnerByIndex[address(arg1)].field_0:
                                revert with 0, 49
                            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                            tokenOfOwnerByIndex[address(arg1)].field_0--
                            if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                                revert with 0, 17
                            sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
                            tokenOfOwnerByIndex[address(arg2)].field_0++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                            if sub_1c671b6e[address(arg2)][stor14[arg3].field_768] > -2:
                                revert with 0, 17
                            sub_1c671b6e[address(arg2)][stor14[arg3].field_768]++
                            approved[arg3] = 0
                            if not ownerOf[arg3]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[arg3], 0, arg3);
                            if balanceOf[address(arg1)] < 1:
                                revert with 0, 17
                            balanceOf[address(arg1)]--
                            if balanceOf[address(arg2)] > -2:
                                revert with 0, 17
                            balanceOf[address(arg2)]++
                            ownerOf[arg3] = arg2
                            emit Transfer(arg1, arg2, arg3);
                            if ext_code.size(arg2):
                                mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[132] = msg.sender
                                idx = 0
                                while idx < 0:
                                    mem[idx + 292] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
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
                        revert with 0, 50
                    if not tokenOfOwnerByIndex[address(arg1)].field_0:
                        revert with 0, 49
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                    tokenOfOwnerByIndex[address(arg1)].field_0--
                    if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                        revert with 0, 17
                    sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    if sub_1c671b6e[address(arg2)][stor14[arg3].field_768] > -2:
                        revert with 0, 17
                    sub_1c671b6e[address(arg2)][stor14[arg3].field_768]++
                    approved[arg3] = 0
                    if not ownerOf[arg3]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[arg3], 0, arg3);
                    if balanceOf[address(arg1)] < 1:
                        revert with 0, 17
                    balanceOf[address(arg1)]--
                    if balanceOf[address(arg2)] > -2:
                        revert with 0, 17
                    balanceOf[address(arg2)]++
                    ownerOf[arg3] = arg2
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[132] = msg.sender
                        idx = 0
                        while idx < 0:
                            mem[idx + 292] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
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
                if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                    revert with 0, 17
                if var62002 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    if 1 > !var66002:
                        revert with 0, 17
                    idx = var68003 + 1
                    s = var68006
                    while idx < tokenOfOwnerByIndex[address(arg1)].field_0:
                        if s >= tokenOfOwnerByIndex[address(arg1)].field_0:
                            revert with 0, 50
                        mem[0] = sha3(address(arg1), 15)
                        tokenOfOwnerByIndex[address(arg1)][s].field_0 = tokenOfOwnerByIndex[address(arg1)][idx].field_0
                        if s == -1:
                            revert with 0, 17
                        if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                            revert with 0, 17
                        if s + 1 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if not tokenOfOwnerByIndex[address(arg1)].field_0:
                            revert with 0, 49
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                        tokenOfOwnerByIndex[address(arg1)].field_0--
                        if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                            revert with 0, 17
                        sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
                        tokenOfOwnerByIndex[address(arg2)].field_0++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                        if sub_1c671b6e[address(arg2)][stor14[arg3].field_768] > -2:
                            revert with 0, 17
                        sub_1c671b6e[address(arg2)][stor14[arg3].field_768]++
                        approved[arg3] = 0
                        if not ownerOf[arg3]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[arg3], 0, arg3);
                        if balanceOf[address(arg1)] < 1:
                            revert with 0, 17
                        balanceOf[address(arg1)]--
                        if balanceOf[address(arg2)] > -2:
                            revert with 0, 17
                        balanceOf[address(arg2)]++
                        ownerOf[arg3] = arg2
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[132] = msg.sender
                            idx = 0
                            while idx < 0:
                                mem[idx + 292] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
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
                    revert with 0, 50
                if not tokenOfOwnerByIndex[address(arg1)].field_0:
                    revert with 0, 49
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                    revert with 0, 17
                sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
        else:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg3] != arg1:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not arg2:
                revert with 0, 'ERC721: transfer to the zero address'
            if arg1:
                if this.address == arg2:
                    revert with 0, 'Can't receive sold tokens'
                mem[0] = arg1
                mem[32] = 15
                idx = 0
                while idx < tokenOfOwnerByIndex[address(arg1)].field_0:
                    mem[0] = sha3(address(arg1), 15)
                    if tokenOfOwnerByIndex[address(arg1)][idx].field_0 != arg3:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                        revert with 0, 17
                    if var66002 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                        if 1 > !var70002:
                            revert with 0, 17
                        idx = var72003 + 1
                        s = var72006
                        while idx < tokenOfOwnerByIndex[address(arg1)].field_0:
                            if s >= tokenOfOwnerByIndex[address(arg1)].field_0:
                                revert with 0, 50
                            mem[0] = sha3(address(arg1), 15)
                            tokenOfOwnerByIndex[address(arg1)][s].field_0 = tokenOfOwnerByIndex[address(arg1)][idx].field_0
                            if s == -1:
                                revert with 0, 17
                            if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                                revert with 0, 17
                            if s + 1 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if not tokenOfOwnerByIndex[address(arg1)].field_0:
                                revert with 0, 49
                            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                            tokenOfOwnerByIndex[address(arg1)].field_0--
                            if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                                revert with 0, 17
                            sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
                            tokenOfOwnerByIndex[address(arg2)].field_0++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                            if sub_1c671b6e[address(arg2)][stor14[arg3].field_768] > -2:
                                revert with 0, 17
                            sub_1c671b6e[address(arg2)][stor14[arg3].field_768]++
                            approved[arg3] = 0
                            if not ownerOf[arg3]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[arg3], 0, arg3);
                            if balanceOf[address(arg1)] < 1:
                                revert with 0, 17
                            balanceOf[address(arg1)]--
                            if balanceOf[address(arg2)] > -2:
                                revert with 0, 17
                            balanceOf[address(arg2)]++
                            ownerOf[arg3] = arg2
                            emit Transfer(arg1, arg2, arg3);
                            if ext_code.size(arg2):
                                mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[132] = msg.sender
                                idx = 0
                                while idx < 0:
                                    mem[idx + 292] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
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
                        revert with 0, 50
                    if not tokenOfOwnerByIndex[address(arg1)].field_0:
                        revert with 0, 49
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                    tokenOfOwnerByIndex[address(arg1)].field_0--
                    if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                        revert with 0, 17
                    sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    if sub_1c671b6e[address(arg2)][stor14[arg3].field_768] > -2:
                        revert with 0, 17
                    sub_1c671b6e[address(arg2)][stor14[arg3].field_768]++
                    approved[arg3] = 0
                    if not ownerOf[arg3]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[arg3], 0, arg3);
                    if balanceOf[address(arg1)] < 1:
                        revert with 0, 17
                    balanceOf[address(arg1)]--
                    if balanceOf[address(arg2)] > -2:
                        revert with 0, 17
                    balanceOf[address(arg2)]++
                    ownerOf[arg3] = arg2
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[132] = msg.sender
                        idx = 0
                        while idx < 0:
                            mem[idx + 292] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
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
                if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                    revert with 0, 17
                if var63002 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    if 1 > !var67002:
                        revert with 0, 17
                    idx = var69003 + 1
                    s = var69006
                    while idx < tokenOfOwnerByIndex[address(arg1)].field_0:
                        if s >= tokenOfOwnerByIndex[address(arg1)].field_0:
                            revert with 0, 50
                        mem[0] = sha3(address(arg1), 15)
                        tokenOfOwnerByIndex[address(arg1)][s].field_0 = tokenOfOwnerByIndex[address(arg1)][idx].field_0
                        if s == -1:
                            revert with 0, 17
                        if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                            revert with 0, 17
                        if s + 1 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if not tokenOfOwnerByIndex[address(arg1)].field_0:
                            revert with 0, 49
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                        tokenOfOwnerByIndex[address(arg1)].field_0--
                        if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                            revert with 0, 17
                        sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
                        tokenOfOwnerByIndex[address(arg2)].field_0++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                        if sub_1c671b6e[address(arg2)][stor14[arg3].field_768] > -2:
                            revert with 0, 17
                        sub_1c671b6e[address(arg2)][stor14[arg3].field_768]++
                        approved[arg3] = 0
                        if not ownerOf[arg3]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[arg3], 0, arg3);
                        if balanceOf[address(arg1)] < 1:
                            revert with 0, 17
                        balanceOf[address(arg1)]--
                        if balanceOf[address(arg2)] > -2:
                            revert with 0, 17
                        balanceOf[address(arg2)]++
                        ownerOf[arg3] = arg2
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[132] = msg.sender
                            idx = 0
                            while idx < 0:
                                mem[idx + 292] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
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
                    revert with 0, 50
                if not tokenOfOwnerByIndex[address(arg1)].field_0:
                    revert with 0, 49
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                    revert with 0, 17
                sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    if sub_1c671b6e[address(arg2)][stor14[arg3].field_768] > -2:
        revert with 0, 17
    sub_1c671b6e[address(arg2)][stor14[arg3].field_768]++
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
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

function airdrop(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not balanceOf[this.address]:
        revert with 0, 'No available tokens for sell'
    approved[arg1] = msg.sender
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], msg.sender, arg1);
    mem[64] = 128
    mem[96] = 0
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if msg.sender == ownerOf[arg1]:
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg1] != this.address:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not msg.sender:
            revert with 0, 'ERC721: transfer to the zero address'
        if this.address:
            if this.address == msg.sender:
                revert with 0, 'Can't receive sold tokens'
            mem[0] = this.address
            mem[32] = 15
            idx = 0
            while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                mem[0] = sha3(address(this.address), 15)
                if tokenOfOwnerByIndex[address(this.address)][idx].field_0 != arg1:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                    revert with 0, 17
                if var60002 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                    if 1 > !var64002:
                        revert with 0, 17
                    idx = var66003 + 1
                    s = var66006
                    while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                        if s >= tokenOfOwnerByIndex[address(this.address)].field_0:
                            revert with 0, 50
                        mem[0] = sha3(address(this.address), 15)
                        tokenOfOwnerByIndex[address(this.address)][s].field_0 = tokenOfOwnerByIndex[address(this.address)][idx].field_0
                        if s == -1:
                            revert with 0, 17
                        if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                            revert with 0, 17
                        if s + 1 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if not tokenOfOwnerByIndex[address(this.address)].field_0:
                            revert with 0, 49
                        tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                        tokenOfOwnerByIndex[address(this.address)].field_0--
                        if sub_1c671b6e[address(this.address)][stor14[arg1].field_768] < 1:
                            revert with 0, 17
                        sub_1c671b6e[address(this.address)][stor14[arg1].field_768]--
                        tokenOfOwnerByIndex[address(msg.sender)].field_0++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = arg1
                        if sub_1c671b6e[address(msg.sender)][stor14[arg1].field_768] > -2:
                            revert with 0, 17
                        sub_1c671b6e[address(msg.sender)][stor14[arg1].field_768]++
                        approved[arg1] = 0
                        if not ownerOf[arg1]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[arg1], 0, arg1);
                        if balanceOf[address(this.address)] < 1:
                            revert with 0, 17
                        balanceOf[address(this.address)]--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        ownerOf[arg1] = msg.sender
                        emit Transfer(this.address, msg.sender, arg1);
                        if ext_code.size(msg.sender):
                            mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[132] = msg.sender
                            idx = 0
                            while idx < 0:
                                mem[idx + 292] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.0x150b7a02 with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(this.address), arg1, 128, 0
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
                    revert with 0, 50
                if not tokenOfOwnerByIndex[address(this.address)].field_0:
                    revert with 0, 49
                tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                tokenOfOwnerByIndex[address(this.address)].field_0--
                if sub_1c671b6e[address(this.address)][stor14[arg1].field_768] < 1:
                    revert with 0, 17
                sub_1c671b6e[address(this.address)][stor14[arg1].field_768]--
                tokenOfOwnerByIndex[address(msg.sender)].field_0++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = arg1
                if sub_1c671b6e[address(msg.sender)][stor14[arg1].field_768] > -2:
                    revert with 0, 17
                sub_1c671b6e[address(msg.sender)][stor14[arg1].field_768]++
                approved[arg1] = 0
                if not ownerOf[arg1]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[arg1], 0, arg1);
                if balanceOf[address(this.address)] < 1:
                    revert with 0, 17
                balanceOf[address(this.address)]--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                ownerOf[arg1] = msg.sender
                emit Transfer(this.address, msg.sender, arg1);
                if ext_code.size(msg.sender):
                    mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[132] = msg.sender
                    idx = 0
                    while idx < 0:
                        mem[idx + 292] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.0x150b7a02 with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), address(this.address), arg1, 128, 0
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
            if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                revert with 0, 17
            if var57002 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                if 1 > !var61002:
                    revert with 0, 17
                idx = var63003 + 1
                s = var63006
                while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                    if s >= tokenOfOwnerByIndex[address(this.address)].field_0:
                        revert with 0, 50
                    mem[0] = sha3(address(this.address), 15)
                    tokenOfOwnerByIndex[address(this.address)][s].field_0 = tokenOfOwnerByIndex[address(this.address)][idx].field_0
                    if s == -1:
                        revert with 0, 17
                    if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                        revert with 0, 17
                    if s + 1 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                        if 1 > !(s + 1):
                            revert with 0, 17
                        idx = s + 2
                        s = s + 1
                        continue 
                    if not tokenOfOwnerByIndex[address(this.address)].field_0:
                        revert with 0, 49
                    tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                    tokenOfOwnerByIndex[address(this.address)].field_0--
                    if sub_1c671b6e[address(this.address)][stor14[arg1].field_768] < 1:
                        revert with 0, 17
                    sub_1c671b6e[address(this.address)][stor14[arg1].field_768]--
                    tokenOfOwnerByIndex[address(msg.sender)].field_0++
                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = arg1
                    if sub_1c671b6e[address(msg.sender)][stor14[arg1].field_768] > -2:
                        revert with 0, 17
                    sub_1c671b6e[address(msg.sender)][stor14[arg1].field_768]++
                    approved[arg1] = 0
                    if not ownerOf[arg1]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[arg1], 0, arg1);
                    if balanceOf[address(this.address)] < 1:
                        revert with 0, 17
                    balanceOf[address(this.address)]--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    ownerOf[arg1] = msg.sender
                    emit Transfer(this.address, msg.sender, arg1);
                    if ext_code.size(msg.sender):
                        mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[132] = msg.sender
                        idx = 0
                        while idx < 0:
                            mem[idx + 292] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), address(this.address), arg1, 128, 0
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
                revert with 0, 50
            if not tokenOfOwnerByIndex[address(this.address)].field_0:
                revert with 0, 49
            tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
            tokenOfOwnerByIndex[address(this.address)].field_0--
            if sub_1c671b6e[address(this.address)][stor14[arg1].field_768] < 1:
                revert with 0, 17
            sub_1c671b6e[address(this.address)][stor14[arg1].field_768]--
    else:
        if not ownerOf[arg1]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg1] == msg.sender:
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg1] != this.address:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not msg.sender:
                revert with 0, 'ERC721: transfer to the zero address'
            if this.address:
                if this.address == msg.sender:
                    revert with 0, 'Can't receive sold tokens'
                mem[0] = this.address
                mem[32] = 15
                idx = 0
                while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                    mem[0] = sha3(address(this.address), 15)
                    if tokenOfOwnerByIndex[address(this.address)][idx].field_0 != arg1:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                        revert with 0, 17
                    if var66002 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                        if 1 > !var70002:
                            revert with 0, 17
                        idx = var72003 + 1
                        s = var72006
                        while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                            if s >= tokenOfOwnerByIndex[address(this.address)].field_0:
                                revert with 0, 50
                            mem[0] = sha3(address(this.address), 15)
                            tokenOfOwnerByIndex[address(this.address)][s].field_0 = tokenOfOwnerByIndex[address(this.address)][idx].field_0
                            if s == -1:
                                revert with 0, 17
                            if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                                revert with 0, 17
                            if s + 1 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if not tokenOfOwnerByIndex[address(this.address)].field_0:
                                revert with 0, 49
                            tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                            tokenOfOwnerByIndex[address(this.address)].field_0--
                            if sub_1c671b6e[address(this.address)][stor14[arg1].field_768] < 1:
                                revert with 0, 17
                            sub_1c671b6e[address(this.address)][stor14[arg1].field_768]--
                            tokenOfOwnerByIndex[address(msg.sender)].field_0++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = arg1
                            if sub_1c671b6e[address(msg.sender)][stor14[arg1].field_768] > -2:
                                revert with 0, 17
                            sub_1c671b6e[address(msg.sender)][stor14[arg1].field_768]++
                            approved[arg1] = 0
                            if not ownerOf[arg1]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[arg1], 0, arg1);
                            if balanceOf[address(this.address)] < 1:
                                revert with 0, 17
                            balanceOf[address(this.address)]--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            ownerOf[arg1] = msg.sender
                            emit Transfer(this.address, msg.sender, arg1);
                            if ext_code.size(msg.sender):
                                mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[132] = msg.sender
                                idx = 0
                                while idx < 0:
                                    mem[idx + 292] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, 128, 0
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
                        revert with 0, 50
                    if not tokenOfOwnerByIndex[address(this.address)].field_0:
                        revert with 0, 49
                    tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                    tokenOfOwnerByIndex[address(this.address)].field_0--
                    if sub_1c671b6e[address(this.address)][stor14[arg1].field_768] < 1:
                        revert with 0, 17
                    sub_1c671b6e[address(this.address)][stor14[arg1].field_768]--
                    tokenOfOwnerByIndex[address(msg.sender)].field_0++
                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = arg1
                    if sub_1c671b6e[address(msg.sender)][stor14[arg1].field_768] > -2:
                        revert with 0, 17
                    sub_1c671b6e[address(msg.sender)][stor14[arg1].field_768]++
                    approved[arg1] = 0
                    if not ownerOf[arg1]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[arg1], 0, arg1);
                    if balanceOf[address(this.address)] < 1:
                        revert with 0, 17
                    balanceOf[address(this.address)]--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    ownerOf[arg1] = msg.sender
                    emit Transfer(this.address, msg.sender, arg1);
                    if ext_code.size(msg.sender):
                        mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[132] = msg.sender
                        idx = 0
                        while idx < 0:
                            mem[idx + 292] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), address(this.address), arg1, 128, 0
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
                if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                    revert with 0, 17
                if var63002 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                    if 1 > !var67002:
                        revert with 0, 17
                    idx = var69003 + 1
                    s = var69006
                    while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                        if s >= tokenOfOwnerByIndex[address(this.address)].field_0:
                            revert with 0, 50
                        mem[0] = sha3(address(this.address), 15)
                        tokenOfOwnerByIndex[address(this.address)][s].field_0 = tokenOfOwnerByIndex[address(this.address)][idx].field_0
                        if s == -1:
                            revert with 0, 17
                        if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                            revert with 0, 17
                        if s + 1 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if not tokenOfOwnerByIndex[address(this.address)].field_0:
                            revert with 0, 49
                        tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                        tokenOfOwnerByIndex[address(this.address)].field_0--
                        if sub_1c671b6e[address(this.address)][stor14[arg1].field_768] < 1:
                            revert with 0, 17
                        sub_1c671b6e[address(this.address)][stor14[arg1].field_768]--
                        tokenOfOwnerByIndex[address(msg.sender)].field_0++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = arg1
                        if sub_1c671b6e[address(msg.sender)][stor14[arg1].field_768] > -2:
                            revert with 0, 17
                        sub_1c671b6e[address(msg.sender)][stor14[arg1].field_768]++
                        approved[arg1] = 0
                        if not ownerOf[arg1]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[arg1], 0, arg1);
                        if balanceOf[address(this.address)] < 1:
                            revert with 0, 17
                        balanceOf[address(this.address)]--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        ownerOf[arg1] = msg.sender
                        emit Transfer(this.address, msg.sender, arg1);
                        if ext_code.size(msg.sender):
                            mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[132] = msg.sender
                            idx = 0
                            while idx < 0:
                                mem[idx + 292] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.0x150b7a02 with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(this.address), arg1, 128, 0
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
                    revert with 0, 50
                if not tokenOfOwnerByIndex[address(this.address)].field_0:
                    revert with 0, 49
                tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                tokenOfOwnerByIndex[address(this.address)].field_0--
                if sub_1c671b6e[address(this.address)][stor14[arg1].field_768] < 1:
                    revert with 0, 17
                sub_1c671b6e[address(this.address)][stor14[arg1].field_768]--
        else:
            if not stor5[stor2[arg1]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg1] != this.address:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not msg.sender:
                revert with 0, 'ERC721: transfer to the zero address'
            if this.address:
                if this.address == msg.sender:
                    revert with 0, 'Can't receive sold tokens'
                mem[0] = this.address
                mem[32] = 15
                idx = 0
                while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                    mem[0] = sha3(address(this.address), 15)
                    if tokenOfOwnerByIndex[address(this.address)][idx].field_0 != arg1:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                        revert with 0, 17
                    if var67002 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                        if 1 > !var71002:
                            revert with 0, 17
                        idx = var73003 + 1
                        s = var73006
                        while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                            if s >= tokenOfOwnerByIndex[address(this.address)].field_0:
                                revert with 0, 50
                            mem[0] = sha3(address(this.address), 15)
                            tokenOfOwnerByIndex[address(this.address)][s].field_0 = tokenOfOwnerByIndex[address(this.address)][idx].field_0
                            if s == -1:
                                revert with 0, 17
                            if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                                revert with 0, 17
                            if s + 1 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if not tokenOfOwnerByIndex[address(this.address)].field_0:
                                revert with 0, 49
                            tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                            tokenOfOwnerByIndex[address(this.address)].field_0--
                            if sub_1c671b6e[address(this.address)][stor14[arg1].field_768] < 1:
                                revert with 0, 17
                            sub_1c671b6e[address(this.address)][stor14[arg1].field_768]--
                            tokenOfOwnerByIndex[address(msg.sender)].field_0++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = arg1
                            if sub_1c671b6e[address(msg.sender)][stor14[arg1].field_768] > -2:
                                revert with 0, 17
                            sub_1c671b6e[address(msg.sender)][stor14[arg1].field_768]++
                            approved[arg1] = 0
                            if not ownerOf[arg1]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[arg1], 0, arg1);
                            if balanceOf[address(this.address)] < 1:
                                revert with 0, 17
                            balanceOf[address(this.address)]--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            ownerOf[arg1] = msg.sender
                            emit Transfer(this.address, msg.sender, arg1);
                            if ext_code.size(msg.sender):
                                mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[132] = msg.sender
                                idx = 0
                                while idx < 0:
                                    mem[idx + 292] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), arg1, 128, 0
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
                        revert with 0, 50
                    if not tokenOfOwnerByIndex[address(this.address)].field_0:
                        revert with 0, 49
                    tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                    tokenOfOwnerByIndex[address(this.address)].field_0--
                    if sub_1c671b6e[address(this.address)][stor14[arg1].field_768] < 1:
                        revert with 0, 17
                    sub_1c671b6e[address(this.address)][stor14[arg1].field_768]--
                    tokenOfOwnerByIndex[address(msg.sender)].field_0++
                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = arg1
                    if sub_1c671b6e[address(msg.sender)][stor14[arg1].field_768] > -2:
                        revert with 0, 17
                    sub_1c671b6e[address(msg.sender)][stor14[arg1].field_768]++
                    approved[arg1] = 0
                    if not ownerOf[arg1]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[arg1], 0, arg1);
                    if balanceOf[address(this.address)] < 1:
                        revert with 0, 17
                    balanceOf[address(this.address)]--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    ownerOf[arg1] = msg.sender
                    emit Transfer(this.address, msg.sender, arg1);
                    if ext_code.size(msg.sender):
                        mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[132] = msg.sender
                        idx = 0
                        while idx < 0:
                            mem[idx + 292] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), address(this.address), arg1, 128, 0
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
                if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                    revert with 0, 17
                if var64002 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                    if 1 > !var68002:
                        revert with 0, 17
                    idx = var70003 + 1
                    s = var70006
                    while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                        if s >= tokenOfOwnerByIndex[address(this.address)].field_0:
                            revert with 0, 50
                        mem[0] = sha3(address(this.address), 15)
                        tokenOfOwnerByIndex[address(this.address)][s].field_0 = tokenOfOwnerByIndex[address(this.address)][idx].field_0
                        if s == -1:
                            revert with 0, 17
                        if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                            revert with 0, 17
                        if s + 1 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if not tokenOfOwnerByIndex[address(this.address)].field_0:
                            revert with 0, 49
                        tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                        tokenOfOwnerByIndex[address(this.address)].field_0--
                        if sub_1c671b6e[address(this.address)][stor14[arg1].field_768] < 1:
                            revert with 0, 17
                        sub_1c671b6e[address(this.address)][stor14[arg1].field_768]--
                        tokenOfOwnerByIndex[address(msg.sender)].field_0++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = arg1
                        if sub_1c671b6e[address(msg.sender)][stor14[arg1].field_768] > -2:
                            revert with 0, 17
                        sub_1c671b6e[address(msg.sender)][stor14[arg1].field_768]++
                        approved[arg1] = 0
                        if not ownerOf[arg1]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[arg1], 0, arg1);
                        if balanceOf[address(this.address)] < 1:
                            revert with 0, 17
                        balanceOf[address(this.address)]--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        ownerOf[arg1] = msg.sender
                        emit Transfer(this.address, msg.sender, arg1);
                        if ext_code.size(msg.sender):
                            mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[132] = msg.sender
                            idx = 0
                            while idx < 0:
                                mem[idx + 292] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.0x150b7a02 with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(this.address), arg1, 128, 0
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
                    revert with 0, 50
                if not tokenOfOwnerByIndex[address(this.address)].field_0:
                    revert with 0, 49
                tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                tokenOfOwnerByIndex[address(this.address)].field_0--
                if sub_1c671b6e[address(this.address)][stor14[arg1].field_768] < 1:
                    revert with 0, 17
                sub_1c671b6e[address(this.address)][stor14[arg1].field_768]--
    tokenOfOwnerByIndex[address(msg.sender)].field_0++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = arg1
    if sub_1c671b6e[address(msg.sender)][stor14[arg1].field_768] > -2:
        revert with 0, 17
    sub_1c671b6e[address(msg.sender)][stor14[arg1].field_768]++
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[address(this.address)] < 1:
        revert with 0, 17
    balanceOf[address(this.address)]--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    emit Transfer(this.address, msg.sender, arg1);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(this.address), arg1, 128, 0
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg4.length)) + 97
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if msg.sender == ownerOf[arg3]:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg3] != arg1:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not arg2:
            revert with 0, 'ERC721: transfer to the zero address'
        if arg1:
            if this.address == arg2:
                revert with 0, 'Can't receive sold tokens'
            mem[0] = arg1
            mem[32] = 15
            idx = 0
            while idx < tokenOfOwnerByIndex[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 15)
                if tokenOfOwnerByIndex[address(arg1)][idx].field_0 != arg3:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                    revert with 0, 17
                if var67002 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    if 1 > !var71002:
                        revert with 0, 17
                    idx = var73003 + 1
                    s = var73006
                    while idx < tokenOfOwnerByIndex[address(arg1)].field_0:
                        if s >= tokenOfOwnerByIndex[address(arg1)].field_0:
                            revert with 0, 50
                        mem[0] = sha3(address(arg1), 15)
                        tokenOfOwnerByIndex[address(arg1)][s].field_0 = tokenOfOwnerByIndex[address(arg1)][idx].field_0
                        if s == -1:
                            revert with 0, 17
                        if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                            revert with 0, 17
                        if s + 1 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if not tokenOfOwnerByIndex[address(arg1)].field_0:
                            revert with 0, 49
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                        tokenOfOwnerByIndex[address(arg1)].field_0--
                        if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                            revert with 0, 17
                        sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
                        tokenOfOwnerByIndex[address(arg2)].field_0++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                        if sub_1c671b6e[address(arg2)][stor14[arg3].field_768] > -2:
                            revert with 0, 17
                        sub_1c671b6e[address(arg2)][stor14[arg3].field_768]++
                        approved[arg3] = 0
                        if not ownerOf[arg3]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[arg3], 0, arg3);
                        if balanceOf[address(arg1)] < 1:
                            revert with 0, 17
                        balanceOf[address(arg1)]--
                        if balanceOf[address(arg2)] > -2:
                            revert with 0, 17
                        balanceOf[address(arg2)]++
                        ownerOf[arg3] = arg2
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            mem[ceil32(ceil32(arg4.length)) + 97] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg4.length)) + 101] = msg.sender
                            mem[ceil32(ceil32(arg4.length)) + 133] = arg1
                            idx = 0
                            while idx < arg4.length:
                                mem[idx + ceil32(ceil32(arg4.length)) + 261] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(arg4.length) > arg4.length:
                                mem[ceil32(ceil32(arg4.length)) + arg4.length + 261] = 0
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=mem[ceil32(ceil32(arg4.length)) + 261 len ceil32(arg4.length)])
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
                    revert with 0, 50
                if not tokenOfOwnerByIndex[address(arg1)].field_0:
                    revert with 0, 49
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                    revert with 0, 17
                sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                if sub_1c671b6e[address(arg2)][stor14[arg3].field_768] > -2:
                    revert with 0, 17
                sub_1c671b6e[address(arg2)][stor14[arg3].field_768]++
                approved[arg3] = 0
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[arg3], 0, arg3);
                if balanceOf[address(arg1)] < 1:
                    revert with 0, 17
                balanceOf[address(arg1)]--
                if balanceOf[address(arg2)] > -2:
                    revert with 0, 17
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2):
                    mem[ceil32(ceil32(arg4.length)) + 97] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(ceil32(arg4.length)) + 101] = msg.sender
                    mem[ceil32(ceil32(arg4.length)) + 133] = arg1
                    idx = 0
                    while idx < arg4.length:
                        mem[idx + ceil32(ceil32(arg4.length)) + 261] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if ceil32(arg4.length) > arg4.length:
                        mem[ceil32(ceil32(arg4.length)) + arg4.length + 261] = 0
                    require ext_code.size(arg2)
                    call arg2.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=mem[ceil32(ceil32(arg4.length)) + 261 len ceil32(arg4.length)])
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
            if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                revert with 0, 17
            if var64002 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                if 1 > !var68002:
                    revert with 0, 17
                idx = var70003 + 1
                s = var70006
                while idx < tokenOfOwnerByIndex[address(arg1)].field_0:
                    if s >= tokenOfOwnerByIndex[address(arg1)].field_0:
                        revert with 0, 50
                    mem[0] = sha3(address(arg1), 15)
                    tokenOfOwnerByIndex[address(arg1)][s].field_0 = tokenOfOwnerByIndex[address(arg1)][idx].field_0
                    if s == -1:
                        revert with 0, 17
                    if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                        revert with 0, 17
                    if s + 1 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                        if 1 > !(s + 1):
                            revert with 0, 17
                        idx = s + 2
                        s = s + 1
                        continue 
                    if not tokenOfOwnerByIndex[address(arg1)].field_0:
                        revert with 0, 49
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                    tokenOfOwnerByIndex[address(arg1)].field_0--
                    if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                        revert with 0, 17
                    sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    if sub_1c671b6e[address(arg2)][stor14[arg3].field_768] > -2:
                        revert with 0, 17
                    sub_1c671b6e[address(arg2)][stor14[arg3].field_768]++
                    approved[arg3] = 0
                    if not ownerOf[arg3]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[arg3], 0, arg3);
                    if balanceOf[address(arg1)] < 1:
                        revert with 0, 17
                    balanceOf[address(arg1)]--
                    if balanceOf[address(arg2)] > -2:
                        revert with 0, 17
                    balanceOf[address(arg2)]++
                    ownerOf[arg3] = arg2
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        mem[ceil32(ceil32(arg4.length)) + 97] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg4.length)) + 101] = msg.sender
                        mem[ceil32(ceil32(arg4.length)) + 133] = arg1
                        idx = 0
                        while idx < arg4.length:
                            mem[idx + ceil32(ceil32(arg4.length)) + 261] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(arg4.length) > arg4.length:
                            mem[ceil32(ceil32(arg4.length)) + arg4.length + 261] = 0
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=mem[ceil32(ceil32(arg4.length)) + 261 len ceil32(arg4.length)])
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
                revert with 0, 50
            if not tokenOfOwnerByIndex[address(arg1)].field_0:
                revert with 0, 49
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
            tokenOfOwnerByIndex[address(arg1)].field_0--
            if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                revert with 0, 17
            sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
    else:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] == msg.sender:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg3] != arg1:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not arg2:
                revert with 0, 'ERC721: transfer to the zero address'
            if arg1:
                if this.address == arg2:
                    revert with 0, 'Can't receive sold tokens'
                mem[0] = arg1
                mem[32] = 15
                idx = 0
                while idx < tokenOfOwnerByIndex[address(arg1)].field_0:
                    mem[0] = sha3(address(arg1), 15)
                    if tokenOfOwnerByIndex[address(arg1)][idx].field_0 != arg3:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                        revert with 0, 17
                    if var73002 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                        if 1 > !var77002:
                            revert with 0, 17
                        idx = var79003 + 1
                        s = var79006
                        while idx < tokenOfOwnerByIndex[address(arg1)].field_0:
                            if s >= tokenOfOwnerByIndex[address(arg1)].field_0:
                                revert with 0, 50
                            mem[0] = sha3(address(arg1), 15)
                            tokenOfOwnerByIndex[address(arg1)][s].field_0 = tokenOfOwnerByIndex[address(arg1)][idx].field_0
                            if s == -1:
                                revert with 0, 17
                            if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                                revert with 0, 17
                            if s + 1 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if not tokenOfOwnerByIndex[address(arg1)].field_0:
                                revert with 0, 49
                            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                            tokenOfOwnerByIndex[address(arg1)].field_0--
                            if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                                revert with 0, 17
                            sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
                            tokenOfOwnerByIndex[address(arg2)].field_0++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                            if sub_1c671b6e[address(arg2)][stor14[arg3].field_768] > -2:
                                revert with 0, 17
                            sub_1c671b6e[address(arg2)][stor14[arg3].field_768]++
                            approved[arg3] = 0
                            if not ownerOf[arg3]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[arg3], 0, arg3);
                            if balanceOf[address(arg1)] < 1:
                                revert with 0, 17
                            balanceOf[address(arg1)]--
                            if balanceOf[address(arg2)] > -2:
                                revert with 0, 17
                            balanceOf[address(arg2)]++
                            ownerOf[arg3] = arg2
                            emit Transfer(arg1, arg2, arg3);
                            if ext_code.size(arg2):
                                mem[ceil32(ceil32(arg4.length)) + 97] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg4.length)) + 101] = msg.sender
                                mem[ceil32(ceil32(arg4.length)) + 133] = arg1
                                idx = 0
                                while idx < arg4.length:
                                    mem[idx + ceil32(ceil32(arg4.length)) + 261] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(arg4.length) > arg4.length:
                                    mem[ceil32(ceil32(arg4.length)) + arg4.length + 261] = 0
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=mem[ceil32(ceil32(arg4.length)) + 261 len ceil32(arg4.length)])
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
                        revert with 0, 50
                    if not tokenOfOwnerByIndex[address(arg1)].field_0:
                        revert with 0, 49
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                    tokenOfOwnerByIndex[address(arg1)].field_0--
                    if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                        revert with 0, 17
                    sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    if sub_1c671b6e[address(arg2)][stor14[arg3].field_768] > -2:
                        revert with 0, 17
                    sub_1c671b6e[address(arg2)][stor14[arg3].field_768]++
                    approved[arg3] = 0
                    if not ownerOf[arg3]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[arg3], 0, arg3);
                    if balanceOf[address(arg1)] < 1:
                        revert with 0, 17
                    balanceOf[address(arg1)]--
                    if balanceOf[address(arg2)] > -2:
                        revert with 0, 17
                    balanceOf[address(arg2)]++
                    ownerOf[arg3] = arg2
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        mem[ceil32(ceil32(arg4.length)) + 97] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg4.length)) + 101] = msg.sender
                        mem[ceil32(ceil32(arg4.length)) + 133] = arg1
                        idx = 0
                        while idx < arg4.length:
                            mem[idx + ceil32(ceil32(arg4.length)) + 261] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(arg4.length) > arg4.length:
                            mem[ceil32(ceil32(arg4.length)) + arg4.length + 261] = 0
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=mem[ceil32(ceil32(arg4.length)) + 261 len ceil32(arg4.length)])
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
                if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                    revert with 0, 17
                if var70002 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    if 1 > !var74002:
                        revert with 0, 17
                    idx = var76003 + 1
                    s = var76006
                    while idx < tokenOfOwnerByIndex[address(arg1)].field_0:
                        if s >= tokenOfOwnerByIndex[address(arg1)].field_0:
                            revert with 0, 50
                        mem[0] = sha3(address(arg1), 15)
                        tokenOfOwnerByIndex[address(arg1)][s].field_0 = tokenOfOwnerByIndex[address(arg1)][idx].field_0
                        if s == -1:
                            revert with 0, 17
                        if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                            revert with 0, 17
                        if s + 1 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if not tokenOfOwnerByIndex[address(arg1)].field_0:
                            revert with 0, 49
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                        tokenOfOwnerByIndex[address(arg1)].field_0--
                        if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                            revert with 0, 17
                        sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
                        tokenOfOwnerByIndex[address(arg2)].field_0++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                        if sub_1c671b6e[address(arg2)][stor14[arg3].field_768] > -2:
                            revert with 0, 17
                        sub_1c671b6e[address(arg2)][stor14[arg3].field_768]++
                        approved[arg3] = 0
                        if not ownerOf[arg3]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[arg3], 0, arg3);
                        if balanceOf[address(arg1)] < 1:
                            revert with 0, 17
                        balanceOf[address(arg1)]--
                        if balanceOf[address(arg2)] > -2:
                            revert with 0, 17
                        balanceOf[address(arg2)]++
                        ownerOf[arg3] = arg2
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            mem[ceil32(ceil32(arg4.length)) + 97] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg4.length)) + 101] = msg.sender
                            mem[ceil32(ceil32(arg4.length)) + 133] = arg1
                            idx = 0
                            while idx < arg4.length:
                                mem[idx + ceil32(ceil32(arg4.length)) + 261] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(arg4.length) > arg4.length:
                                mem[ceil32(ceil32(arg4.length)) + arg4.length + 261] = 0
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=mem[ceil32(ceil32(arg4.length)) + 261 len ceil32(arg4.length)])
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
                    revert with 0, 50
                if not tokenOfOwnerByIndex[address(arg1)].field_0:
                    revert with 0, 49
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                    revert with 0, 17
                sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
        else:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg3] != arg1:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not arg2:
                revert with 0, 'ERC721: transfer to the zero address'
            if arg1:
                if this.address == arg2:
                    revert with 0, 'Can't receive sold tokens'
                mem[0] = arg1
                mem[32] = 15
                idx = 0
                while idx < tokenOfOwnerByIndex[address(arg1)].field_0:
                    mem[0] = sha3(address(arg1), 15)
                    if tokenOfOwnerByIndex[address(arg1)][idx].field_0 != arg3:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                        revert with 0, 17
                    if var74002 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                        if 1 > !var78002:
                            revert with 0, 17
                        idx = var80003 + 1
                        s = var80006
                        while idx < tokenOfOwnerByIndex[address(arg1)].field_0:
                            if s >= tokenOfOwnerByIndex[address(arg1)].field_0:
                                revert with 0, 50
                            mem[0] = sha3(address(arg1), 15)
                            tokenOfOwnerByIndex[address(arg1)][s].field_0 = tokenOfOwnerByIndex[address(arg1)][idx].field_0
                            if s == -1:
                                revert with 0, 17
                            if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                                revert with 0, 17
                            if s + 1 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if not tokenOfOwnerByIndex[address(arg1)].field_0:
                                revert with 0, 49
                            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                            tokenOfOwnerByIndex[address(arg1)].field_0--
                            if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                                revert with 0, 17
                            sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
                            tokenOfOwnerByIndex[address(arg2)].field_0++
                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                            if sub_1c671b6e[address(arg2)][stor14[arg3].field_768] > -2:
                                revert with 0, 17
                            sub_1c671b6e[address(arg2)][stor14[arg3].field_768]++
                            approved[arg3] = 0
                            if not ownerOf[arg3]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[arg3], 0, arg3);
                            if balanceOf[address(arg1)] < 1:
                                revert with 0, 17
                            balanceOf[address(arg1)]--
                            if balanceOf[address(arg2)] > -2:
                                revert with 0, 17
                            balanceOf[address(arg2)]++
                            ownerOf[arg3] = arg2
                            emit Transfer(arg1, arg2, arg3);
                            if ext_code.size(arg2):
                                mem[ceil32(ceil32(arg4.length)) + 97] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg4.length)) + 101] = msg.sender
                                mem[ceil32(ceil32(arg4.length)) + 133] = arg1
                                idx = 0
                                while idx < arg4.length:
                                    mem[idx + ceil32(ceil32(arg4.length)) + 261] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(arg4.length) > arg4.length:
                                    mem[ceil32(ceil32(arg4.length)) + arg4.length + 261] = 0
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=mem[ceil32(ceil32(arg4.length)) + 261 len ceil32(arg4.length)])
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
                        revert with 0, 50
                    if not tokenOfOwnerByIndex[address(arg1)].field_0:
                        revert with 0, 49
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                    tokenOfOwnerByIndex[address(arg1)].field_0--
                    if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                        revert with 0, 17
                    sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    if sub_1c671b6e[address(arg2)][stor14[arg3].field_768] > -2:
                        revert with 0, 17
                    sub_1c671b6e[address(arg2)][stor14[arg3].field_768]++
                    approved[arg3] = 0
                    if not ownerOf[arg3]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[arg3], 0, arg3);
                    if balanceOf[address(arg1)] < 1:
                        revert with 0, 17
                    balanceOf[address(arg1)]--
                    if balanceOf[address(arg2)] > -2:
                        revert with 0, 17
                    balanceOf[address(arg2)]++
                    ownerOf[arg3] = arg2
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        mem[ceil32(ceil32(arg4.length)) + 97] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg4.length)) + 101] = msg.sender
                        mem[ceil32(ceil32(arg4.length)) + 133] = arg1
                        idx = 0
                        while idx < arg4.length:
                            mem[idx + ceil32(ceil32(arg4.length)) + 261] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if ceil32(arg4.length) > arg4.length:
                            mem[ceil32(ceil32(arg4.length)) + arg4.length + 261] = 0
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=mem[ceil32(ceil32(arg4.length)) + 261 len ceil32(arg4.length)])
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
                if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                    revert with 0, 17
                if var71002 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                    if 1 > !var75002:
                        revert with 0, 17
                    idx = var77003 + 1
                    s = var77006
                    while idx < tokenOfOwnerByIndex[address(arg1)].field_0:
                        if s >= tokenOfOwnerByIndex[address(arg1)].field_0:
                            revert with 0, 50
                        mem[0] = sha3(address(arg1), 15)
                        tokenOfOwnerByIndex[address(arg1)][s].field_0 = tokenOfOwnerByIndex[address(arg1)][idx].field_0
                        if s == -1:
                            revert with 0, 17
                        if tokenOfOwnerByIndex[address(arg1)].field_0 < 1:
                            revert with 0, 17
                        if s + 1 < tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if not tokenOfOwnerByIndex[address(arg1)].field_0:
                            revert with 0, 49
                        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                        tokenOfOwnerByIndex[address(arg1)].field_0--
                        if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                            revert with 0, 17
                        sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
                        tokenOfOwnerByIndex[address(arg2)].field_0++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                        if sub_1c671b6e[address(arg2)][stor14[arg3].field_768] > -2:
                            revert with 0, 17
                        sub_1c671b6e[address(arg2)][stor14[arg3].field_768]++
                        approved[arg3] = 0
                        if not ownerOf[arg3]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[arg3], 0, arg3);
                        if balanceOf[address(arg1)] < 1:
                            revert with 0, 17
                        balanceOf[address(arg1)]--
                        if balanceOf[address(arg2)] > -2:
                            revert with 0, 17
                        balanceOf[address(arg2)]++
                        ownerOf[arg3] = arg2
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            mem[ceil32(ceil32(arg4.length)) + 97] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg4.length)) + 101] = msg.sender
                            mem[ceil32(ceil32(arg4.length)) + 133] = arg1
                            idx = 0
                            while idx < arg4.length:
                                mem[idx + ceil32(ceil32(arg4.length)) + 261] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            if ceil32(arg4.length) > arg4.length:
                                mem[ceil32(ceil32(arg4.length)) + arg4.length + 261] = 0
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=mem[ceil32(ceil32(arg4.length)) + 261 len ceil32(arg4.length)])
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
                    revert with 0, 50
                if not tokenOfOwnerByIndex[address(arg1)].field_0:
                    revert with 0, 49
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                tokenOfOwnerByIndex[address(arg1)].field_0--
                if sub_1c671b6e[address(arg1)][stor14[arg3].field_768] < 1:
                    revert with 0, 17
                sub_1c671b6e[address(arg1)][stor14[arg3].field_768]--
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    if sub_1c671b6e[address(arg2)][stor14[arg3].field_768] > -2:
        revert with 0, 17
    sub_1c671b6e[address(arg2)][stor14[arg3].field_768]++
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
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

function buy() payable {
    if stor8:
        revert with 0, 'Allowed only in production mode'
    if not tokenOfOwnerByIndex[this.address].field_0:
        revert with 0, 'No available tokens for sell'
    if tokenOfOwnerByIndex[this.address].field_0 <= 1:
        if 0 >= tokenOfOwnerByIndex[this.address].field_0:
            revert with 0, 50
        approved[stor15[this.address].field_0] = msg.sender
        if not ownerOf[stor15[this.address].field_0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[stor15[this.address].field_0], msg.sender, tokenOfOwnerByIndex[this.address].field_0);
        mem[64] = 128
        mem[96] = 0
        if not ownerOf[stor15[this.address].field_0]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[stor15[this.address].field_0]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[stor15[this.address].field_0]:
            if not ownerOf[stor15[this.address].field_0]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[stor15[this.address].field_0] != this.address:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not msg.sender:
                revert with 0, 'ERC721: transfer to the zero address'
            if this.address:
                if this.address == msg.sender:
                    revert with 0, 'Can't receive sold tokens'
                mem[0] = this.address
                mem[32] = 15
                idx = 0
                while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                    mem[0] = sha3(address(this.address), 15)
                    if tokenOfOwnerByIndex[address(this.address)][idx].field_0 != tokenOfOwnerByIndex[this.address].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                        revert with 0, 17
                    if var60002 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                        if 1 > !var64002:
                            revert with 0, 17
                        idx = var66003 + 1
                        s = var66006
                        while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                            if s >= tokenOfOwnerByIndex[address(this.address)].field_0:
                                revert with 0, 50
                            mem[0] = sha3(address(this.address), 15)
                            tokenOfOwnerByIndex[address(this.address)][s].field_0 = tokenOfOwnerByIndex[address(this.address)][idx].field_0
                            if s == -1:
                                revert with 0, 17
                            if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                                revert with 0, 17
                            if s + 1 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if not tokenOfOwnerByIndex[address(this.address)].field_0:
                                revert with 0, 49
                            tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                            tokenOfOwnerByIndex[address(this.address)].field_0--
                            if sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768] < 1:
                                revert with 0, 17
                            sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768]--
                            tokenOfOwnerByIndex[address(msg.sender)].field_0++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenOfOwnerByIndex[this.address].field_0
                            if sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address].field_0].field_768] > -2:
                                revert with 0, 17
                            sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address].field_0].field_768]++
                            approved[stor15[this.address].field_0] = 0
                            if not ownerOf[stor15[this.address].field_0]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[stor15[this.address].field_0], 0, tokenOfOwnerByIndex[this.address].field_0);
                            if balanceOf[address(this.address)] < 1:
                                revert with 0, 17
                            balanceOf[address(this.address)]--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            ownerOf[stor15[this.address].field_0] = msg.sender
                            emit Transfer(this.address, msg.sender, tokenOfOwnerByIndex[this.address].field_0);
                            if ext_code.size(msg.sender):
                                mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[132] = msg.sender
                                idx = 0
                                while idx < 0:
                                    mem[idx + 292] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), tokenOfOwnerByIndex[this.address].field_0, 128, 0
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
                        revert with 0, 50
                    if not tokenOfOwnerByIndex[address(this.address)].field_0:
                        revert with 0, 49
                    tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                    tokenOfOwnerByIndex[address(this.address)].field_0--
                    if sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768] < 1:
                        revert with 0, 17
                    sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768]--
                    tokenOfOwnerByIndex[address(msg.sender)].field_0++
                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenOfOwnerByIndex[this.address].field_0
                    if sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address].field_0].field_768] > -2:
                        revert with 0, 17
                    sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address].field_0].field_768]++
                    approved[stor15[this.address].field_0] = 0
                    if not ownerOf[stor15[this.address].field_0]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[stor15[this.address].field_0], 0, tokenOfOwnerByIndex[this.address].field_0);
                    if balanceOf[address(this.address)] < 1:
                        revert with 0, 17
                    balanceOf[address(this.address)]--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    ownerOf[stor15[this.address].field_0] = msg.sender
                    emit Transfer(this.address, msg.sender, tokenOfOwnerByIndex[this.address].field_0);
                    if ext_code.size(msg.sender):
                        mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[132] = msg.sender
                        idx = 0
                        while idx < 0:
                            mem[idx + 292] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), address(this.address), tokenOfOwnerByIndex[this.address].field_0, 128, 0
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
                if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                    revert with 0, 17
                if var57002 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                    if 1 > !var61002:
                        revert with 0, 17
                    idx = var63003 + 1
                    s = var63006
                    while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                        if s >= tokenOfOwnerByIndex[address(this.address)].field_0:
                            revert with 0, 50
                        mem[0] = sha3(address(this.address), 15)
                        tokenOfOwnerByIndex[address(this.address)][s].field_0 = tokenOfOwnerByIndex[address(this.address)][idx].field_0
                        if s == -1:
                            revert with 0, 17
                        if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                            revert with 0, 17
                        if s + 1 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if not tokenOfOwnerByIndex[address(this.address)].field_0:
                            revert with 0, 49
                        tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                        tokenOfOwnerByIndex[address(this.address)].field_0--
                        if sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768] < 1:
                            revert with 0, 17
                        sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768]--
                        tokenOfOwnerByIndex[address(msg.sender)].field_0++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenOfOwnerByIndex[this.address].field_0
                        if sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address].field_0].field_768] > -2:
                            revert with 0, 17
                        sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address].field_0].field_768]++
                        approved[stor15[this.address].field_0] = 0
                        if not ownerOf[stor15[this.address].field_0]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[stor15[this.address].field_0], 0, tokenOfOwnerByIndex[this.address].field_0);
                        if balanceOf[address(this.address)] < 1:
                            revert with 0, 17
                        balanceOf[address(this.address)]--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        ownerOf[stor15[this.address].field_0] = msg.sender
                        emit Transfer(this.address, msg.sender, tokenOfOwnerByIndex[this.address].field_0);
                        if ext_code.size(msg.sender):
                            mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[132] = msg.sender
                            idx = 0
                            while idx < 0:
                                mem[idx + 292] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.0x150b7a02 with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(this.address), tokenOfOwnerByIndex[this.address].field_0, 128, 0
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
                    revert with 0, 50
                if not tokenOfOwnerByIndex[address(this.address)].field_0:
                    revert with 0, 49
                tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                tokenOfOwnerByIndex[address(this.address)].field_0--
                if sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768] < 1:
                    revert with 0, 17
                sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768]--
        else:
            if not ownerOf[stor15[this.address].field_0]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[stor15[this.address].field_0] == msg.sender:
                if not ownerOf[stor15[this.address].field_0]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[stor15[this.address].field_0] != this.address:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not msg.sender:
                    revert with 0, 'ERC721: transfer to the zero address'
                if this.address:
                    if this.address == msg.sender:
                        revert with 0, 'Can't receive sold tokens'
                    mem[0] = this.address
                    mem[32] = 15
                    idx = 0
                    while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                        mem[0] = sha3(address(this.address), 15)
                        if tokenOfOwnerByIndex[address(this.address)][idx].field_0 != tokenOfOwnerByIndex[this.address].field_0:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                            revert with 0, 17
                        if var66002 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                            if 1 > !var70002:
                                revert with 0, 17
                            idx = var72003 + 1
                            s = var72006
                            while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                                if s >= tokenOfOwnerByIndex[address(this.address)].field_0:
                                    revert with 0, 50
                                mem[0] = sha3(address(this.address), 15)
                                tokenOfOwnerByIndex[address(this.address)][s].field_0 = tokenOfOwnerByIndex[address(this.address)][idx].field_0
                                if s == -1:
                                    revert with 0, 17
                                if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                                    revert with 0, 17
                                if s + 1 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if not tokenOfOwnerByIndex[address(this.address)].field_0:
                                    revert with 0, 49
                                tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                                tokenOfOwnerByIndex[address(this.address)].field_0--
                                if sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768] < 1:
                                    revert with 0, 17
                                sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768]--
                                tokenOfOwnerByIndex[address(msg.sender)].field_0++
                                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenOfOwnerByIndex[this.address].field_0
                                if sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address].field_0].field_768] > -2:
                                    revert with 0, 17
                                sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address].field_0].field_768]++
                                approved[stor15[this.address].field_0] = 0
                                if not ownerOf[stor15[this.address].field_0]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                emit Approval(ownerOf[stor15[this.address].field_0], 0, tokenOfOwnerByIndex[this.address].field_0);
                                if balanceOf[address(this.address)] < 1:
                                    revert with 0, 17
                                balanceOf[address(this.address)]--
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)]++
                                ownerOf[stor15[this.address].field_0] = msg.sender
                                emit Transfer(this.address, msg.sender, tokenOfOwnerByIndex[this.address].field_0);
                                if ext_code.size(msg.sender):
                                    mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[132] = msg.sender
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + 292] = mem[idx + 128]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), tokenOfOwnerByIndex[this.address].field_0, 128, 0
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
                            revert with 0, 50
                        if not tokenOfOwnerByIndex[address(this.address)].field_0:
                            revert with 0, 49
                        tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                        tokenOfOwnerByIndex[address(this.address)].field_0--
                        if sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768] < 1:
                            revert with 0, 17
                        sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768]--
                        tokenOfOwnerByIndex[address(msg.sender)].field_0++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenOfOwnerByIndex[this.address].field_0
                        if sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address].field_0].field_768] > -2:
                            revert with 0, 17
                        sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address].field_0].field_768]++
                        approved[stor15[this.address].field_0] = 0
                        if not ownerOf[stor15[this.address].field_0]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[stor15[this.address].field_0], 0, tokenOfOwnerByIndex[this.address].field_0);
                        if balanceOf[address(this.address)] < 1:
                            revert with 0, 17
                        balanceOf[address(this.address)]--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        ownerOf[stor15[this.address].field_0] = msg.sender
                        emit Transfer(this.address, msg.sender, tokenOfOwnerByIndex[this.address].field_0);
                        if ext_code.size(msg.sender):
                            mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[132] = msg.sender
                            idx = 0
                            while idx < 0:
                                mem[idx + 292] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.0x150b7a02 with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(this.address), tokenOfOwnerByIndex[this.address].field_0, 128, 0
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
                    if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                        revert with 0, 17
                    if var63002 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                        if 1 > !var67002:
                            revert with 0, 17
                        idx = var69003 + 1
                        s = var69006
                        while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                            if s >= tokenOfOwnerByIndex[address(this.address)].field_0:
                                revert with 0, 50
                            mem[0] = sha3(address(this.address), 15)
                            tokenOfOwnerByIndex[address(this.address)][s].field_0 = tokenOfOwnerByIndex[address(this.address)][idx].field_0
                            if s == -1:
                                revert with 0, 17
                            if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                                revert with 0, 17
                            if s + 1 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if not tokenOfOwnerByIndex[address(this.address)].field_0:
                                revert with 0, 49
                            tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                            tokenOfOwnerByIndex[address(this.address)].field_0--
                            if sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768] < 1:
                                revert with 0, 17
                            sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768]--
                            tokenOfOwnerByIndex[address(msg.sender)].field_0++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenOfOwnerByIndex[this.address].field_0
                            if sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address].field_0].field_768] > -2:
                                revert with 0, 17
                            sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address].field_0].field_768]++
                            approved[stor15[this.address].field_0] = 0
                            if not ownerOf[stor15[this.address].field_0]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[stor15[this.address].field_0], 0, tokenOfOwnerByIndex[this.address].field_0);
                            if balanceOf[address(this.address)] < 1:
                                revert with 0, 17
                            balanceOf[address(this.address)]--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            ownerOf[stor15[this.address].field_0] = msg.sender
                            emit Transfer(this.address, msg.sender, tokenOfOwnerByIndex[this.address].field_0);
                            if ext_code.size(msg.sender):
                                mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[132] = msg.sender
                                idx = 0
                                while idx < 0:
                                    mem[idx + 292] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), tokenOfOwnerByIndex[this.address].field_0, 128, 0
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
                        revert with 0, 50
                    if not tokenOfOwnerByIndex[address(this.address)].field_0:
                        revert with 0, 49
                    tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                    tokenOfOwnerByIndex[address(this.address)].field_0--
                    if sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768] < 1:
                        revert with 0, 17
                    sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768]--
            else:
                if not stor5[stor2[stor15[this.address].field_0]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[stor15[this.address].field_0]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[stor15[this.address].field_0] != this.address:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not msg.sender:
                    revert with 0, 'ERC721: transfer to the zero address'
                if this.address:
                    if this.address == msg.sender:
                        revert with 0, 'Can't receive sold tokens'
                    mem[0] = this.address
                    mem[32] = 15
                    idx = 0
                    while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                        mem[0] = sha3(address(this.address), 15)
                        if tokenOfOwnerByIndex[address(this.address)][idx].field_0 != tokenOfOwnerByIndex[this.address].field_0:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                            revert with 0, 17
                        if var67002 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                            if 1 > !var71002:
                                revert with 0, 17
                            idx = var73003 + 1
                            s = var73006
                            while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                                if s >= tokenOfOwnerByIndex[address(this.address)].field_0:
                                    revert with 0, 50
                                mem[0] = sha3(address(this.address), 15)
                                tokenOfOwnerByIndex[address(this.address)][s].field_0 = tokenOfOwnerByIndex[address(this.address)][idx].field_0
                                if s == -1:
                                    revert with 0, 17
                                if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                                    revert with 0, 17
                                if s + 1 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if not tokenOfOwnerByIndex[address(this.address)].field_0:
                                    revert with 0, 49
                                tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                                tokenOfOwnerByIndex[address(this.address)].field_0--
                                if sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768] < 1:
                                    revert with 0, 17
                                sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768]--
                                tokenOfOwnerByIndex[address(msg.sender)].field_0++
                                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenOfOwnerByIndex[this.address].field_0
                                if sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address].field_0].field_768] > -2:
                                    revert with 0, 17
                                sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address].field_0].field_768]++
                                approved[stor15[this.address].field_0] = 0
                                if not ownerOf[stor15[this.address].field_0]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                emit Approval(ownerOf[stor15[this.address].field_0], 0, tokenOfOwnerByIndex[this.address].field_0);
                                if balanceOf[address(this.address)] < 1:
                                    revert with 0, 17
                                balanceOf[address(this.address)]--
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)]++
                                ownerOf[stor15[this.address].field_0] = msg.sender
                                emit Transfer(this.address, msg.sender, tokenOfOwnerByIndex[this.address].field_0);
                                if ext_code.size(msg.sender):
                                    mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[132] = msg.sender
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + 292] = mem[idx + 128]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args 0, uint32(msg.sender), address(this.address), tokenOfOwnerByIndex[this.address].field_0, 128, 0
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
                            revert with 0, 50
                        if not tokenOfOwnerByIndex[address(this.address)].field_0:
                            revert with 0, 49
                        tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                        tokenOfOwnerByIndex[address(this.address)].field_0--
                        if sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768] < 1:
                            revert with 0, 17
                        sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768]--
                        tokenOfOwnerByIndex[address(msg.sender)].field_0++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenOfOwnerByIndex[this.address].field_0
                        if sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address].field_0].field_768] > -2:
                            revert with 0, 17
                        sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address].field_0].field_768]++
                        approved[stor15[this.address].field_0] = 0
                        if not ownerOf[stor15[this.address].field_0]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[stor15[this.address].field_0], 0, tokenOfOwnerByIndex[this.address].field_0);
                        if balanceOf[address(this.address)] < 1:
                            revert with 0, 17
                        balanceOf[address(this.address)]--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        ownerOf[stor15[this.address].field_0] = msg.sender
                        emit Transfer(this.address, msg.sender, tokenOfOwnerByIndex[this.address].field_0);
                        if ext_code.size(msg.sender):
                            mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[132] = msg.sender
                            idx = 0
                            while idx < 0:
                                mem[idx + 292] = mem[idx + 128]
                                idx = idx + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.0x150b7a02 with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(this.address), tokenOfOwnerByIndex[this.address].field_0, 128, 0
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
                    if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                        revert with 0, 17
                    if var64002 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                        if 1 > !var68002:
                            revert with 0, 17
                        idx = var70003 + 1
                        s = var70006
                        while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                            if s >= tokenOfOwnerByIndex[address(this.address)].field_0:
                                revert with 0, 50
                            mem[0] = sha3(address(this.address), 15)
                            tokenOfOwnerByIndex[address(this.address)][s].field_0 = tokenOfOwnerByIndex[address(this.address)][idx].field_0
                            if s == -1:
                                revert with 0, 17
                            if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                                revert with 0, 17
                            if s + 1 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if not tokenOfOwnerByIndex[address(this.address)].field_0:
                                revert with 0, 49
                            tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                            tokenOfOwnerByIndex[address(this.address)].field_0--
                            if sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768] < 1:
                                revert with 0, 17
                            sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768]--
                            tokenOfOwnerByIndex[address(msg.sender)].field_0++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenOfOwnerByIndex[this.address].field_0
                            if sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address].field_0].field_768] > -2:
                                revert with 0, 17
                            sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address].field_0].field_768]++
                            approved[stor15[this.address].field_0] = 0
                            if not ownerOf[stor15[this.address].field_0]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[stor15[this.address].field_0], 0, tokenOfOwnerByIndex[this.address].field_0);
                            if balanceOf[address(this.address)] < 1:
                                revert with 0, 17
                            balanceOf[address(this.address)]--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            ownerOf[stor15[this.address].field_0] = msg.sender
                            emit Transfer(this.address, msg.sender, tokenOfOwnerByIndex[this.address].field_0);
                            if ext_code.size(msg.sender):
                                mem[128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[132] = msg.sender
                                idx = 0
                                while idx < 0:
                                    mem[idx + 292] = mem[idx + 128]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args 0, uint32(msg.sender), address(this.address), tokenOfOwnerByIndex[this.address].field_0, 128, 0
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
                        revert with 0, 50
                    if not tokenOfOwnerByIndex[address(this.address)].field_0:
                        revert with 0, 49
                    tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                    tokenOfOwnerByIndex[address(this.address)].field_0--
                    if sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768] < 1:
                        revert with 0, 17
                    sub_1c671b6e[address(this.address)][stor14[stor15[this.address].field_0].field_768]--
        tokenOfOwnerByIndex[address(msg.sender)].field_0++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenOfOwnerByIndex[this.address].field_0
        if sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address].field_0].field_768] > -2:
            revert with 0, 17
        sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address].field_0].field_768]++
        approved[stor15[this.address].field_0] = 0
        if not ownerOf[stor15[this.address].field_0]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[stor15[this.address].field_0], 0, tokenOfOwnerByIndex[this.address].field_0);
        if balanceOf[address(this.address)] < 1:
            revert with 0, 17
        balanceOf[address(this.address)]--
        if balanceOf[address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[address(msg.sender)]++
        ownerOf[stor15[this.address].field_0] = msg.sender
        emit Transfer(this.address, msg.sender, tokenOfOwnerByIndex[this.address].field_0);
        if ext_code.size(msg.sender):
            require ext_code.size(msg.sender)
            call msg.sender.0x150b7a02 with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), address(this.address), tokenOfOwnerByIndex[this.address].field_0, 128, 0
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
    else:
        mem[128] = address(msg.sender)
        mem[96] = 20
        mem[148] = 26
        mem[180] = 'SafeMath: division by zero'
        if not block.timestamp:
            revert with 0, 'SafeMath: division by zero', 0
        mem[244] = address(block.coinbase)
        mem[212] = 20
        mem[264] = 26
        mem[296] = 'SafeMath: division by zero'
        if block.timestamp > !block.difficulty:
            revert with 0, 17
        if block.timestamp + block.difficulty < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp + block.difficulty > !(sha3(block.coinbase) / block.timestamp):
            revert with 0, 17
        if sha3(block.coinbase) / block.timestamp < 0:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) > !block.gas_limit:
            revert with 0, 17
        if block.gas_limit < 0:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit > !(sha3(msg.sender) / block.timestamp):
            revert with 0, 17
        if sha3(msg.sender) / block.timestamp < 0:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) > !block.number:
            revert with 0, 17
        if block.number < 0:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number > !seed:
            revert with 0, 17
        if seed < 0:
            revert with 0, 'SafeMath: addition overflow'
        mem[360] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + seed
        mem[328] = 32
        if not tokenOfOwnerByIndex[this.address].field_0:
            revert with 0, 18
        if seed > !eth.balance(msg.sender):
            revert with 0, 17
        seed += eth.balance(msg.sender)
        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + seed) % tokenOfOwnerByIndex[this.address].field_0 >= tokenOfOwnerByIndex[this.address].field_0:
            revert with 0, 50
        approved[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] = msg.sender
        if not ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0], msg.sender, tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0);
        mem[64] = 424
        mem[392] = 0
        if not ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0]:
            if not ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] != this.address:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not msg.sender:
                revert with 0, 'ERC721: transfer to the zero address'
            if this.address:
                if this.address == msg.sender:
                    revert with 0, 'Can't receive sold tokens'
                mem[0] = this.address
                mem[32] = 15
                idx = 0
                while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                    mem[0] = sha3(address(this.address), 15)
                    if tokenOfOwnerByIndex[address(this.address)][idx].field_0 != tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                        revert with 0, 17
                    if var122002 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                        if 1 > !var126002:
                            revert with 0, 17
                        idx = var128003 + 1
                        s = var128006
                        while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                            if s >= tokenOfOwnerByIndex[address(this.address)].field_0:
                                revert with 0, 50
                            mem[0] = sha3(address(this.address), 15)
                            tokenOfOwnerByIndex[address(this.address)][s].field_0 = tokenOfOwnerByIndex[address(this.address)][idx].field_0
                            if s == -1:
                                revert with 0, 17
                            if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                                revert with 0, 17
                            if s + 1 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if not tokenOfOwnerByIndex[address(this.address)].field_0:
                                revert with 0, 49
                            tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                            tokenOfOwnerByIndex[address(this.address)].field_0--
                            if sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] < 1:
                                revert with 0, 17
                            sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]--
                            tokenOfOwnerByIndex[address(msg.sender)].field_0++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0
                            if sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] > -2:
                                revert with 0, 17
                            sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]++
                            approved[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] = 0
                            if not ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0], 0, tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0);
                            if balanceOf[address(this.address)] < 1:
                                revert with 0, 17
                            balanceOf[address(this.address)]--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] = msg.sender
                            emit Transfer(this.address, msg.sender, tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0);
                            if ext_code.size(msg.sender):
                                mem[424] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[428] = msg.sender
                                idx = 0
                                while idx < 0:
                                    mem[idx + 588] = mem[idx + 424]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0, 128, 0
                                if not ext_call.success:
                                    if not return_data.size:
                                        revert with msg.sender
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with 0, 50
                    if not tokenOfOwnerByIndex[address(this.address)].field_0:
                        revert with 0, 49
                    tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                    tokenOfOwnerByIndex[address(this.address)].field_0--
                    if sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] < 1:
                        revert with 0, 17
                    sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]--
                    tokenOfOwnerByIndex[address(msg.sender)].field_0++
                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0
                    if sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] > -2:
                        revert with 0, 17
                    sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]++
                    approved[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] = 0
                    if not ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0], 0, tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0);
                    if balanceOf[address(this.address)] < 1:
                        revert with 0, 17
                    balanceOf[address(this.address)]--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] = msg.sender
                    emit Transfer(this.address, msg.sender, tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0);
                    if ext_code.size(msg.sender):
                        mem[424] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[428] = msg.sender
                        idx = 0
                        while idx < 0:
                            mem[idx + 588] = mem[idx + 424]
                            idx = idx + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0, 128, 0
                        if not ext_call.success:
                            if not return_data.size:
                                revert with msg.sender
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                    revert with 0, 17
                if var119002 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                    if 1 > !var123002:
                        revert with 0, 17
                    idx = var125003 + 1
                    s = var125006
                    while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                        if s >= tokenOfOwnerByIndex[address(this.address)].field_0:
                            revert with 0, 50
                        mem[0] = sha3(address(this.address), 15)
                        tokenOfOwnerByIndex[address(this.address)][s].field_0 = tokenOfOwnerByIndex[address(this.address)][idx].field_0
                        if s == -1:
                            revert with 0, 17
                        if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                            revert with 0, 17
                        if s + 1 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                            if 1 > !(s + 1):
                                revert with 0, 17
                            idx = s + 2
                            s = s + 1
                            continue 
                        if not tokenOfOwnerByIndex[address(this.address)].field_0:
                            revert with 0, 49
                        tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                        tokenOfOwnerByIndex[address(this.address)].field_0--
                        if sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] < 1:
                            revert with 0, 17
                        sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]--
                        tokenOfOwnerByIndex[address(msg.sender)].field_0++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0
                        if sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] > -2:
                            revert with 0, 17
                        sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]++
                        approved[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] = 0
                        if not ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0], 0, tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0);
                        if balanceOf[address(this.address)] < 1:
                            revert with 0, 17
                        balanceOf[address(this.address)]--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] = msg.sender
                        emit Transfer(this.address, msg.sender, tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0);
                        if ext_code.size(msg.sender):
                            mem[424] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[428] = msg.sender
                            idx = 0
                            while idx < 0:
                                mem[idx + 588] = mem[idx + 424]
                                idx = idx + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0, 128, 0
                            if not ext_call.success:
                                if not return_data.size:
                                    revert with msg.sender
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with 0, 50
                if not tokenOfOwnerByIndex[address(this.address)].field_0:
                    revert with 0, 49
                tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                tokenOfOwnerByIndex[address(this.address)].field_0--
                if sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] < 1:
                    revert with 0, 17
                sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]--
        else:
            if not ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] == msg.sender:
                if not ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] != this.address:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not msg.sender:
                    revert with 0, 'ERC721: transfer to the zero address'
                if this.address:
                    if this.address == msg.sender:
                        revert with 0, 'Can't receive sold tokens'
                    mem[0] = this.address
                    mem[32] = 15
                    idx = 0
                    while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                        mem[0] = sha3(address(this.address), 15)
                        if tokenOfOwnerByIndex[address(this.address)][idx].field_0 != tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                            revert with 0, 17
                        if var128002 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                            if 1 > !var132002:
                                revert with 0, 17
                            idx = var134003 + 1
                            s = var134006
                            while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                                if s >= tokenOfOwnerByIndex[address(this.address)].field_0:
                                    revert with 0, 50
                                mem[0] = sha3(address(this.address), 15)
                                tokenOfOwnerByIndex[address(this.address)][s].field_0 = tokenOfOwnerByIndex[address(this.address)][idx].field_0
                                if s == -1:
                                    revert with 0, 17
                                if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                                    revert with 0, 17
                                if s + 1 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if not tokenOfOwnerByIndex[address(this.address)].field_0:
                                    revert with 0, 49
                                tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                                tokenOfOwnerByIndex[address(this.address)].field_0--
                                if sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] < 1:
                                    revert with 0, 17
                                sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]--
                                tokenOfOwnerByIndex[address(msg.sender)].field_0++
                                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0
                                if sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] > -2:
                                    revert with 0, 17
                                sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]++
                                approved[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] = 0
                                if not ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                emit Approval(ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0], 0, tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0);
                                if balanceOf[address(this.address)] < 1:
                                    revert with 0, 17
                                balanceOf[address(this.address)]--
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)]++
                                ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] = msg.sender
                                emit Transfer(this.address, msg.sender, tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0);
                                if ext_code.size(msg.sender):
                                    mem[424] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[428] = msg.sender
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + 588] = mem[idx + 424]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0, 128, 0
                                    if not ext_call.success:
                                        if not return_data.size:
                                            revert with msg.sender
                                        if not return_data.size:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with 0, 50
                        if not tokenOfOwnerByIndex[address(this.address)].field_0:
                            revert with 0, 49
                        tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                        tokenOfOwnerByIndex[address(this.address)].field_0--
                        if sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] < 1:
                            revert with 0, 17
                        sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]--
                        tokenOfOwnerByIndex[address(msg.sender)].field_0++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0
                        if sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] > -2:
                            revert with 0, 17
                        sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]++
                        approved[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] = 0
                        if not ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0], 0, tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0);
                        if balanceOf[address(this.address)] < 1:
                            revert with 0, 17
                        balanceOf[address(this.address)]--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] = msg.sender
                        emit Transfer(this.address, msg.sender, tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0);
                        if ext_code.size(msg.sender):
                            mem[424] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[428] = msg.sender
                            idx = 0
                            while idx < 0:
                                mem[idx + 588] = mem[idx + 424]
                                idx = idx + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0, 128, 0
                            if not ext_call.success:
                                if not return_data.size:
                                    revert with msg.sender
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                        revert with 0, 17
                    if var125002 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                        if 1 > !var129002:
                            revert with 0, 17
                        idx = var131003 + 1
                        s = var131006
                        while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                            if s >= tokenOfOwnerByIndex[address(this.address)].field_0:
                                revert with 0, 50
                            mem[0] = sha3(address(this.address), 15)
                            tokenOfOwnerByIndex[address(this.address)][s].field_0 = tokenOfOwnerByIndex[address(this.address)][idx].field_0
                            if s == -1:
                                revert with 0, 17
                            if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                                revert with 0, 17
                            if s + 1 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if not tokenOfOwnerByIndex[address(this.address)].field_0:
                                revert with 0, 49
                            tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                            tokenOfOwnerByIndex[address(this.address)].field_0--
                            if sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] < 1:
                                revert with 0, 17
                            sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]--
                            tokenOfOwnerByIndex[address(msg.sender)].field_0++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0
                            if sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] > -2:
                                revert with 0, 17
                            sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]++
                            approved[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] = 0
                            if not ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0], 0, tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0);
                            if balanceOf[address(this.address)] < 1:
                                revert with 0, 17
                            balanceOf[address(this.address)]--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] = msg.sender
                            emit Transfer(this.address, msg.sender, tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0);
                            if ext_code.size(msg.sender):
                                mem[424] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[428] = msg.sender
                                idx = 0
                                while idx < 0:
                                    mem[idx + 588] = mem[idx + 424]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0, 128, 0
                                if not ext_call.success:
                                    if not return_data.size:
                                        revert with msg.sender
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with 0, 50
                    if not tokenOfOwnerByIndex[address(this.address)].field_0:
                        revert with 0, 49
                    tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                    tokenOfOwnerByIndex[address(this.address)].field_0--
                    if sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] < 1:
                        revert with 0, 17
                    sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]--
            else:
                if not stor5[stor2[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] != this.address:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not msg.sender:
                    revert with 0, 'ERC721: transfer to the zero address'
                if this.address:
                    if this.address == msg.sender:
                        revert with 0, 'Can't receive sold tokens'
                    mem[0] = this.address
                    mem[32] = 15
                    idx = 0
                    while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                        mem[0] = sha3(address(this.address), 15)
                        if tokenOfOwnerByIndex[address(this.address)][idx].field_0 != tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                            revert with 0, 17
                        if var129002 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                            if 1 > !var133002:
                                revert with 0, 17
                            idx = var135003 + 1
                            s = var135006
                            while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                                if s >= tokenOfOwnerByIndex[address(this.address)].field_0:
                                    revert with 0, 50
                                mem[0] = sha3(address(this.address), 15)
                                tokenOfOwnerByIndex[address(this.address)][s].field_0 = tokenOfOwnerByIndex[address(this.address)][idx].field_0
                                if s == -1:
                                    revert with 0, 17
                                if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                                    revert with 0, 17
                                if s + 1 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                                    if 1 > !(s + 1):
                                        revert with 0, 17
                                    idx = s + 2
                                    s = s + 1
                                    continue 
                                if not tokenOfOwnerByIndex[address(this.address)].field_0:
                                    revert with 0, 49
                                tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                                tokenOfOwnerByIndex[address(this.address)].field_0--
                                if sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] < 1:
                                    revert with 0, 17
                                sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]--
                                tokenOfOwnerByIndex[address(msg.sender)].field_0++
                                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0
                                if sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] > -2:
                                    revert with 0, 17
                                sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]++
                                approved[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] = 0
                                if not ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                emit Approval(ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0], 0, tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0);
                                if balanceOf[address(this.address)] < 1:
                                    revert with 0, 17
                                balanceOf[address(this.address)]--
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)]++
                                ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] = msg.sender
                                emit Transfer(this.address, msg.sender, tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0);
                                if ext_code.size(msg.sender):
                                    mem[424] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[428] = msg.sender
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + 588] = mem[idx + 424]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0, 128, 0
                                    if not ext_call.success:
                                        if not return_data.size:
                                            revert with msg.sender
                                        if not return_data.size:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with 0, 50
                        if not tokenOfOwnerByIndex[address(this.address)].field_0:
                            revert with 0, 49
                        tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                        tokenOfOwnerByIndex[address(this.address)].field_0--
                        if sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] < 1:
                            revert with 0, 17
                        sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]--
                        tokenOfOwnerByIndex[address(msg.sender)].field_0++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0
                        if sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] > -2:
                            revert with 0, 17
                        sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]++
                        approved[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] = 0
                        if not ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0], 0, tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0);
                        if balanceOf[address(this.address)] < 1:
                            revert with 0, 17
                        balanceOf[address(this.address)]--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] = msg.sender
                        emit Transfer(this.address, msg.sender, tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0);
                        if ext_code.size(msg.sender):
                            mem[424] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[428] = msg.sender
                            idx = 0
                            while idx < 0:
                                mem[idx + 588] = mem[idx + 424]
                                idx = idx + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0, 128, 0
                            if not ext_call.success:
                                if not return_data.size:
                                    revert with msg.sender
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                        revert with 0, 17
                    if var126002 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                        if 1 > !var130002:
                            revert with 0, 17
                        idx = var132003 + 1
                        s = var132006
                        while idx < tokenOfOwnerByIndex[address(this.address)].field_0:
                            if s >= tokenOfOwnerByIndex[address(this.address)].field_0:
                                revert with 0, 50
                            mem[0] = sha3(address(this.address), 15)
                            tokenOfOwnerByIndex[address(this.address)][s].field_0 = tokenOfOwnerByIndex[address(this.address)][idx].field_0
                            if s == -1:
                                revert with 0, 17
                            if tokenOfOwnerByIndex[address(this.address)].field_0 < 1:
                                revert with 0, 17
                            if s + 1 < tokenOfOwnerByIndex[address(this.address)].field_0 - 1:
                                if 1 > !(s + 1):
                                    revert with 0, 17
                                idx = s + 2
                                s = s + 1
                                continue 
                            if not tokenOfOwnerByIndex[address(this.address)].field_0:
                                revert with 0, 49
                            tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                            tokenOfOwnerByIndex[address(this.address)].field_0--
                            if sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] < 1:
                                revert with 0, 17
                            sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]--
                            tokenOfOwnerByIndex[address(msg.sender)].field_0++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0
                            if sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] > -2:
                                revert with 0, 17
                            sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]++
                            approved[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] = 0
                            if not ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0], 0, tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0);
                            if balanceOf[address(this.address)] < 1:
                                revert with 0, 17
                            balanceOf[address(this.address)]--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] = msg.sender
                            emit Transfer(this.address, msg.sender, tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0);
                            if ext_code.size(msg.sender):
                                mem[424] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[428] = msg.sender
                                idx = 0
                                while idx < 0:
                                    mem[idx + 588] = mem[idx + 424]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0, 128, 0
                                if not ext_call.success:
                                    if not return_data.size:
                                        revert with msg.sender
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with 0, 50
                    if not tokenOfOwnerByIndex[address(this.address)].field_0:
                        revert with 0, 49
                    tokenOfOwnerByIndex[address(this.address)][tokenOfOwnerByIndex[address(this.address)].field_0].field_0 = 0
                    tokenOfOwnerByIndex[address(this.address)].field_0--
                    if sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] < 1:
                        revert with 0, 17
                    sub_1c671b6e[address(this.address)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]--
        tokenOfOwnerByIndex[address(msg.sender)].field_0++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0
        if sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768] > -2:
            revert with 0, 17
        sub_1c671b6e[address(msg.sender)][stor14[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0].field_768]++
        approved[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] = 0
        if not ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0], 0, tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0);
        if balanceOf[address(this.address)] < 1:
            revert with 0, 17
        balanceOf[address(this.address)]--
        if balanceOf[address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[address(msg.sender)]++
        ownerOf[stor15[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % stor15[this.address].field_0].field_0] = msg.sender
        emit Transfer(this.address, msg.sender, tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0);
        if ext_code.size(msg.sender):
            require ext_code.size(msg.sender)
            call msg.sender.0x150b7a02 with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), tokenOfOwnerByIndex[this.address][sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor28) % tokenOfOwnerByIndex[this.address].field_0].field_0, 128, 0
            if not ext_call.success:
                if not return_data.size:
                    revert with msg.sender
                if not return_data.size:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}



}
