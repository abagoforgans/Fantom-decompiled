contract main {




// =====================  Runtime code  =====================


#
#  - sub_08a5d0ad(?)
#  - sub_83f61740(?)
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
address owner;
array of struct stor11;
uint256 currentPrice;
uint256 sub_914e245a;
uint256 sub_3b6a4f50;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint8 stor19;
uint256 stor20;
uint8 stor21;
uint128 stor21; offset 168
address stor21; offset 8
array of struct stor22;
uint256 stor23;
mapping of uint8 stor24;
mapping of uint256 tokenCount;
mapping of struct stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor34;
uint8 stor35;
mapping of uint8 stor36;
address stor37;
mapping of uint256 stor38;
array of address stor97789825912453899259273410636466998099043528421815129078110847000656284369545;
array of uint256 stor97789825912453899259273410636466998099043528421815129078110847000656284369546;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
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

function sub_3b6a4f50(?) {
    return sub_3b6a4f50
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function getTokenCount() {
    return tokenCount[msg.sender]
}

function owner() {
    return owner
}

function sub_914e245a(?) {
    return sub_914e245a
}

function currentPrice() {
    return currentPrice
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function destroySmartContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function sub_50265f65(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16 = arg1
}

function sub_7b924464(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor30 = arg1
}

function sub_7e406bab(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor29 = arg1
}

function sub_b619d043(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17 = arg1
}

function sub_e3ab7a29(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor27[address(arg1)].field_0:
        return 0
    return 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_7c2920a7(?) {
    if block.timestamp < stor31:
        revert with 0, 17
    if block.timestamp - stor31 <= stor30:
        return 1
    else:
        return 0
}

function sub_e2008f8c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3b6a4f50 = arg1
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    currentPrice = arg1
}

function sub_0dac4f3b(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19 = uint8(bool(arg1))
}

function sub_ac0eafb6(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor35 = uint8(bool(arg1))
}

function sub_ceab3034(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Price is wrong'
    stor32 = arg1
}

function sub_98785010(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor21.field_0) = uint8(bool(arg1))
}

function sub_c6bf240a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Cannot be zero value'
    stor18 = arg1
}

function sub_0884dab1(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor21.field_168) = Mask(88, 0, bool(arg1))
}

function setTransferTaxRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Cannot be zero value'
    stor20 = arg1
}

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_fcef0f6f(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor36[address(arg1)] = uint8(bool(arg2))
}

function setDeveloperAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Cannot be zero address'
    address(stor21.field_8) = arg1
}

function getPrice() {
    if stor23 == stor16:
        return 0
    if stor23 > stor28:
        return currentPrice
    if block.timestamp < stor31:
        revert with 0, 17
    if block.timestamp - stor31 <= stor30:
        return currentPrice
    if not stor32:
        return currentPrice
    return stor32
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

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function sub_95f26eec(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor27[address(arg1)].field_256:
        return 0
    idx = 0
    s = 0
    while idx < stor27[address(arg1)].field_256:
        mem[32] = 27
        if idx >= stor27[address(arg1)].field_256:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 27) + 1
        if stor27[address(arg1)][idx + 1].field_0 > 0:
            return stor27[address(arg1)][idx + 1].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = stor27[address(arg1)][idx + 1].field_0
        continue 
    return Mask(248, 0, stor27[address(arg1)].field_256)
}

function sub_ef0af1ac(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Address is wrong.'
    idx = 0
    s = 0
    while idx < stor22.length:
        mem[0] = 22
        if address(stor22[idx].field_0) != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = address(stor22[idx].field_0)
            continue 
        if idx >= stor22.length:
            revert with 0, 50
        stor22[idx].field_256 = arg2
    stor22.length++
    storD833[stor22.length] = uint64(arg1) << 96
    storD833[stor22.length] = arg2
}

function sub_6caf7d61(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < stor27[address(arg1)].field_0:
        if idx >= stor27[address(arg1)].field_0:
            revert with 0, 50
        stor27[address(arg1)][idx].field_0 = 0
        if idx >= stor27[address(arg1)].field_256:
            revert with 0, 50
        stor27[address(arg1)][idx + 1].field_0 = 0
        if idx >= stor27[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = stor27[address(arg1)][idx].field_0
        mem[32] = 24
        stor24[stor27[address(arg1)][idx].field_0] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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

function sub_7a991cfd(?) {
    if 1 == bool(stor36[msg.sender]):
        return 0
    require ext_code.size(stor37)
    staticcall stor37.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(stor37)
    staticcall stor37.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor34 and ext_call.return_data[0] > -1 / stor34:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if stor34 * ext_call.return_data[0] / ext_call.return_data[0] < stor38[msg.sender]:
        revert with 0, 17
    return ((stor34 * ext_call.return_data[0] / ext_call.return_data[0]) - stor38[msg.sender])
}

function addReserveToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < stor31:
        revert with 0, 17
    if block.timestamp - stor31 >= stor29:
        revert with 0, 'End time'
    if stor27[address(arg1)].field_0 >= stor17:
        revert with 0, 'Too Many Tokens'
    if stor16 < stor17:
        revert with 0, 17
    if stor28 > stor16 - stor17:
        revert with 0, 'Too Many Tokens'
    mem[0] = arg1
    mem[32] = 27
    idx = stor[sha3(mem[0 len 64])]
    while idx < stor17:
        stor27[address(arg1)].field_256++
        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor27', 27))) + stor27[address(arg1)].field_256].field_0 = currentPrice
        if stor28 == -1:
            revert with 0, 17
        stor28++
        stor27[address(arg1)].field_0++
        stor27[address(arg1)][stor27[address(arg1)].field_0].field_0 = stor28
        mem[0] = stor28
        mem[32] = 24
        stor24[stor28] = 1
        sub_914e245a = currentPrice
        if currentPrice > !sub_3b6a4f50:
            revert with 0, 17
        currentPrice += sub_3b6a4f50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_cb0e7207(?) {
    if stor36[msg.sender]:
        revert with 0, 'You are excluded.'
    require ext_code.size(stor37)
    staticcall stor37.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'You are not a holder of OG Pumpkittens.'
    require ext_code.size(stor37)
    staticcall stor37.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor34 and ext_call.return_data[0] > -1 / stor34:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if stor34 * ext_call.return_data[0] / ext_call.return_data[0] < stor38[msg.sender]:
        revert with 0, 17
    if (stor34 * ext_call.return_data[0] / ext_call.return_data[0]) - stor38[msg.sender] >= eth.balance(this.address):
        revert with 0, 'Insufficient balance.'
    call msg.sender with:
       value (stor34 * ext_call.return_data[0] / ext_call.return_data[0]) - stor38[msg.sender] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if stor38[msg.sender] > !((stor34 * ext_call.return_data[0] / ext_call.return_data[0]) - stor38[msg.sender]):
        revert with 0, 17
    stor38[msg.sender] = stor34 * ext_call.return_data[0] / ext_call.return_data[0]
}

function sub_72e8e5e3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor27[address(arg1)].field_0:
        mem[256] = stor27[address(arg1)].field_0
        idx = 256
        s = 0
        while (32 * stor27[address(arg1)].field_0) + 256 > idx + 32:
            mem[idx + 32] = stor27[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor27[address(arg1)].field_256:
        mem[(32 * stor27[address(arg1)].field_0) + 288] = stor27[address(arg1)][1].field_0
        idx = (32 * stor27[address(arg1)].field_0) + 288
        s = 0
        while (32 * stor27[address(arg1)].field_0) + (32 * stor27[address(arg1)].field_256) + 256 > idx:
            mem[idx + 32] = stor27[address(arg1)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(64 * stor27[address(arg1)].field_0) + (32 * stor27[address(arg1)].field_256) + 416] = stor27[address(arg1)].field_256
        mem[(64 * stor27[address(arg1)].field_0) + (32 * stor27[address(arg1)].field_256) + 448 len 32 * stor27[address(arg1)].field_256] = mem[(32 * stor27[address(arg1)].field_0) + 288 len 32 * stor27[address(arg1)].field_256]
        return 32, 64, 
               (32 * stor27[address(arg1)].field_0) + 96,
               stor27[address(arg1)].field_0,
               mem[256 len 32 * stor27[address(arg1)].field_0],
               stor27[address(arg1)].field_256,
               mem[(32 * stor27[address(arg1)].field_0) + 288 len 32 * stor27[address(arg1)].field_256]
    mem[(32 * stor27[address(arg1)].field_0) + (32 * stor27[address(arg1)].field_256) + 288] = 32
    mem[(32 * stor27[address(arg1)].field_0) + (32 * stor27[address(arg1)].field_256) + 320] = 64
    mem[(32 * stor27[address(arg1)].field_0) + (32 * stor27[address(arg1)].field_256) + 384] = stor27[address(arg1)].field_0
    mem[(32 * stor27[address(arg1)].field_0) + (32 * stor27[address(arg1)].field_256) + 416 len 32 * stor27[address(arg1)].field_0] = mem[256 len 32 * stor27[address(arg1)].field_0]
    mem[(32 * stor27[address(arg1)].field_0) + (32 * stor27[address(arg1)].field_256) + 352] = (32 * stor27[address(arg1)].field_0) + 96
    mem[(64 * stor27[address(arg1)].field_0) + (32 * stor27[address(arg1)].field_256) + 416] = stor27[address(arg1)].field_256
    mem[(64 * stor27[address(arg1)].field_0) + (32 * stor27[address(arg1)].field_256) + 448 len 32 * stor27[address(arg1)].field_256] = mem[(32 * stor27[address(arg1)].field_0) + 288 len 32 * stor27[address(arg1)].field_256]
    return memory
      from (32 * stor27[address(arg1)].field_0) + (32 * stor27[address(arg1)].field_256) + 288
       len (96 * stor27[address(arg1)].field_0) + (32 * stor27[address(arg1)].field_256) + 160
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
                revert with 0, 17
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
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
                revert with 0, 17
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor0.length.field_1 % 128:
                if 31 < stor0.length.field_1 % 128:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
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
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor0.length.field_1 % 128:
            if 31 < stor0.length.field_1 % 128:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
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
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor1.length.field_1 % 128:
                if 31 < stor1.length.field_1 % 128:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
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
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor1.length.field_1 % 128:
            if 31 < stor1.length.field_1 % 128:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
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
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
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
                revert with 0, 17
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        mem[96] = uint255(stor11.length) * 0.5
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor11.length):
                if uint255(stor11.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
                    mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 257] = mem[ceil32(uint255(stor11.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])] = mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 192]:
                        return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + 192], data=mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])]), 
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 192] + ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289] = 0
                    return 32, mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                mem[ceil32(uint255(stor11.length) * 0.5) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(uint255(stor11.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
                    if ceil32(uint255(stor11.length) * 0.5) <= uint255(stor11.length) * 0.5:
                        mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                        mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                        if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                            _3686 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3686)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3686)]
                            if ceil32(_3686) > _3686:
                                mem[_3686 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                            return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3686) + 32], 
                        _3687 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3687)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3687)]
                        if ceil32(_3687) > _3687:
                            mem[_3687 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3687) + 32], 
                    mem[(uint255(stor11.length) * 0.5) + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                        _3688 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3688)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3688)]
                        if ceil32(_3688) > _3688:
                            mem[_3688 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3688) + 32], 
                    _3689 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3689)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3689)]
                    if ceil32(_3689) > _3689:
                        mem[_3689 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3689) + 32], 
                mem[ceil32(uint255(stor11.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor11.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
                if ceil32(uint255(stor11.length) * 0.5) <= uint255(stor11.length) * 0.5:
                    mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                        _3690 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3690)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3690)]
                        if ceil32(_3690) > _3690:
                            mem[_3690 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3690) + 32], 
                    _3691 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3691)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3691)]
                    if ceil32(_3691) > _3691:
                        mem[_3691 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3691) + 32], 
                mem[(uint255(stor11.length) * 0.5) + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                    _3692 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3692)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3692)]
                    if ceil32(_3692) > _3692:
                        mem[_3692 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3692) + 32], 
                _3693 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3693)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3693)]
                if ceil32(_3693) > _3693:
                    mem[_3693 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3693) + 32], 
            if 31 >= uint255(stor11.length) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
                if uint255(stor11.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
                    mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 257] = mem[ceil32(uint255(stor11.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])] = mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 192]:
                        return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + 192], data=mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])]), 
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 192] + ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289] = 0
                    return 32, mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                mem[ceil32(uint255(stor11.length) * 0.5) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(uint255(stor11.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
                    if ceil32(uint255(stor11.length) * 0.5) <= uint255(stor11.length) * 0.5:
                        mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                        mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                        if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                            _3694 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3694)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3694)]
                            if ceil32(_3694) > _3694:
                                mem[_3694 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                            return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3694) + 32], 
                        _3695 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3695)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3695)]
                        if ceil32(_3695) > _3695:
                            mem[_3695 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3695) + 32], 
                    mem[(uint255(stor11.length) * 0.5) + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                        _3696 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3696)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3696)]
                        if ceil32(_3696) > _3696:
                            mem[_3696 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3696) + 32], 
                    _3697 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3697)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3697)]
                    if ceil32(_3697) > _3697:
                        mem[_3697 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3697) + 32], 
                mem[ceil32(uint255(stor11.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor11.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
                if ceil32(uint255(stor11.length) * 0.5) <= uint255(stor11.length) * 0.5:
                    mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                        _3698 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3698)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3698)]
                        if ceil32(_3698) > _3698:
                            mem[_3698 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3698) + 32], 
                    _3699 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3699)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3699)]
                    if ceil32(_3699) > _3699:
                        mem[_3699 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3699) + 32], 
                mem[(uint255(stor11.length) * 0.5) + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                    _3700 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3700)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3700)]
                    if ceil32(_3700) > _3700:
                        mem[_3700 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3700) + 32], 
                _3701 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3701)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3701)]
                if ceil32(_3701) > _3701:
                    mem[_3701 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3701) + 32], 
            mem[0] = 11
            mem[128] = uint256(stor11.field_0)
            idx = 128
            s = 0
            while (uint255(stor11.length) * 0.5) + 96 > idx:
                mem[idx + 32] = stor11[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if uint255(stor11.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
                mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 257] = mem[ceil32(uint255(stor11.length) * 0.5) + 192]
                mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])] = mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 192]:
                    return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + 192], data=mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])]), 
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 192] + ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289] = 0
                return 32, mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(uint255(stor11.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor11.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
                if ceil32(uint255(stor11.length) * 0.5) <= uint255(stor11.length) * 0.5:
                    mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                    if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                        mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                        _4406 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_4406)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_4406)]
                        if ceil32(_4406) > _4406:
                            mem[_4406 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_4406) + 32], 
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 0
                    mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                    _4407 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_4407)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_4407)]
                    if ceil32(_4407) > _4407:
                        mem[_4407 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_4407) + 32], 
                mem[(uint255(stor11.length) * 0.5) + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                    mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                    _4408 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_4408)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_4408)]
                    if ceil32(_4408) > _4408:
                        mem[_4408 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_4408) + 32], 
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 0
                mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                _4409 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_4409)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_4409)]
                if ceil32(_4409) > _4409:
                    mem[_4409 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_4409) + 32], 
            mem[ceil32(uint255(stor11.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor11.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
            if ceil32(uint255(stor11.length) * 0.5) <= uint255(stor11.length) * 0.5:
                mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                    mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                    _4410 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_4410)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_4410)]
                    if ceil32(_4410) > _4410:
                        mem[_4410 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_4410) + 32], 
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 0
                mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                _4411 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_4411)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_4411)]
                if ceil32(_4411) > _4411:
                    mem[_4411 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_4411) + 32], 
            mem[(uint255(stor11.length) * 0.5) + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
            if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                _4412 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_4412)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_4412)]
                if ceil32(_4412) > _4412:
                    mem[_4412 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_4412) + 32], 
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 0
            mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
            _4413 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_4413)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_4413)]
            if ceil32(_4413) > _4413:
                mem[_4413 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_4413) + 32], 
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 0, 34
        if not stor11.length.field_1 % 128:
            if uint255(stor11.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
                mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 257] = mem[ceil32(uint255(stor11.length) * 0.5) + 192]
                mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])] = mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 192]:
                    return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + 192], data=mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])]), 
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 192] + ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289] = 0
                return 32, mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(uint255(stor11.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor11.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
                if ceil32(uint255(stor11.length) * 0.5) <= uint255(stor11.length) * 0.5:
                    mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                        _3702 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3702)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3702)]
                        if ceil32(_3702) > _3702:
                            mem[_3702 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3702) + 32], 
                    _3703 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3703)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3703)]
                    if ceil32(_3703) > _3703:
                        mem[_3703 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3703) + 32], 
                mem[(uint255(stor11.length) * 0.5) + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                    _3704 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3704)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3704)]
                    if ceil32(_3704) > _3704:
                        mem[_3704 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3704) + 32], 
                _3705 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3705)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3705)]
                if ceil32(_3705) > _3705:
                    mem[_3705 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3705) + 32], 
            mem[ceil32(uint255(stor11.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor11.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
            if ceil32(uint255(stor11.length) * 0.5) <= uint255(stor11.length) * 0.5:
                mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                    _3706 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3706)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3706)]
                    if ceil32(_3706) > _3706:
                        mem[_3706 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3706) + 32], 
                _3707 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3707)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3707)]
                if ceil32(_3707) > _3707:
                    mem[_3707 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3707) + 32], 
            mem[(uint255(stor11.length) * 0.5) + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                _3708 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3708)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3708)]
                if ceil32(_3708) > _3708:
                    mem[_3708 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3708) + 32], 
            _3709 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3709)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3709)]
            if ceil32(_3709) > _3709:
                mem[_3709 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3709) + 32], 
        if 31 >= stor11.length.field_1 % 128:
            mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
            if uint255(stor11.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
                mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 257] = mem[ceil32(uint255(stor11.length) * 0.5) + 192]
                mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])] = mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 192]:
                    return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + 192], data=mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])]), 
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 192] + ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289] = 0
                return 32, mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(uint255(stor11.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor11.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
                if ceil32(uint255(stor11.length) * 0.5) <= uint255(stor11.length) * 0.5:
                    mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                        _3710 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3710)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3710)]
                        if ceil32(_3710) > _3710:
                            mem[_3710 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3710) + 32], 
                    _3711 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3711)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3711)]
                    if ceil32(_3711) > _3711:
                        mem[_3711 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3711) + 32], 
                mem[(uint255(stor11.length) * 0.5) + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                    _3712 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3712)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3712)]
                    if ceil32(_3712) > _3712:
                        mem[_3712 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3712) + 32], 
                _3713 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3713)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3713)]
                if ceil32(_3713) > _3713:
                    mem[_3713 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3713) + 32], 
            mem[ceil32(uint255(stor11.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor11.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
            if ceil32(uint255(stor11.length) * 0.5) <= uint255(stor11.length) * 0.5:
                mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                    _3714 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3714)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3714)]
                    if ceil32(_3714) > _3714:
                        mem[_3714 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3714) + 32], 
                _3715 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3715)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3715)]
                if ceil32(_3715) > _3715:
                    mem[_3715 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3715) + 32], 
            mem[(uint255(stor11.length) * 0.5) + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                _3716 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3716)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3716)]
                if ceil32(_3716) > _3716:
                    mem[_3716 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3716) + 32], 
            _3717 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_3717)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_3717)]
            if ceil32(_3717) > _3717:
                mem[_3717 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_3717) + 32], 
        mem[0] = 11
        mem[128] = uint256(stor11.field_0)
        idx = 128
        s = 0
        while stor11.length.field_1 % 128 + 96 > idx:
            mem[idx + 32] = stor11[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if uint255(stor11.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
            mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 225] = 32
            mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 257] = mem[ceil32(uint255(stor11.length) * 0.5) + 192]
            mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])] = mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 192]:
                return Array(len=mem[ceil32(uint255(stor11.length) * 0.5) + 192], data=mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192])]), 
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 192] + ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 289] = 0
            return 32, mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(uint255(stor11.length) * 0.5) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor11.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
            if ceil32(uint255(stor11.length) * 0.5) <= uint255(stor11.length) * 0.5:
                mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
                if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                    mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                    _4414 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_4414)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_4414)]
                    if ceil32(_4414) > _4414:
                        mem[_4414 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_4414) + 32], 
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 0
                mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                _4415 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_4415)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_4415)]
                if ceil32(_4415) > _4415:
                    mem[_4415 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_4415) + 32], 
            mem[(uint255(stor11.length) * 0.5) + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
            if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                _4416 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_4416)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_4416)]
                if ceil32(_4416) > _4416:
                    mem[_4416 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_4416) + 32], 
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 0
            mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
            _4417 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_4417)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_4417)]
            if ceil32(_4417) > _4417:
                mem[_4417 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_4417) + 32], 
        mem[ceil32(uint255(stor11.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor11.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
        if ceil32(uint255(stor11.length) * 0.5) <= uint255(stor11.length) * 0.5:
            mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
            if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
                mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
                _4418 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_4418)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_4418)]
                if ceil32(_4418) > _4418:
                    mem[_4418 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_4418) + 32], 
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 0
            mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
            _4419 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_4419)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_4419)]
            if ceil32(_4419) > _4419:
                mem[_4419 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_4419) + 32], 
        mem[(uint255(stor11.length) * 0.5) + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])] = mem[ceil32(uint255(stor11.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128])]
        if ceil32(mem[ceil32(uint255(stor11.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor11.length) * 0.5) + 128]:
            mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
            _4420 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_4420)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_4420)]
            if ceil32(_4420) > _4420:
                mem[_4420 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_4420) + 32], 
        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 0
        mem[64] = mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192
        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 192] = 32
        _4421 = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256 len ceil32(_4421)] = mem[ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + 192 len ceil32(_4421)]
        if ceil32(_4421) > _4421:
            mem[_4421 + mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor11.length) * 0.5) + 128] + ceil32(uint255(stor11.length) * 0.5) + ceil32(s) + (uint255(stor11.length) * 0.5) + 224 len ceil32(_4421) + 32], 
    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
        revert with 0, 34
    mem[96] = stor11.length.field_1 % 128
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor11.length):
            if stor11.length.field_1 % 128 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 192] + ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 289] = 0
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor11.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
                if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        _3718 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3718)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3718)]
                        if ceil32(_3718) > _3718:
                            mem[_3718 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3718) + 32], 
                    _3719 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3719)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3719)]
                    if ceil32(_3719) > _3719:
                        mem[_3719 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3719) + 32], 
                mem[stor11.length.field_1 % 128 + ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192] = 0
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    _3720 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3720)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3720)]
                    if ceil32(_3720) > _3720:
                        mem[_3720 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3720) + 32], 
                _3721 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3721)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3721)]
                if ceil32(_3721) > _3721:
                    mem[_3721 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3721) + 32], 
            mem[ceil32(stor11.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
            if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    _3722 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3722)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3722)]
                    if ceil32(_3722) > _3722:
                        mem[_3722 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3722) + 32], 
                _3723 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3723)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3723)]
                if ceil32(_3723) > _3723:
                    mem[_3723 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3723) + 32], 
            mem[stor11.length.field_1 % 128 + ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                _3724 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3724)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3724)]
                if ceil32(_3724) > _3724:
                    mem[_3724 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3724) + 32], 
            _3725 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3725)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3725)]
            if ceil32(_3725) > _3725:
                mem[_3725 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3725) + 32], 
        if 31 >= uint255(stor11.length) * 0.5:
            mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
            if stor11.length.field_1 % 128 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 192] + ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 289] = 0
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor11.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
                if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        _3726 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3726)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3726)]
                        if ceil32(_3726) > _3726:
                            mem[_3726 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3726) + 32], 
                    _3727 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3727)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3727)]
                    if ceil32(_3727) > _3727:
                        mem[_3727 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3727) + 32], 
                mem[stor11.length.field_1 % 128 + ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192] = 0
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    _3728 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3728)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3728)]
                    if ceil32(_3728) > _3728:
                        mem[_3728 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3728) + 32], 
                _3729 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3729)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3729)]
                if ceil32(_3729) > _3729:
                    mem[_3729 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3729) + 32], 
            mem[ceil32(stor11.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
            if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    _3730 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3730)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3730)]
                    if ceil32(_3730) > _3730:
                        mem[_3730 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3730) + 32], 
                _3731 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3731)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3731)]
                if ceil32(_3731) > _3731:
                    mem[_3731 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3731) + 32], 
            mem[stor11.length.field_1 % 128 + ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                _3732 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3732)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3732)]
                if ceil32(_3732) > _3732:
                    mem[_3732 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3732) + 32], 
            _3733 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3733)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3733)]
            if ceil32(_3733) > _3733:
                mem[_3733 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3733) + 32], 
        mem[0] = 11
        mem[128] = uint256(stor11.field_0)
        idx = 128
        s = 0
        while (uint255(stor11.length) * 0.5) + 96 > idx:
            mem[idx + 32] = stor11[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor11.length.field_1 % 128 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = 32
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                mem[mem[ceil32(stor11.length.field_1 % 128) + 192] + ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 289] = 0
            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor11.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
            if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    _4422 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_4422)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4422)]
                    if ceil32(_4422) > _4422:
                        mem[_4422 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_4422) + 32], 
                _4423 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_4423)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4423)]
                if ceil32(_4423) > _4423:
                    mem[_4423 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_4423) + 32], 
            mem[stor11.length.field_1 % 128 + ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                _4424 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_4424)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4424)]
                if ceil32(_4424) > _4424:
                    mem[_4424 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_4424) + 32], 
            _4425 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_4425)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4425)]
            if ceil32(_4425) > _4425:
                mem[_4425 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_4425) + 32], 
        mem[ceil32(stor11.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
        if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                _4426 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_4426)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4426)]
                if ceil32(_4426) > _4426:
                    mem[_4426 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_4426) + 32], 
            _4427 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_4427)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4427)]
            if ceil32(_4427) > _4427:
                mem[_4427 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_4427) + 32], 
        mem[stor11.length.field_1 % 128 + ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
        mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
            _4428 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_4428)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4428)]
            if ceil32(_4428) > _4428:
                mem[_4428 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_4428) + 32], 
        _4429 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_4429)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4429)]
        if ceil32(_4429) > _4429:
            mem[_4429 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_4429) + 32], 
    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
        revert with 0, 34
    if not stor11.length.field_1 % 128:
        if stor11.length.field_1 % 128 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = 32
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                mem[mem[ceil32(stor11.length.field_1 % 128) + 192] + ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 289] = 0
            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor11.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
            if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    _3734 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3734)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3734)]
                    if ceil32(_3734) > _3734:
                        mem[_3734 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3734) + 32], 
                _3735 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3735)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3735)]
                if ceil32(_3735) > _3735:
                    mem[_3735 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3735) + 32], 
            mem[stor11.length.field_1 % 128 + ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                _3736 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3736)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3736)]
                if ceil32(_3736) > _3736:
                    mem[_3736 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3736) + 32], 
            _3737 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3737)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3737)]
            if ceil32(_3737) > _3737:
                mem[_3737 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3737) + 32], 
        mem[ceil32(stor11.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
        if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                _3738 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3738)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3738)]
                if ceil32(_3738) > _3738:
                    mem[_3738 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3738) + 32], 
            _3739 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3739)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3739)]
            if ceil32(_3739) > _3739:
                mem[_3739 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3739) + 32], 
        mem[stor11.length.field_1 % 128 + ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
        mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
            _3740 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3740)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3740)]
            if ceil32(_3740) > _3740:
                mem[_3740 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3740) + 32], 
        _3741 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3741)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3741)]
        if ceil32(_3741) > _3741:
            mem[_3741 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3741) + 32], 
    if 31 >= stor11.length.field_1 % 128:
        mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
        if stor11.length.field_1 % 128 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = 32
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                mem[mem[ceil32(stor11.length.field_1 % 128) + 192] + ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 289] = 0
            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor11.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
            if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    _3742 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3742)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3742)]
                    if ceil32(_3742) > _3742:
                        mem[_3742 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3742) + 32], 
                _3743 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3743)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3743)]
                if ceil32(_3743) > _3743:
                    mem[_3743 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3743) + 32], 
            mem[stor11.length.field_1 % 128 + ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                _3744 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3744)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3744)]
                if ceil32(_3744) > _3744:
                    mem[_3744 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3744) + 32], 
            _3745 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3745)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3745)]
            if ceil32(_3745) > _3745:
                mem[_3745 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3745) + 32], 
        mem[ceil32(stor11.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
        if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                _3746 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3746)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3746)]
                if ceil32(_3746) > _3746:
                    mem[_3746 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3746) + 32], 
            _3747 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3747)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3747)]
            if ceil32(_3747) > _3747:
                mem[_3747 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3747) + 32], 
        mem[stor11.length.field_1 % 128 + ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
        mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
            _3748 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3748)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3748)]
            if ceil32(_3748) > _3748:
                mem[_3748 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3748) + 32], 
        _3749 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_3749)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3749)]
        if ceil32(_3749) > _3749:
            mem[_3749 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_3749) + 32], 
    mem[0] = 11
    mem[128] = uint256(stor11.field_0)
    idx = 128
    s = 0
    while stor11.length.field_1 % 128 + 96 > idx:
        mem[idx + 32] = stor11[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor11.length.field_1 % 128 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = 32
        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
            mem[mem[ceil32(stor11.length.field_1 % 128) + 192] + ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 289] = 0
        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[ceil32(stor11.length.field_1 % 128) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
        if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
                _4430 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_4430)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4430)]
                if ceil32(_4430) > _4430:
                    mem[_4430 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_4430) + 32], 
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 0
            mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
            _4431 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_4431)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4431)]
            if ceil32(_4431) > _4431:
                mem[_4431 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_4431) + 32], 
        mem[stor11.length.field_1 % 128 + ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
            mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
            _4432 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_4432)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4432)]
            if ceil32(_4432) > _4432:
                mem[_4432 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_4432) + 32], 
        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 0
        mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
        _4433 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_4433)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4433)]
        if ceil32(_4433) > _4433:
            mem[_4433 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_4433) + 32], 
    mem[ceil32(stor11.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
            revert with 0, 50
        mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
    if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
            mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
            _4434 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_4434)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4434)]
            if ceil32(_4434) > _4434:
                mem[_4434 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_4434) + 32], 
        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 0
        mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
        _4435 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_4435)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4435)]
        if ceil32(_4435) > _4435:
            mem[_4435 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_4435) + 32], 
    mem[stor11.length.field_1 % 128 + ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192] = 0
    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
        mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
        _4436 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_4436)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4436)]
        if ceil32(_4436) > _4436:
            mem[_4436 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_4436) + 32], 
    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 0
    mem[64] = mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192
    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 32
    _4437 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
    mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256 len ceil32(_4437)] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4437)]
    if ceil32(_4437) > _4437:
        mem[_4437 + mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 256] = 0
    return 32, mem[mem[ceil32(stor11.length.field_1 % 128) + 128] + ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 224 len ceil32(_4437) + 32], 
}



}
