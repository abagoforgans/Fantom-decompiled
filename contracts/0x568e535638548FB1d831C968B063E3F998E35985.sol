contract main {




// =====================  Runtime code  =====================


const CANNOT_TRANSFER_TO_ZERO_ADDRESS = '', 0

const NOT_CURRENT_OWNER = '', 0


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of struct stor5;
array of struct stor6;
mapping of struct stor7;
mapping of uint8 stor8;
address owner;
mapping of uint8 stor11;
mapping of uint256 hasPaid;
uint256 stor13;
uint8 stor14; offset 160
uint128 stor14; offset 160
address stor14;
mapping of uint8 stor15;
uint256 stor16;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, '', 0
    return approved[arg1]
}

function isAuth(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function isBlacklisted(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '', 0
    return bool(stor15[arg1])
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, '', 0
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, '', 0
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function IdList(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor4[address(arg1)][address(arg2)])
}

function blacklistedId(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor15[arg1])
}

function hasPaid(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return hasPaid[arg1]
}

function _fallback() payable {
    revert
}

function genuineCheck(uint256 arg1) {
    require calldata.size - 4 >= 32
    return 0
}

function setMaxMint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '', 0
    stor16 = arg1
}

function blacklistId(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '', 0
    stor15[arg1] = uint8(arg2)
}

function setHasPaid(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '', 0
    hasPaid[address(arg1)] = arg2
}

function isMintingOpen(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '', 0
    Mask(96, 0, stor14.field_160) = Mask(96, 0, arg1)
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor4[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '', 0
    if not arg1:
        revert with 0, '', 0
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, '', 0
    require eth.balance(this.address)
    call address(stor14.field_0) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if ownerOf[arg2] != msg.sender:
        if not stor4[stor1[arg2]][msg.sender]:
            revert with 0, '', 0
    if not ownerOf[arg2]:
        revert with 0, '', 0
    if ownerOf[arg2] == arg1:
        revert with 0, '', 0
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][msg.sender]:
                revert with 0, '', 0
    if not ownerOf[arg3]:
        revert with 0, '', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '', 0
    if not arg2:
        revert with 0, '', 0
    approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '', 0
    if balanceOf[stor1[arg3]] < 1:
        revert with 0, 17
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    if ownerOf[arg3]:
        revert with 0, '', 0
    ownerOf[arg3] = arg2
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][msg.sender]:
                revert with 0, '', 0
    if not ownerOf[arg3]:
        revert with 0, '', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '', 0
    if not arg2:
        revert with 0, '', 0
    approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '', 0
    if balanceOf[stor1[arg3]] < 1:
        revert with 0, 17
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    if ownerOf[arg3]:
        revert with 0, '', 0
    ownerOf[arg3] = arg2
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, '', 0
}

function mintNFT(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if not uint8(stor14.field_160):
        revert with 0, 'Minting is closed'
    if stor13 >= stor16:
        revert with 0, 'Sold out!'
    if 1 > !stor13:
        revert with 0, 17
    if not arg1:
        revert with 0, '', 0
    if ownerOf[stor13 + 1]:
        revert with 0, '', 0
    if ownerOf[stor13 + 1]:
        revert with 0, '', 0
    ownerOf[stor13 + 1] = arg1
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, stor13 + 1);
    if not ownerOf[stor13 + 1]:
        revert with 0, '', 0
    if stor7[stor13 + 1].field_0:
        if stor7[stor13 + 1].field_0 == uint255(stor7[stor13 + 1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor7[stor13 + 1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor7[stor13 + 1].field_0 = 0
            idx = 0
            while (uint255(stor7[stor13 + 1].field_0) * 0.5) + 31 / 32 > idx:
                stor7[stor13 + 1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor7[stor13 + 1].field_0 == stor7[stor13 + 1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor7[stor13 + 1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor7[stor13 + 1].field_0 = 0
            idx = 0
            while stor7[stor13 + 1].field_1 + 31 / 32 > idx:
                stor7[stor13 + 1][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor13++
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][msg.sender]:
                revert with 0, '', 0
    if not ownerOf[arg3]:
        revert with 0, '', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '', 0
    if not arg2:
        revert with 0, '', 0
    approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '', 0
    if balanceOf[stor1[arg3]] < 1:
        revert with 0, 17
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    if ownerOf[arg3]:
        revert with 0, '', 0
    ownerOf[arg3] = arg2
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, '', 0
}

function name() {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[ceil32(uint255(stor5.length) * 0.5) + (uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function symbol() {
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6.length):
            if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6.length):
                if 31 < uint255(stor6.length) * 0.5:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor6.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 0, 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(uint255(stor6.length) * 0.5) + 192 len ceil32(uint255(stor6.length) * 0.5)] = mem[128 len ceil32(uint255(stor6.length) * 0.5)]
        if ceil32(uint255(stor6.length) * 0.5) > uint255(stor6.length) * 0.5:
            mem[ceil32(uint255(stor6.length) * 0.5) + (uint255(stor6.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)], mem[(2 * ceil32(uint255(stor6.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor6.length) * 0.5)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 0, 34
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6.length):
            if 31 < uint255(stor6.length) * 0.5:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while (uint255(stor6.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 0, 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, '', 0
    if stor7[arg1].field_0:
        if stor7[arg1].field_0 == uint255(stor7[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor7[arg1].field_0:
            if stor7[arg1].field_0 == uint255(stor7[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor7[arg1].field_0):
                if 31 < uint255(stor7[arg1].field_0) * 0.5:
                    mem[192] = stor7[arg1].field_0
                    idx = 192
                    s = 0
                    while (uint255(stor7[arg1].field_0) * 0.5) + 160 > idx:
                        mem[idx + 32] = stor7[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7[arg1].field_0), data=mem[192 len ceil32(uint255(stor7[arg1].field_0) * 0.5)])
                mem[192] = 256 * stor7[arg1].field_8
        else:
            if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
                revert with 0, 34
            if stor7[arg1].field_1:
                if 31 < stor7[arg1].field_1:
                    mem[192] = stor7[arg1].field_0
                    idx = 192
                    s = 0
                    while stor7[arg1].field_1 + 160 > idx:
                        mem[idx + 32] = stor7[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7[arg1].field_0), data=mem[192 len ceil32(uint255(stor7[arg1].field_0) * 0.5)])
                mem[192] = 256 * stor7[arg1].field_8
        mem[ceil32(uint255(stor7[arg1].field_0) * 0.5) + 256 len ceil32(uint255(stor7[arg1].field_0) * 0.5)] = mem[192 len ceil32(uint255(stor7[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor7[arg1].field_0) * 0.5) > uint255(stor7[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor7[arg1].field_0) * 0.5) + (uint255(stor7[arg1].field_0) * 0.5) + 256] = 0
        return Array(len=2 * Mask(256, -1, stor7[arg1].field_0), data=mem[192 len ceil32(uint255(stor7[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor7[arg1].field_0) * 0.5)) + 256 len 2 * ceil32(uint255(stor7[arg1].field_0) * 0.5)]), 
    if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
        revert with 0, 34
    if stor7[arg1].field_0:
        if stor7[arg1].field_0 == uint255(stor7[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7[arg1].field_0):
            if 31 < uint255(stor7[arg1].field_0) * 0.5:
                mem[192] = stor7[arg1].field_0
                idx = 192
                s = 0
                while (uint255(stor7[arg1].field_0) * 0.5) + 160 > idx:
                    mem[idx + 32] = stor7[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7[arg1].field_0, data=mem[192 len ceil32(stor7[arg1].field_1)])
            mem[192] = 256 * stor7[arg1].field_8
    else:
        if stor7[arg1].field_0 == stor7[arg1].field_1 < 32:
            revert with 0, 34
        if stor7[arg1].field_1:
            if 31 < stor7[arg1].field_1:
                mem[192] = stor7[arg1].field_0
                idx = 192
                s = 0
                while stor7[arg1].field_1 + 160 > idx:
                    mem[idx + 32] = stor7[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7[arg1].field_0, data=mem[192 len ceil32(stor7[arg1].field_1)])
            mem[192] = 256 * stor7[arg1].field_8
    mem[ceil32(stor7[arg1].field_1) + 256 len ceil32(stor7[arg1].field_1)] = mem[192 len ceil32(stor7[arg1].field_1)]
    if ceil32(stor7[arg1].field_1) > stor7[arg1].field_1:
        mem[ceil32(stor7[arg1].field_1) + stor7[arg1].field_1 + 256] = 0
    return Array(len=stor7[arg1].field_0, data=mem[192 len ceil32(stor7[arg1].field_1)], mem[(2 * ceil32(stor7[arg1].field_1)) + 256 len 2 * ceil32(stor7[arg1].field_1)]), 
}



}
