contract main {




// =====================  Runtime code  =====================


#
#  - sub_2c3eafc1(?)
#  - initialize()
#  - tokenURI(uint256 arg1)
#
array of struct stor51;
mapping of uint32 stor52;
array of struct stor103;
array of struct stor104;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor108;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor154;
array of uint256 tokenByIndex;
mapping of uint256 stor156;
uint8 paused;
uint256 stor353;
uint256 stor354;
mapping of struct stor355;
mapping of struct block;
mapping of uint256 sub_d4a61aca;
mapping of address sub_a40e5784;
mapping of uint256 sub_fbb06418;
mapping of uint8 stor360;
mapping of uint256 sub_c092cb6b;
mapping of uint8 stor362;
address stor363;
address sub_fb32c508Address;
uint256 chainId;
uint256 maxSupply;
uint256 price;
uint256 sub_e6412289;
uint256 priceIncrease;
uint256 sub_38d5a590;
uint256 sub_8a23c200;
array of struct stor372;
uint256 royaltyAmount;
uint32 stor3608;
address stor3608;
uint256 stor3608;
uint8 stor4910;
array of struct stor59096367844407008987701667253466222311117155682558288019434885054153674758786;
array of uint256 stor84882613393583925725825227175822068977385904327970485092188354384632214438729;

function getBlock(uint256 arg1) {
    require calldata.size - 4 >= 32
    return block[arg1].field_0, 
           block[arg1].field_256,
           block[arg1].field_512,
           block[arg1].field_768,
           block[arg1].field_1024,
           block[arg1].field_1024,
           bool(block[arg1].field_1088)
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

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function getChainId() {
    return chainId
}

function sub_38d5a590(?) {
    return sub_38d5a590
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() {
    return bool(paused)
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

function royaltyAmount() {
    return royaltyAmount
}

function sub_8a23c200(?) {
    return sub_8a23c200
}

function price() {
    return price
}

function sub_a40e5784(?) {
    require calldata.size - 4 >= 64
    return sub_a40e5784[arg1][arg2]
}

function sub_c092cb6b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c092cb6b[address(arg1)]
}

function sub_d4a61aca(?) {
    require calldata.size - 4 >= 64
    return sub_d4a61aca[arg1][arg2]
}

function maxSupply() {
    return maxSupply
}

function sub_e6412289(?) {
    return sub_e6412289
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor108[address(arg1)][address(arg2)])
}

function priceIncrease() {
    return priceIncrease
}

function sub_fb32c508(?) {
    return sub_fb32c508Address
}

function sub_fbb06418(?) {
    require calldata.size - 4 >= 64
    return sub_fbb06418[arg1][arg2]
}

function _fallback() payable {
    revert
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 and 0 > -1 / arg2:
        revert with 0, 17
    return stor363, 0
}

function sub_f466fe5a(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    if stor52[address(arg2)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(arg2)]].field_192 < uint32(arg1):
        return 0
    return 1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor108[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor108[stor105[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
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
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    if 0x2a55205a00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xc963f51d00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x8fd85c3f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function sub_0c4844aa(?) {
    require calldata.size - 4 >= 32
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 >= 1000:
        stor360[arg1] = 0
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_40df31e4(?) {
    require calldata.size - 4 >= 32
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 >= 1000:
        sub_8a23c200 = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_73a9ceca(?) {
    require calldata.size - 4 >= 32
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 >= 1000:
        sub_38d5a590 = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 >= 1000:
        price = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_f0f6b296(?) {
    require calldata.size - 4 >= 32
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 >= 1000:
        sub_e6412289 = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function setChainId(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 >= 1000:
        chainId = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function setMaxSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 >= 1000:
        maxSupply = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function addSupportedChain(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 >= 1000:
        stor360[arg1] = 1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function setRoyaltyAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 >= 1000:
        royaltyAmount = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function setPriceIncrease(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 >= 1000:
        priceIncrease = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function setRoyaltyReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 >= 1000:
        stor363 = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function whitelistAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 >= 1000:
        stor362[address(arg1)] = 0
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function setBridgeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 >= 1000:
        sub_fb32c508Address = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function blacklistAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 >= 1000:
        stor362[address(arg1)] = 1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_25be1fdc(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 >= 1000:
        sub_c092cb6b[address(arg1)] = arg2
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_9acea9ef(?) {
    require calldata.size - 4 >= 96
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 >= 100:
        sub_d4a61aca[arg1][arg2] = arg3
        emit 0xd36e1a84: arg2, arg3, arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 100
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_4fb5c1b1(?) {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 >= 100:
        sub_a40e5784[arg1][arg2] = address(arg3)
        emit 0x4b83a86b: arg2, address(arg3), arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 100
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function pause() {
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 < 1000:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 1000
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 < 1000:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 1000
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function withdraw() {
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 >= 1000:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_073bf67e(?) {
    require calldata.size - 4 >= 96
    require arg2 == uint32(arg2)
    require arg3 == uint32(arg3)
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 < 100:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 100
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if block[arg1].field_1024 != uint32(arg2):
        block[arg1].field_1024 = uint32(arg2)
    if block[arg1].field_1056 != uint32(arg3):
        block[arg1].field_1056 = uint32(arg3)
    emit 0x6f61f02d: arg2 << 224, uint32(arg3), arg1
}

function sub_82db99ff(?) {
    require calldata.size - 4 >= 256
    require calldata.size - 36 >= 224
    require arg5 == uint32(arg5)
    require arg6 == uint32(arg6)
    require arg7 == bool(arg7)
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 < 100:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 352 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 100
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 448 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if uint32(arg5) != block[arg1].field_1024:
        block[arg1].field_1024 = uint32(arg5)
    if uint32(arg6) != block[arg1].field_1056:
        block[arg1].field_1056 = uint32(arg6)
    if block[arg1].field_256 != arg2:
        block[arg1].field_256 = arg2
    if block[arg1].field_512 != arg3:
        block[arg1].field_512 = arg3
    if block[arg1].field_768 != arg4:
        block[arg1].field_768 = arg4
    if bool(arg7) != bool(block[arg1].field_1088):
        block[arg1].field_1088 = Mask(192, 0, bool(arg7))
    emit 0x1c1cbed0: arg5 << 224, arg6 << 224, arg2, arg3, arg4, bool(arg7), arg1
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 < 1000:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg1.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 1000
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(ceil32(arg1.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if bool(stor372.length):
        if bool(stor372.length) == uint255(stor372.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor372[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor372.length = 0
            idx = 0
            while (uint255(stor372.length) * 0.5) + 31 / 32 > idx:
                stor372[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor372.length) == stor372.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor372[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor372.length = 0
            idx = 0
            while stor372.length.field_1 + 31 / 32 > idx:
                stor372[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setTokenURI(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 < 1000:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg2.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 1000
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(ceil32(arg2.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if not ownerOf[arg1]:
        revert with 0, 'URI set of nonexistent token'
    if stor355[arg1].field_0:
        if stor355[arg1].field_0 == uint255(stor355[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor355[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor355[arg1].field_0 = 0
            idx = 0
            while (uint255(stor355[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor355[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor355[arg1].field_0 == stor355[arg1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor355[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor355[arg1].field_0 = 0
            idx = 0
            while stor355[arg1].field_1 + 31 / 32 > idx:
                stor355[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 < 1000:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 1000
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if not ext_code.size(arg1):
        revert with 0, 'ERC1967: new implementation is not a contract'
    address(stor3608) = arg1
    if not stor4910:
        stor4910 = 1
        if not ext_code.size(arg1):
            revert with 0, 'Address: delegate call to non-contract'
        mem[196 len 64] = unknown_0x3659cfe6(?????), Mask(224, 0, stor3608), uint32(stor3608), mem[196 len 28]
        delegate arg1.mem[196 len 4] with:
             gas gas_remaining wei
            args mem[200]
        if not return_data.size:
            if not delegate.return_code:
                revert with 0, 32, 39, 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[267 len 25] >> 56, 0
        else:
            if not delegate.return_code:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            39,
                            0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(return_data.size) + 268 len 25] >> 56,
                            0
        ('bool', 'delegate.return_code')
        stor4910 = 0
        if address(stor3608) != address(stor3608):
            revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
        if not ext_code.size(arg1):
            revert with 0, 'ERC1967: new implementation is not a contract'
        address(stor3608) = arg1
        emit Upgraded(arg1);
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
            if not stor108[stor105[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if stor362[address(arg2)]:
        revert with 0, 'Blacklisted'
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 < 1000:
        if paused:
            revert with 0, 'Token transfer while paused'
    if not arg1:
        stor156[arg3] = tokenByIndex.length
        tokenByIndex.length++
        storBBA9[stor155.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor154[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor154[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor106[address(arg1)] - 1]
                stor154[stor153[address(arg1)][stor106[address(arg1)] - 1]] = stor154[arg3]
            stor154[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor106[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor106[address(arg2)]] = arg3
            stor154[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor156[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor156[arg3]] = tokenByIndex[tokenByIndex.length]
        stor156[stor155[stor155.length]] = stor156[arg3]
        stor156[arg3] = 0
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
            if not stor108[stor105[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if stor362[address(arg2)]:
        revert with 0, 'Blacklisted'
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 < 1000:
        if paused:
            revert with 0, 'Token transfer while paused'
    if not arg1:
        stor156[arg3] = tokenByIndex.length
        tokenByIndex.length++
        storBBA9[stor155.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor154[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor154[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor106[address(arg1)] - 1]
                stor154[stor153[address(arg1)][stor106[address(arg1)] - 1]] = stor154[arg3]
            stor154[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor106[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor106[address(arg2)]] = arg3
            stor154[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor156[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor156[arg3]] = tokenByIndex[tokenByIndex.length]
        stor156[stor155[stor155.length]] = stor156[arg3]
        stor156[arg3] = 0
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

function name() {
    if bool(stor103.length):
        if bool(stor103.length) == uint255(stor103.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor103.length):
            if bool(stor103.length) == uint255(stor103.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor103.length):
                if 31 < uint255(stor103.length) * 0.5:
                    mem[128] = uint256(stor103.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor103.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor103[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor103.length), data=mem[128 len ceil32(uint255(stor103.length) * 0.5)])
                mem[128] = 256 * stor103.length.field_8
        else:
            if bool(stor103.length) == stor103.length.field_1 < 32:
                revert with 0, 34
            if stor103.length.field_1:
                if 31 < stor103.length.field_1:
                    mem[128] = uint256(stor103.field_0)
                    idx = 128
                    s = 0
                    while stor103.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor103[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor103.length), data=mem[128 len ceil32(uint255(stor103.length) * 0.5)])
                mem[128] = 256 * stor103.length.field_8
        mem[ceil32(uint255(stor103.length) * 0.5) + 192 len ceil32(uint255(stor103.length) * 0.5)] = mem[128 len ceil32(uint255(stor103.length) * 0.5)]
        if ceil32(uint255(stor103.length) * 0.5) > uint255(stor103.length) * 0.5:
            mem[(uint255(stor103.length) * 0.5) + ceil32(uint255(stor103.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor103.length), data=mem[128 len ceil32(uint255(stor103.length) * 0.5)], mem[(2 * ceil32(uint255(stor103.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor103.length) * 0.5)]), 
    if bool(stor103.length) == stor103.length.field_1 < 32:
        revert with 0, 34
    if bool(stor103.length):
        if bool(stor103.length) == uint255(stor103.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor103.length):
            if 31 < uint255(stor103.length) * 0.5:
                mem[128] = uint256(stor103.field_0)
                idx = 128
                s = 0
                while (uint255(stor103.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor103[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor103.length % 128, data=mem[128 len ceil32(stor103.length.field_1)])
            mem[128] = 256 * stor103.length.field_8
    else:
        if bool(stor103.length) == stor103.length.field_1 < 32:
            revert with 0, 34
        if stor103.length.field_1:
            if 31 < stor103.length.field_1:
                mem[128] = uint256(stor103.field_0)
                idx = 128
                s = 0
                while stor103.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor103[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor103.length % 128, data=mem[128 len ceil32(stor103.length.field_1)])
            mem[128] = 256 * stor103.length.field_8
    mem[ceil32(stor103.length.field_1) + 192 len ceil32(stor103.length.field_1)] = mem[128 len ceil32(stor103.length.field_1)]
    if ceil32(stor103.length.field_1) > stor103.length.field_1:
        mem[stor103.length.field_1 + ceil32(stor103.length.field_1) + 192] = 0
    return Array(len=stor103.length % 128, data=mem[128 len ceil32(stor103.length.field_1)], mem[(2 * ceil32(stor103.length.field_1)) + 192 len 2 * ceil32(stor103.length.field_1)]), 
}

function symbol() {
    if bool(stor104.length):
        if bool(stor104.length) == uint255(stor104.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor104.length):
            if bool(stor104.length) == uint255(stor104.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor104.length):
                if 31 < uint255(stor104.length) * 0.5:
                    mem[128] = uint256(stor104.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor104.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor104[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor104.length), data=mem[128 len ceil32(uint255(stor104.length) * 0.5)])
                mem[128] = 256 * stor104.length.field_8
        else:
            if bool(stor104.length) == stor104.length.field_1 < 32:
                revert with 0, 34
            if stor104.length.field_1:
                if 31 < stor104.length.field_1:
                    mem[128] = uint256(stor104.field_0)
                    idx = 128
                    s = 0
                    while stor104.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor104[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor104.length), data=mem[128 len ceil32(uint255(stor104.length) * 0.5)])
                mem[128] = 256 * stor104.length.field_8
        mem[ceil32(uint255(stor104.length) * 0.5) + 192 len ceil32(uint255(stor104.length) * 0.5)] = mem[128 len ceil32(uint255(stor104.length) * 0.5)]
        if ceil32(uint255(stor104.length) * 0.5) > uint255(stor104.length) * 0.5:
            mem[(uint255(stor104.length) * 0.5) + ceil32(uint255(stor104.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor104.length), data=mem[128 len ceil32(uint255(stor104.length) * 0.5)], mem[(2 * ceil32(uint255(stor104.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor104.length) * 0.5)]), 
    if bool(stor104.length) == stor104.length.field_1 < 32:
        revert with 0, 34
    if bool(stor104.length):
        if bool(stor104.length) == uint255(stor104.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor104.length):
            if 31 < uint255(stor104.length) * 0.5:
                mem[128] = uint256(stor104.field_0)
                idx = 128
                s = 0
                while (uint255(stor104.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor104[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1)])
            mem[128] = 256 * stor104.length.field_8
    else:
        if bool(stor104.length) == stor104.length.field_1 < 32:
            revert with 0, 34
        if stor104.length.field_1:
            if 31 < stor104.length.field_1:
                mem[128] = uint256(stor104.field_0)
                idx = 128
                s = 0
                while stor104.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor104[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1)])
            mem[128] = 256 * stor104.length.field_8
    mem[ceil32(stor104.length.field_1) + 192 len ceil32(stor104.length.field_1)] = mem[128 len ceil32(stor104.length.field_1)]
    if ceil32(stor104.length.field_1) > stor104.length.field_1:
        mem[stor104.length.field_1 + ceil32(stor104.length.field_1) + 192] = 0
    return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1)], mem[(2 * ceil32(stor104.length.field_1)) + 192 len 2 * ceil32(stor104.length.field_1)]), 
}

function baseURI() {
    if bool(stor372.length):
        if bool(stor372.length) == uint255(stor372.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor372.length):
            if bool(stor372.length) == uint255(stor372.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor372.length):
                if 31 < uint255(stor372.length) * 0.5:
                    mem[128] = uint256(stor372.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor372.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor372[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor372.length), data=mem[128 len ceil32(uint255(stor372.length) * 0.5)])
                mem[128] = 256 * stor372.length.field_8
        else:
            if bool(stor372.length) == stor372.length.field_1 < 32:
                revert with 0, 34
            if stor372.length.field_1:
                if 31 < stor372.length.field_1:
                    mem[128] = uint256(stor372.field_0)
                    idx = 128
                    s = 0
                    while stor372.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor372[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor372.length), data=mem[128 len ceil32(uint255(stor372.length) * 0.5)])
                mem[128] = 256 * stor372.length.field_8
        mem[ceil32(uint255(stor372.length) * 0.5) + 192 len ceil32(uint255(stor372.length) * 0.5)] = mem[128 len ceil32(uint255(stor372.length) * 0.5)]
        if ceil32(uint255(stor372.length) * 0.5) > uint255(stor372.length) * 0.5:
            mem[(uint255(stor372.length) * 0.5) + ceil32(uint255(stor372.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor372.length), data=mem[128 len ceil32(uint255(stor372.length) * 0.5)], mem[(2 * ceil32(uint255(stor372.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor372.length) * 0.5)]), 
    if bool(stor372.length) == stor372.length.field_1 < 32:
        revert with 0, 34
    if bool(stor372.length):
        if bool(stor372.length) == uint255(stor372.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor372.length):
            if 31 < uint255(stor372.length) * 0.5:
                mem[128] = uint256(stor372.field_0)
                idx = 128
                s = 0
                while (uint255(stor372.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor372[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor372.length % 128, data=mem[128 len ceil32(stor372.length.field_1)])
            mem[128] = 256 * stor372.length.field_8
    else:
        if bool(stor372.length) == stor372.length.field_1 < 32:
            revert with 0, 34
        if stor372.length.field_1:
            if 31 < stor372.length.field_1:
                mem[128] = uint256(stor372.field_0)
                idx = 128
                s = 0
                while stor372.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor372[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor372.length % 128, data=mem[128 len ceil32(stor372.length.field_1)])
            mem[128] = 256 * stor372.length.field_8
    mem[ceil32(stor372.length.field_1) + 192 len ceil32(stor372.length.field_1)] = mem[128 len ceil32(stor372.length.field_1)]
    if ceil32(stor372.length.field_1) > stor372.length.field_1:
        mem[stor372.length.field_1 + ceil32(stor372.length.field_1) + 192] = 0
    return Array(len=stor372.length % 128, data=mem[128 len ceil32(stor372.length.field_1)], mem[(2 * ceil32(stor372.length.field_1)) + 192 len 2 * ceil32(stor372.length.field_1)]), 
}

function sub_5c36a0b5(?) {
    require calldata.size - 4 >= 64
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] == sub_fb32c508Address:
        revert with 0, 'Exists in bridge'
    if block[arg1].field_1088:
        revert with 0, 'Locked'
    stor360[arg2] = 1
    if stor362[msg.sender]:
        revert with 0, 'Blacklisted'
    block[arg1].field_1088 = 1
    block[arg1].field_256 = arg2
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not sub_fb32c508Address:
        revert with 0, 'ERC721: transfer to the zero address'
    if stor362[stor364]:
        revert with 0, 'Blacklisted'
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 < 1000:
        if paused:
            revert with 0, 'Token transfer while paused'
    if not msg.sender:
        stor156[arg1] = tokenByIndex.length
        tokenByIndex.length++
        storBBA9[stor155.length] = arg1
    else:
        if sub_fb32c508Address != msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(msg.sender)] < 1:
                revert with 0, 17
            if balanceOf[address(msg.sender)] - 1 != stor154[arg1]:
                tokenOfOwnerByIndex[address(msg.sender)][stor154[arg1]] = tokenOfOwnerByIndex[address(msg.sender)][stor106[address(msg.sender)] - 1]
                stor154[stor153[address(msg.sender)][stor106[address(msg.sender)] - 1]] = stor154[arg1]
            stor154[arg1] = 0
            tokenOfOwnerByIndex[address(msg.sender)][stor106[address(msg.sender)] - 1] = 0
    if sub_fb32c508Address:
        if sub_fb32c508Address != msg.sender:
            if not sub_fb32c508Address:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[stor364][stor106[stor364]] = arg1
            stor154[arg1] = balanceOf[stor364]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor156[arg1] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor156[arg1]] = tokenByIndex[tokenByIndex.length]
        stor156[stor155[stor155.length]] = stor156[arg1]
        stor156[arg1] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[address(msg.sender)] < 1:
        revert with 0, 17
    balanceOf[address(msg.sender)]--
    if balanceOf[stor364] > -2:
        revert with 0, 17
    balanceOf[stor364]++
    ownerOf[arg1] = sub_fb32c508Address
    emit Transfer(msg.sender, sub_fb32c508Address, arg1);
    if ext_code.size(sub_fb32c508Address):
        require ext_code.size(sub_fb32c508Address)
        call sub_fb32c508Address.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), msg.sender, arg1, 128, 0
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
    emit 0xee304f38: arg2, msg.sender, arg1
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
            if not stor108[stor105[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if stor362[address(arg2)]:
        revert with 0, 'Blacklisted'
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 < 1000:
        if paused:
            revert with 0, 'Token transfer while paused'
    if not arg1:
        stor156[arg3] = tokenByIndex.length
        tokenByIndex.length++
        storBBA9[stor155.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor154[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor154[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor106[address(arg1)] - 1]
                stor154[stor153[address(arg1)][stor106[address(arg1)] - 1]] = stor154[arg3]
            stor154[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor106[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor106[address(arg2)]] = arg3
            stor154[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor156[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor156[arg3]] = tokenByIndex[tokenByIndex.length]
        stor156[stor155[stor155.length]] = stor156[arg3]
        stor156[arg3] = 0
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

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 < 100:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 100
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if stor362[0]:
        revert with 0, 'Blacklisted'
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 < 1000:
        if paused:
            revert with 0, 'Token transfer while paused'
    if not ownerOf[arg1]:
        stor156[arg1] = tokenByIndex.length
        tokenByIndex.length++
        storBBA9[stor155.length] = arg1
    else:
        if ownerOf[arg1]:
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[stor105[arg1]] < 1:
                revert with 0, 17
            if balanceOf[stor105[arg1]] - 1 != stor154[arg1]:
                tokenOfOwnerByIndex[stor105[arg1]][stor154[arg1]] = tokenOfOwnerByIndex[stor105[arg1]][stor106[stor105[arg1]] - 1]
                stor154[stor153[stor105[arg1]][stor106[stor105[arg1]] - 1]] = stor154[arg1]
            stor154[arg1] = 0
            tokenOfOwnerByIndex[stor105[arg1]][stor106[stor105[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor156[arg1] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor156[arg1]] = tokenByIndex[tokenByIndex.length]
    stor156[stor155[stor155.length]] = stor156[arg1]
    stor156[arg1] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor105[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor105[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if stor355[arg1].field_0:
        if stor355[arg1].field_0 == uint255(stor355[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor355[arg1].field_0):
            if stor355[arg1].field_0:
                if stor355[arg1].field_0 == uint255(stor355[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor355[arg1].field_0 = 0
                if 31 < uint255(stor355[arg1].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor355[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor355[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor355[arg1].field_0 == stor355[arg1].field_1 < 32:
                    revert with 0, 34
                stor355[arg1].field_0 = 0
                if 31 < stor355[arg1].field_1:
                    idx = 0
                    while stor355[arg1].field_1 + 31 / 32 > idx:
                        stor355[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if stor355[arg1].field_0 == stor355[arg1].field_1 < 32:
            revert with 0, 34
        if stor355[arg1].field_1:
            if stor355[arg1].field_0:
                if stor355[arg1].field_0 == uint255(stor355[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor355[arg1].field_0 = 0
                if 31 < uint255(stor355[arg1].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor355[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor355[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor355[arg1].field_0 == stor355[arg1].field_1 < 32:
                    revert with 0, 34
                stor355[arg1].field_0 = 0
                if 31 < stor355[arg1].field_1:
                    idx = 0
                    while stor355[arg1].field_1 + 31 / 32 > idx:
                        stor355[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 < 1000:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg2.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 1000
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(ceil32(arg2.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if not ext_code.size(arg1):
        revert with 0, 'ERC1967: new implementation is not a contract'
    address(stor3608) = arg1
    if not ext_code.size(arg1):
        revert with 0, 'Address: delegate call to non-contract'
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 0
    delegate arg1.mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    if not return_data.size:
        if not delegate.return_code:
            if arg2.length:
                revert with arg2[all]
            revert with 0, 
                        32,
                        39,
                        0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 168 len 25] >> 56,
                        0
        if not stor4910:
            stor4910 = 1
            if not ext_code.size(arg1):
                revert with 0, 'Address: delegate call to non-contract'
            mem[ceil32(ceil32(arg2.length)) + 261 len 64] = 0, address(stor3608), mem[ceil32(ceil32(arg2.length)) + 261 len 28]
            delegate arg1.mem[ceil32(ceil32(arg2.length)) + 261 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg2.length)) + 265]
            if not return_data.size:
                if not delegate.return_code:
                    if arg2.length:
                        revert with arg2[all]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 332 len 25] >> 56,
                                0
            else:
                if not delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 333 len 25] >> 56,
                                0
            ('bool', 'delegate.return_code')
            stor4910 = 0
            if address(stor3608) != address(stor3608):
                revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
            if not ext_code.size(arg1):
                revert with 0, 'ERC1967: new implementation is not a contract'
            address(stor3608) = arg1
            emit Upgraded(arg1);
    else:
        if not delegate.return_code:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        32,
                        39,
                        0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 169 len 25] >> 56,
                        0
        if not stor4910:
            stor4910 = 1
            if not ext_code.size(arg1):
                revert with 0, 'Address: delegate call to non-contract'
            mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 64] = 0, address(stor3608), mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 28]
            delegate arg1.mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 266]
            if not return_data.size:
                if not delegate.return_code:
                    if arg2.length:
                        revert with arg2[all]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 333 len 25] >> 56,
                                0
            else:
                if not delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 334 len 25] >> 56,
                                0
            ('bool', 'delegate.return_code')
            stor4910 = 0
            if address(stor3608) != address(stor3608):
                revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
            if not ext_code.size(arg1):
                revert with 0, 'ERC1967: new implementation is not a contract'
            address(stor3608) = arg1
            emit Upgraded(arg1);
}

function buy(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    if price and arg1 > -1 / price:
        revert with 0, 17
    if msg.value < price * arg1:
        revert with 0, 'Insufficient fee paid'
    if arg1 > sub_38d5a590:
        revert with 0, 'Amount exceeded'
    if block.number < sub_c092cb6b[msg.sender]:
        revert with 0, 17
    if block.number - sub_c092cb6b[msg.sender] <= sub_8a23c200:
        revert with 0, 'Cooldown not met'
    mem[0] = msg.sender
    mem[32] = 362
    if stor362[msg.sender]:
        revert with 0, 'Blacklisted'
    idx = 0
    while idx < arg1:
        if tokenByIndex.length > maxSupply:
            revert with 0, 'Insufficient supply'
        _1360 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1360] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor353]:
            revert with 0, 'ERC721: token already minted'
        if stor362[address(msg.sender)]:
            revert with 0, 'Blacklisted'
        if stor52[address(msg.sender)] >= stor51.length:
            revert with 0, 50
        if stor51[stor52[address(msg.sender)]].field_192 >= 1000:
            stor156[stor353] = tokenByIndex.length
            tokenByIndex.length++
            storBBA9[stor155.length] = stor353
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor353
                    mem[32] = 105
                    ownerOf[stor353] = msg.sender
                    emit Transfer(0, msg.sender, stor353);
                    if not ext_code.size(msg.sender):
                        _1424 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1424 + 128] = 0
                        mem[_1424 + 160] = 0
                        mem[_1424 + 192] = 0
                        mem[_1424] = stor353
                        mem[_1424 + 32] = chainId
                        mem[_1424 + 64] = chainId
                        mem[_1424 + 96] = stor354
                        if not block[stor353].field_1024:
                            if not block[stor353].field_1056:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_1424 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                        else:
                            mem[_1424 + 128] = block[stor353].field_1024
                            if block[stor353].field_1056:
                                mem[_1424 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1088 = 0
                            else:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1056 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor353
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1360 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor353, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _2725 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2725] == Mask(32, 224, mem[_2725])
                        if Mask(32, 224, mem[_2725]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _2881 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_2881 + 128] = 0
                        mem[_2881 + 160] = 0
                        mem[_2881 + 192] = 0
                        mem[_2881] = stor353
                        mem[_2881 + 32] = chainId
                        mem[_2881 + 64] = chainId
                        mem[_2881 + 96] = stor354
                        if not block[stor353].field_1024:
                            if not block[stor353].field_1056:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_2881 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                        else:
                            mem[_2881 + 128] = block[stor353].field_1024
                            if block[stor353].field_1056:
                                mem[_2881 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1088 = 0
                            else:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1056 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor106[address(msg.sender)]] = stor353
                    stor154[stor353] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor353
                    mem[32] = 105
                    ownerOf[stor353] = msg.sender
                    emit Transfer(0, msg.sender, stor353);
                    if not ext_code.size(msg.sender):
                        _1523 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1523 + 128] = 0
                        mem[_1523 + 160] = 0
                        mem[_1523 + 192] = 0
                        mem[_1523] = stor353
                        mem[_1523 + 32] = chainId
                        mem[_1523 + 64] = chainId
                        mem[_1523 + 96] = stor354
                        if not block[stor353].field_1024:
                            if not block[stor353].field_1056:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_1523 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                        else:
                            mem[_1523 + 128] = block[stor353].field_1024
                            if block[stor353].field_1056:
                                mem[_1523 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1088 = 0
                            else:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1056 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor353
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1360 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor353, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _2727 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2727] == Mask(32, 224, mem[_2727])
                        if Mask(32, 224, mem[_2727]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _2883 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_2883 + 128] = 0
                        mem[_2883 + 160] = 0
                        mem[_2883 + 192] = 0
                        mem[_2883] = stor353
                        mem[_2883 + 32] = chainId
                        mem[_2883 + 64] = chainId
                        mem[_2883 + 96] = stor354
                        if not block[stor353].field_1024:
                            if not block[stor353].field_1056:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_2883 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                        else:
                            mem[_2883 + 128] = block[stor353].field_1024
                            if block[stor353].field_1056:
                                mem[_2883 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1088 = 0
                            else:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1056 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor156[stor353] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor156[stor353]] = tokenByIndex[tokenByIndex.length]
                stor156[stor155[stor155.length]] = stor156[stor353]
                stor156[stor353] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor353
                mem[32] = 105
                ownerOf[stor353] = msg.sender
                emit Transfer(0, msg.sender, stor353);
                if not ext_code.size(msg.sender):
                    _1579 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1579 + 128] = 0
                    mem[_1579 + 160] = 0
                    mem[_1579 + 192] = 0
                    mem[_1579] = stor353
                    mem[_1579 + 32] = chainId
                    mem[_1579 + 64] = chainId
                    mem[_1579 + 96] = stor354
                    if not block[stor353].field_1024:
                        if not block[stor353].field_1056:
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = 0
                            block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                        else:
                            mem[_1579 + 160] = block[stor353].field_1056
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = 0
                            block[stor353].field_1088 = 0
                        block[stor353].field_1280 = 0
                    else:
                        mem[_1579 + 128] = block[stor353].field_1024
                        if block[stor353].field_1056:
                            mem[_1579 + 160] = block[stor353].field_1056
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = block[stor353].field_1024
                            block[stor353].field_1088 = 0
                        else:
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = block[stor353].field_1024
                            block[stor353].field_1056 = 0
                            block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor353
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _1360 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor353, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _2729 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2729] == Mask(32, 224, mem[_2729])
                    if Mask(32, 224, mem[_2729]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    _2885 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2885 + 128] = 0
                    mem[_2885 + 160] = 0
                    mem[_2885 + 192] = 0
                    mem[_2885] = stor353
                    mem[_2885 + 32] = chainId
                    mem[_2885 + 64] = chainId
                    mem[_2885 + 96] = stor354
                    if not block[stor353].field_1024:
                        if not block[stor353].field_1056:
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = 0
                            block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                        else:
                            mem[_2885 + 160] = block[stor353].field_1056
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = 0
                            block[stor353].field_1088 = 0
                        block[stor353].field_1280 = 0
                    else:
                        mem[_2885 + 128] = block[stor353].field_1024
                        if block[stor353].field_1056:
                            mem[_2885 + 160] = block[stor353].field_1056
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = block[stor353].field_1024
                            block[stor353].field_1088 = 0
                        else:
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = block[stor353].field_1024
                            block[stor353].field_1056 = 0
                            block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
        else:
            if paused:
                revert with 0, 'Token transfer while paused'
            stor156[stor353] = tokenByIndex.length
            tokenByIndex.length++
            storBBA9[stor155.length] = stor353
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor353
                    mem[32] = 105
                    ownerOf[stor353] = msg.sender
                    emit Transfer(0, msg.sender, stor353);
                    if not ext_code.size(msg.sender):
                        _1421 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1421 + 128] = 0
                        mem[_1421 + 160] = 0
                        mem[_1421 + 192] = 0
                        mem[_1421] = stor353
                        mem[_1421 + 32] = chainId
                        mem[_1421 + 64] = chainId
                        mem[_1421 + 96] = stor354
                        if not block[stor353].field_1024:
                            if not block[stor353].field_1056:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_1421 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                        else:
                            mem[_1421 + 128] = block[stor353].field_1024
                            if block[stor353].field_1056:
                                mem[_1421 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1088 = 0
                            else:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1056 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor353
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1360 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor353, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _2719 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2719] == Mask(32, 224, mem[_2719])
                        if Mask(32, 224, mem[_2719]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _2875 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_2875 + 128] = 0
                        mem[_2875 + 160] = 0
                        mem[_2875 + 192] = 0
                        mem[_2875] = stor353
                        mem[_2875 + 32] = chainId
                        mem[_2875 + 64] = chainId
                        mem[_2875 + 96] = stor354
                        if not block[stor353].field_1024:
                            if not block[stor353].field_1056:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_2875 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                        else:
                            mem[_2875 + 128] = block[stor353].field_1024
                            if block[stor353].field_1056:
                                mem[_2875 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1088 = 0
                            else:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1056 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor106[address(msg.sender)]] = stor353
                    stor154[stor353] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor353
                    mem[32] = 105
                    ownerOf[stor353] = msg.sender
                    emit Transfer(0, msg.sender, stor353);
                    if not ext_code.size(msg.sender):
                        _1500 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1500 + 128] = 0
                        mem[_1500 + 160] = 0
                        mem[_1500 + 192] = 0
                        mem[_1500] = stor353
                        mem[_1500 + 32] = chainId
                        mem[_1500 + 64] = chainId
                        mem[_1500 + 96] = stor354
                        if not block[stor353].field_1024:
                            if not block[stor353].field_1056:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_1500 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                        else:
                            mem[_1500 + 128] = block[stor353].field_1024
                            if block[stor353].field_1056:
                                mem[_1500 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1088 = 0
                            else:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1056 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor353
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1360 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor353, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _2721 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2721] == Mask(32, 224, mem[_2721])
                        if Mask(32, 224, mem[_2721]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _2877 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_2877 + 128] = 0
                        mem[_2877 + 160] = 0
                        mem[_2877 + 192] = 0
                        mem[_2877] = stor353
                        mem[_2877 + 32] = chainId
                        mem[_2877 + 64] = chainId
                        mem[_2877 + 96] = stor354
                        if not block[stor353].field_1024:
                            if not block[stor353].field_1056:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_2877 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                        else:
                            mem[_2877 + 128] = block[stor353].field_1024
                            if block[stor353].field_1056:
                                mem[_2877 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1088 = 0
                            else:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1056 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor156[stor353] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor156[stor353]] = tokenByIndex[tokenByIndex.length]
                stor156[stor155[stor155.length]] = stor156[stor353]
                stor156[stor353] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor353
                mem[32] = 105
                ownerOf[stor353] = msg.sender
                emit Transfer(0, msg.sender, stor353);
                if not ext_code.size(msg.sender):
                    _1570 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1570 + 128] = 0
                    mem[_1570 + 160] = 0
                    mem[_1570 + 192] = 0
                    mem[_1570] = stor353
                    mem[_1570 + 32] = chainId
                    mem[_1570 + 64] = chainId
                    mem[_1570 + 96] = stor354
                    if not block[stor353].field_1024:
                        if not block[stor353].field_1056:
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = 0
                            block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                        else:
                            mem[_1570 + 160] = block[stor353].field_1056
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = 0
                            block[stor353].field_1088 = 0
                        block[stor353].field_1280 = 0
                    else:
                        mem[_1570 + 128] = block[stor353].field_1024
                        if block[stor353].field_1056:
                            mem[_1570 + 160] = block[stor353].field_1056
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = block[stor353].field_1024
                            block[stor353].field_1088 = 0
                        else:
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = block[stor353].field_1024
                            block[stor353].field_1056 = 0
                            block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor353
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _1360 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor353, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _2723 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2723] == Mask(32, 224, mem[_2723])
                    if Mask(32, 224, mem[_2723]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    _2879 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2879 + 128] = 0
                    mem[_2879 + 160] = 0
                    mem[_2879 + 192] = 0
                    mem[_2879] = stor353
                    mem[_2879 + 32] = chainId
                    mem[_2879 + 64] = chainId
                    mem[_2879 + 96] = stor354
                    if not block[stor353].field_1024:
                        if not block[stor353].field_1056:
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = 0
                            block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                        else:
                            mem[_2879 + 160] = block[stor353].field_1056
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = 0
                            block[stor353].field_1088 = 0
                        block[stor353].field_1280 = 0
                    else:
                        mem[_2879 + 128] = block[stor353].field_1024
                        if block[stor353].field_1056:
                            mem[_2879 + 160] = block[stor353].field_1056
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = block[stor353].field_1024
                            block[stor353].field_1088 = 0
                        else:
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = block[stor353].field_1024
                            block[stor353].field_1056 = 0
                            block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
        mem[0] = stor354
        mem[32] = sha3(chainId, 359)
        sub_fbb06418[stor365][stor354] = stor353
        stor353++
        stor354++
        if price and priceIncrease > -1 / price:
            revert with 0, 17
        if price > !(price * priceIncrease / 1000):
            revert with 0, 17
        price += price * priceIncrease / 1000
        if price > sub_e6412289:
            price = sub_e6412289
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_c092cb6b[msg.sender] = block.number
}

function freeMint(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[32] = 52
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    mem[0] = 51
    if stor51[stor52[address(msg.sender)]].field_192 >= 100:
        idx = 0
        while idx < arg2:
            if tokenByIndex.length > maxSupply:
                revert with 0, 'Insufficient supply'
            _1355 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1355] = 0
            if not arg1:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor353]:
                revert with 0, 'ERC721: token already minted'
            if stor362[address(arg1)]:
                revert with 0, 'Blacklisted'
            if stor52[address(msg.sender)] >= stor51.length:
                revert with 0, 50
            if stor51[stor52[address(msg.sender)]].field_192 >= 1000:
                stor156[stor353] = tokenByIndex.length
                tokenByIndex.length++
                storBBA9[stor155.length] = stor353
                if arg1:
                    if not arg1:
                        if balanceOf[address(arg1)] > -2:
                            revert with 0, 17
                        balanceOf[address(arg1)]++
                        mem[0] = stor353
                        mem[32] = 105
                        ownerOf[stor353] = arg1
                        emit Transfer(0, arg1, stor353);
                        if not ext_code.size(arg1):
                            _1423 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1423 + 128] = 0
                            mem[_1423 + 160] = 0
                            mem[_1423 + 192] = 0
                            mem[_1423] = stor353
                            mem[_1423 + 32] = chainId
                            mem[_1423 + 64] = chainId
                            mem[_1423 + 96] = stor354
                            if not block[stor353].field_1024:
                                if not block[stor353].field_1056:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                                else:
                                    mem[_1423 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_1423 + 128] = block[stor353].field_1024
                                if block[stor353].field_1056:
                                    mem[_1423 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1088 = 0
                                else:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1056 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = stor353
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _1355 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(arg1)
                            call arg1.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor353, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not mem[96]:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with memory
                                      from 128
                                       len mem[96]
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            _2730 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2730] == Mask(32, 224, mem[_2730])
                            if Mask(32, 224, mem[_2730]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _2902 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_2902 + 128] = 0
                            mem[_2902 + 160] = 0
                            mem[_2902 + 192] = 0
                            mem[_2902] = stor353
                            mem[_2902 + 32] = chainId
                            mem[_2902 + 64] = chainId
                            mem[_2902 + 96] = stor354
                            if not block[stor353].field_1024:
                                if not block[stor353].field_1056:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                                else:
                                    mem[_2902 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_2902 + 128] = block[stor353].field_1024
                                if block[stor353].field_1056:
                                    mem[_2902 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1088 = 0
                                else:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1056 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                    else:
                        if not arg1:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(arg1)][stor106[address(arg1)]] = stor353
                        stor154[stor353] = balanceOf[address(arg1)]
                        if balanceOf[address(arg1)] > -2:
                            revert with 0, 17
                        balanceOf[address(arg1)]++
                        mem[0] = stor353
                        mem[32] = 105
                        ownerOf[stor353] = arg1
                        emit Transfer(0, arg1, stor353);
                        if not ext_code.size(arg1):
                            _1522 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1522 + 128] = 0
                            mem[_1522 + 160] = 0
                            mem[_1522 + 192] = 0
                            mem[_1522] = stor353
                            mem[_1522 + 32] = chainId
                            mem[_1522 + 64] = chainId
                            mem[_1522 + 96] = stor354
                            if not block[stor353].field_1024:
                                if not block[stor353].field_1056:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                                else:
                                    mem[_1522 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_1522 + 128] = block[stor353].field_1024
                                if block[stor353].field_1056:
                                    mem[_1522 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1088 = 0
                                else:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1056 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = stor353
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _1355 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(arg1)
                            call arg1.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor353, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not mem[96]:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with memory
                                      from 128
                                       len mem[96]
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            _2732 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2732] == Mask(32, 224, mem[_2732])
                            if Mask(32, 224, mem[_2732]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _2904 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_2904 + 128] = 0
                            mem[_2904 + 160] = 0
                            mem[_2904 + 192] = 0
                            mem[_2904] = stor353
                            mem[_2904 + 32] = chainId
                            mem[_2904 + 64] = chainId
                            mem[_2904 + 96] = stor354
                            if not block[stor353].field_1024:
                                if not block[stor353].field_1056:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                                else:
                                    mem[_2904 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_2904 + 128] = block[stor353].field_1024
                                if block[stor353].field_1056:
                                    mem[_2904 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1088 = 0
                                else:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1056 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor156[stor353] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor156[stor353]] = tokenByIndex[tokenByIndex.length]
                    stor156[stor155[stor155.length]] = stor156[stor353]
                    stor156[stor353] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(arg1)] > -2:
                        revert with 0, 17
                    balanceOf[address(arg1)]++
                    mem[0] = stor353
                    mem[32] = 105
                    ownerOf[stor353] = arg1
                    emit Transfer(0, arg1, stor353);
                    if not ext_code.size(arg1):
                        _1578 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1578 + 128] = 0
                        mem[_1578 + 160] = 0
                        mem[_1578 + 192] = 0
                        mem[_1578] = stor353
                        mem[_1578 + 32] = chainId
                        mem[_1578 + 64] = chainId
                        mem[_1578 + 96] = stor354
                        if not block[stor353].field_1024:
                            if not block[stor353].field_1056:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_1578 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                        else:
                            mem[_1578 + 128] = block[stor353].field_1024
                            if block[stor353].field_1056:
                                mem[_1578 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1088 = 0
                            else:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1056 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor353
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1355 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(arg1)
                        call arg1.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor353, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _2734 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2734] == Mask(32, 224, mem[_2734])
                        if Mask(32, 224, mem[_2734]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _2906 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_2906 + 128] = 0
                        mem[_2906 + 160] = 0
                        mem[_2906 + 192] = 0
                        mem[_2906] = stor353
                        mem[_2906 + 32] = chainId
                        mem[_2906 + 64] = chainId
                        mem[_2906 + 96] = stor354
                        if not block[stor353].field_1024:
                            if not block[stor353].field_1056:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_2906 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                        else:
                            mem[_2906 + 128] = block[stor353].field_1024
                            if block[stor353].field_1056:
                                mem[_2906 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1088 = 0
                            else:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1056 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
            else:
                if paused:
                    revert with 0, 'Token transfer while paused'
                stor156[stor353] = tokenByIndex.length
                tokenByIndex.length++
                storBBA9[stor155.length] = stor353
                if arg1:
                    if not arg1:
                        if balanceOf[address(arg1)] > -2:
                            revert with 0, 17
                        balanceOf[address(arg1)]++
                        mem[0] = stor353
                        mem[32] = 105
                        ownerOf[stor353] = arg1
                        emit Transfer(0, arg1, stor353);
                        if not ext_code.size(arg1):
                            _1420 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1420 + 128] = 0
                            mem[_1420 + 160] = 0
                            mem[_1420 + 192] = 0
                            mem[_1420] = stor353
                            mem[_1420 + 32] = chainId
                            mem[_1420 + 64] = chainId
                            mem[_1420 + 96] = stor354
                            if not block[stor353].field_1024:
                                if not block[stor353].field_1056:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                                else:
                                    mem[_1420 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_1420 + 128] = block[stor353].field_1024
                                if block[stor353].field_1056:
                                    mem[_1420 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1088 = 0
                                else:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1056 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = stor353
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _1355 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(arg1)
                            call arg1.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor353, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not mem[96]:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with memory
                                      from 128
                                       len mem[96]
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            _2724 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2724] == Mask(32, 224, mem[_2724])
                            if Mask(32, 224, mem[_2724]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _2896 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_2896 + 128] = 0
                            mem[_2896 + 160] = 0
                            mem[_2896 + 192] = 0
                            mem[_2896] = stor353
                            mem[_2896 + 32] = chainId
                            mem[_2896 + 64] = chainId
                            mem[_2896 + 96] = stor354
                            if not block[stor353].field_1024:
                                if not block[stor353].field_1056:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                                else:
                                    mem[_2896 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_2896 + 128] = block[stor353].field_1024
                                if block[stor353].field_1056:
                                    mem[_2896 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1088 = 0
                                else:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1056 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                    else:
                        if not arg1:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(arg1)][stor106[address(arg1)]] = stor353
                        stor154[stor353] = balanceOf[address(arg1)]
                        if balanceOf[address(arg1)] > -2:
                            revert with 0, 17
                        balanceOf[address(arg1)]++
                        mem[0] = stor353
                        mem[32] = 105
                        ownerOf[stor353] = arg1
                        emit Transfer(0, arg1, stor353);
                        if not ext_code.size(arg1):
                            _1499 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1499 + 128] = 0
                            mem[_1499 + 160] = 0
                            mem[_1499 + 192] = 0
                            mem[_1499] = stor353
                            mem[_1499 + 32] = chainId
                            mem[_1499 + 64] = chainId
                            mem[_1499 + 96] = stor354
                            if not block[stor353].field_1024:
                                if not block[stor353].field_1056:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                                else:
                                    mem[_1499 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_1499 + 128] = block[stor353].field_1024
                                if block[stor353].field_1056:
                                    mem[_1499 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1088 = 0
                                else:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1056 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = stor353
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _1355 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(arg1)
                            call arg1.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor353, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not mem[96]:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with memory
                                      from 128
                                       len mem[96]
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            _2726 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2726] == Mask(32, 224, mem[_2726])
                            if Mask(32, 224, mem[_2726]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _2898 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_2898 + 128] = 0
                            mem[_2898 + 160] = 0
                            mem[_2898 + 192] = 0
                            mem[_2898] = stor353
                            mem[_2898 + 32] = chainId
                            mem[_2898 + 64] = chainId
                            mem[_2898 + 96] = stor354
                            if not block[stor353].field_1024:
                                if not block[stor353].field_1056:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                                else:
                                    mem[_2898 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_2898 + 128] = block[stor353].field_1024
                                if block[stor353].field_1056:
                                    mem[_2898 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1088 = 0
                                else:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1056 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor156[stor353] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor156[stor353]] = tokenByIndex[tokenByIndex.length]
                    stor156[stor155[stor155.length]] = stor156[stor353]
                    stor156[stor353] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(arg1)] > -2:
                        revert with 0, 17
                    balanceOf[address(arg1)]++
                    mem[0] = stor353
                    mem[32] = 105
                    ownerOf[stor353] = arg1
                    emit Transfer(0, arg1, stor353);
                    if not ext_code.size(arg1):
                        _1569 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1569 + 128] = 0
                        mem[_1569 + 160] = 0
                        mem[_1569 + 192] = 0
                        mem[_1569] = stor353
                        mem[_1569 + 32] = chainId
                        mem[_1569 + 64] = chainId
                        mem[_1569 + 96] = stor354
                        if not block[stor353].field_1024:
                            if not block[stor353].field_1056:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_1569 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                        else:
                            mem[_1569 + 128] = block[stor353].field_1024
                            if block[stor353].field_1056:
                                mem[_1569 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1088 = 0
                            else:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1056 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor353
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1355 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(arg1)
                        call arg1.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor353, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _2728 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2728] == Mask(32, 224, mem[_2728])
                        if Mask(32, 224, mem[_2728]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _2900 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_2900 + 128] = 0
                        mem[_2900 + 160] = 0
                        mem[_2900 + 192] = 0
                        mem[_2900] = stor353
                        mem[_2900 + 32] = chainId
                        mem[_2900 + 64] = chainId
                        mem[_2900 + 96] = stor354
                        if not block[stor353].field_1024:
                            if not block[stor353].field_1056:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_2900 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                        else:
                            mem[_2900 + 128] = block[stor353].field_1024
                            if block[stor353].field_1056:
                                mem[_2900 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1088 = 0
                            else:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1056 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
            mem[0] = stor354
            mem[32] = sha3(chainId, 359)
            sub_fbb06418[stor365][stor354] = stor353
            stor353++
            stor354++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 100
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_64b772f2(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[32] = 52
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    mem[0] = 51
    if stor51[stor52[address(msg.sender)]].field_192 >= 100:
        idx = 0
        while idx < arg2:
            _1351 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1351] = 0
            if not address(arg1):
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor353]:
                revert with 0, 'ERC721: token already minted'
            if stor362[address(arg1)]:
                revert with 0, 'Blacklisted'
            if stor52[address(msg.sender)] >= stor51.length:
                revert with 0, 50
            if stor51[stor52[address(msg.sender)]].field_192 >= 1000:
                stor156[stor353] = tokenByIndex.length
                tokenByIndex.length++
                storBBA9[stor155.length] = stor353
                if address(arg1):
                    if not address(arg1):
                        if balanceOf[address(arg1)] > -2:
                            revert with 0, 17
                        balanceOf[address(arg1)]++
                        mem[0] = stor353
                        mem[32] = 105
                        ownerOf[stor353] = address(arg1)
                        emit Transfer(0, address(arg1), stor353);
                        if not ext_code.size(address(arg1)):
                            _1419 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1419 + 128] = 0
                            mem[_1419 + 160] = 0
                            mem[_1419 + 192] = 0
                            mem[_1419] = stor353
                            mem[_1419 + 32] = chainId
                            mem[_1419 + 64] = chainId
                            mem[_1419 + 96] = stor354
                            if not block[stor353].field_1024:
                                if not block[stor353].field_1056:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                                else:
                                    mem[_1419 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_1419 + 128] = block[stor353].field_1024
                                if block[stor353].field_1056:
                                    mem[_1419 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1088 = 0
                                else:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1056 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = stor353
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _1351 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(arg1))
                            call address(arg1).0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor353, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not mem[96]:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with memory
                                      from 128
                                       len mem[96]
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            _2726 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2726] == Mask(32, 224, mem[_2726])
                            if Mask(32, 224, mem[_2726]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _2898 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_2898 + 128] = 0
                            mem[_2898 + 160] = 0
                            mem[_2898 + 192] = 0
                            mem[_2898] = stor353
                            mem[_2898 + 32] = chainId
                            mem[_2898 + 64] = chainId
                            mem[_2898 + 96] = stor354
                            if not block[stor353].field_1024:
                                if not block[stor353].field_1056:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                                else:
                                    mem[_2898 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_2898 + 128] = block[stor353].field_1024
                                if block[stor353].field_1056:
                                    mem[_2898 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1088 = 0
                                else:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1056 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                    else:
                        if not address(arg1):
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(arg1)][stor106[address(arg1)]] = stor353
                        stor154[stor353] = balanceOf[address(arg1)]
                        if balanceOf[address(arg1)] > -2:
                            revert with 0, 17
                        balanceOf[address(arg1)]++
                        mem[0] = stor353
                        mem[32] = 105
                        ownerOf[stor353] = address(arg1)
                        emit Transfer(0, address(arg1), stor353);
                        if not ext_code.size(address(arg1)):
                            _1518 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1518 + 128] = 0
                            mem[_1518 + 160] = 0
                            mem[_1518 + 192] = 0
                            mem[_1518] = stor353
                            mem[_1518 + 32] = chainId
                            mem[_1518 + 64] = chainId
                            mem[_1518 + 96] = stor354
                            if not block[stor353].field_1024:
                                if not block[stor353].field_1056:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                                else:
                                    mem[_1518 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_1518 + 128] = block[stor353].field_1024
                                if block[stor353].field_1056:
                                    mem[_1518 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1088 = 0
                                else:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1056 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = stor353
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _1351 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(arg1))
                            call address(arg1).0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor353, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not mem[96]:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with memory
                                      from 128
                                       len mem[96]
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            _2728 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2728] == Mask(32, 224, mem[_2728])
                            if Mask(32, 224, mem[_2728]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _2900 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_2900 + 128] = 0
                            mem[_2900 + 160] = 0
                            mem[_2900 + 192] = 0
                            mem[_2900] = stor353
                            mem[_2900 + 32] = chainId
                            mem[_2900 + 64] = chainId
                            mem[_2900 + 96] = stor354
                            if not block[stor353].field_1024:
                                if not block[stor353].field_1056:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                                else:
                                    mem[_2900 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_2900 + 128] = block[stor353].field_1024
                                if block[stor353].field_1056:
                                    mem[_2900 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1088 = 0
                                else:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1056 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor156[stor353] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor156[stor353]] = tokenByIndex[tokenByIndex.length]
                    stor156[stor155[stor155.length]] = stor156[stor353]
                    stor156[stor353] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(arg1)] > -2:
                        revert with 0, 17
                    balanceOf[address(arg1)]++
                    mem[0] = stor353
                    mem[32] = 105
                    ownerOf[stor353] = address(arg1)
                    emit Transfer(0, address(arg1), stor353);
                    if not ext_code.size(address(arg1)):
                        _1574 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1574 + 128] = 0
                        mem[_1574 + 160] = 0
                        mem[_1574 + 192] = 0
                        mem[_1574] = stor353
                        mem[_1574 + 32] = chainId
                        mem[_1574 + 64] = chainId
                        mem[_1574 + 96] = stor354
                        if not block[stor353].field_1024:
                            if not block[stor353].field_1056:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_1574 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                        else:
                            mem[_1574 + 128] = block[stor353].field_1024
                            if block[stor353].field_1056:
                                mem[_1574 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1088 = 0
                            else:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1056 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor353
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1351 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(arg1))
                        call address(arg1).0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor353, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _2730 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2730] == Mask(32, 224, mem[_2730])
                        if Mask(32, 224, mem[_2730]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _2902 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_2902 + 128] = 0
                        mem[_2902 + 160] = 0
                        mem[_2902 + 192] = 0
                        mem[_2902] = stor353
                        mem[_2902 + 32] = chainId
                        mem[_2902 + 64] = chainId
                        mem[_2902 + 96] = stor354
                        if not block[stor353].field_1024:
                            if not block[stor353].field_1056:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_2902 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                        else:
                            mem[_2902 + 128] = block[stor353].field_1024
                            if block[stor353].field_1056:
                                mem[_2902 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1088 = 0
                            else:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1056 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
            else:
                if paused:
                    revert with 0, 'Token transfer while paused'
                stor156[stor353] = tokenByIndex.length
                tokenByIndex.length++
                storBBA9[stor155.length] = stor353
                if address(arg1):
                    if not address(arg1):
                        if balanceOf[address(arg1)] > -2:
                            revert with 0, 17
                        balanceOf[address(arg1)]++
                        mem[0] = stor353
                        mem[32] = 105
                        ownerOf[stor353] = address(arg1)
                        emit Transfer(0, address(arg1), stor353);
                        if not ext_code.size(address(arg1)):
                            _1416 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1416 + 128] = 0
                            mem[_1416 + 160] = 0
                            mem[_1416 + 192] = 0
                            mem[_1416] = stor353
                            mem[_1416 + 32] = chainId
                            mem[_1416 + 64] = chainId
                            mem[_1416 + 96] = stor354
                            if not block[stor353].field_1024:
                                if not block[stor353].field_1056:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                                else:
                                    mem[_1416 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_1416 + 128] = block[stor353].field_1024
                                if block[stor353].field_1056:
                                    mem[_1416 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1088 = 0
                                else:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1056 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = stor353
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _1351 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(arg1))
                            call address(arg1).0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor353, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not mem[96]:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with memory
                                      from 128
                                       len mem[96]
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            _2720 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2720] == Mask(32, 224, mem[_2720])
                            if Mask(32, 224, mem[_2720]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _2892 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_2892 + 128] = 0
                            mem[_2892 + 160] = 0
                            mem[_2892 + 192] = 0
                            mem[_2892] = stor353
                            mem[_2892 + 32] = chainId
                            mem[_2892 + 64] = chainId
                            mem[_2892 + 96] = stor354
                            if not block[stor353].field_1024:
                                if not block[stor353].field_1056:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                                else:
                                    mem[_2892 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_2892 + 128] = block[stor353].field_1024
                                if block[stor353].field_1056:
                                    mem[_2892 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1088 = 0
                                else:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1056 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                    else:
                        if not address(arg1):
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(arg1)][stor106[address(arg1)]] = stor353
                        stor154[stor353] = balanceOf[address(arg1)]
                        if balanceOf[address(arg1)] > -2:
                            revert with 0, 17
                        balanceOf[address(arg1)]++
                        mem[0] = stor353
                        mem[32] = 105
                        ownerOf[stor353] = address(arg1)
                        emit Transfer(0, address(arg1), stor353);
                        if not ext_code.size(address(arg1)):
                            _1495 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1495 + 128] = 0
                            mem[_1495 + 160] = 0
                            mem[_1495 + 192] = 0
                            mem[_1495] = stor353
                            mem[_1495 + 32] = chainId
                            mem[_1495 + 64] = chainId
                            mem[_1495 + 96] = stor354
                            if not block[stor353].field_1024:
                                if not block[stor353].field_1056:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                                else:
                                    mem[_1495 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_1495 + 128] = block[stor353].field_1024
                                if block[stor353].field_1056:
                                    mem[_1495 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1088 = 0
                                else:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1056 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = stor353
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _1351 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(arg1))
                            call address(arg1).0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor353, 128, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not mem[96]:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with memory
                                      from 128
                                       len mem[96]
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            _2722 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2722] == Mask(32, 224, mem[_2722])
                            if Mask(32, 224, mem[_2722]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _2894 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_2894 + 128] = 0
                            mem[_2894 + 160] = 0
                            mem[_2894 + 192] = 0
                            mem[_2894] = stor353
                            mem[_2894 + 32] = chainId
                            mem[_2894 + 64] = chainId
                            mem[_2894 + 96] = stor354
                            if not block[stor353].field_1024:
                                if not block[stor353].field_1056:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                                else:
                                    mem[_2894 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = 0
                                    block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_2894 + 128] = block[stor353].field_1024
                                if block[stor353].field_1056:
                                    mem[_2894 + 160] = block[stor353].field_1056
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1088 = 0
                                else:
                                    block[stor353].field_0 = stor353
                                    block[stor353].field_256 = chainId
                                    block[stor353].field_512 = chainId
                                    block[stor353].field_768 = stor354
                                    block[stor353].field_1024 = block[stor353].field_1024
                                    block[stor353].field_1056 = 0
                                    block[stor353].field_1088 = 0
                                    block[stor353].field_1280 = 0
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor156[stor353] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor156[stor353]] = tokenByIndex[tokenByIndex.length]
                    stor156[stor155[stor155.length]] = stor156[stor353]
                    stor156[stor353] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(arg1)] > -2:
                        revert with 0, 17
                    balanceOf[address(arg1)]++
                    mem[0] = stor353
                    mem[32] = 105
                    ownerOf[stor353] = address(arg1)
                    emit Transfer(0, address(arg1), stor353);
                    if not ext_code.size(address(arg1)):
                        _1565 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1565 + 128] = 0
                        mem[_1565 + 160] = 0
                        mem[_1565 + 192] = 0
                        mem[_1565] = stor353
                        mem[_1565 + 32] = chainId
                        mem[_1565 + 64] = chainId
                        mem[_1565 + 96] = stor354
                        if not block[stor353].field_1024:
                            if not block[stor353].field_1056:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_1565 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                        else:
                            mem[_1565 + 128] = block[stor353].field_1024
                            if block[stor353].field_1056:
                                mem[_1565 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1088 = 0
                            else:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1056 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor353
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1351 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(arg1))
                        call address(arg1).0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor353, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _2724 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2724] == Mask(32, 224, mem[_2724])
                        if Mask(32, 224, mem[_2724]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _2896 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_2896 + 128] = 0
                        mem[_2896 + 160] = 0
                        mem[_2896 + 192] = 0
                        mem[_2896] = stor353
                        mem[_2896 + 32] = chainId
                        mem[_2896 + 64] = chainId
                        mem[_2896 + 96] = stor354
                        if not block[stor353].field_1024:
                            if not block[stor353].field_1056:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
                            else:
                                mem[_2896 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = 0
                                block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                        else:
                            mem[_2896 + 128] = block[stor353].field_1024
                            if block[stor353].field_1056:
                                mem[_2896 + 160] = block[stor353].field_1056
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1088 = 0
                            else:
                                block[stor353].field_0 = stor353
                                block[stor353].field_256 = chainId
                                block[stor353].field_512 = chainId
                                block[stor353].field_768 = stor354
                                block[stor353].field_1024 = block[stor353].field_1024
                                block[stor353].field_1056 = 0
                                block[stor353].field_1088 = 0
                                block[stor353].field_1280 = 0
            mem[0] = stor354
            mem[32] = sha3(chainId, 359)
            sub_fbb06418[stor365][stor354] = stor353
            stor353++
            stor354++
            if maxSupply == -1:
                revert with 0, 17
            maxSupply++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 100
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_c2c8b3e3(?) {
    require calldata.size - 4 >= 384
    require cd[4] == address(cd[4])
    require calldata.size - 36 >= 224
    mem[128] = cd[68]
    mem[160] = cd[100]
    mem[192] = cd[132]
    require cd[164] == uint32(cd[164])
    mem[224] = cd[164]
    require cd[196] == uint32(cd[196])
    mem[256] = cd[196]
    require cd[228] == bool(cd[228])
    mem[288] = cd[228]
    require cd[260] <= test266151307()
    require cd[260] + 35 < calldata.size
    if ('cd', 260).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 260).length) + 321 < 320 or ceil32(32 * ('cd', 260).length) + 321 > test266151307():
        revert with 0, 65
    mem[320] = ('cd', 260).length
    require cd[260] + (32 * ('cd', 260).length) + 36 <= calldata.size
    idx = 0
    s = cd[260] + 36
    t = 352
    while idx < ('cd', 260).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[292] <= test266151307()
    require cd[292] + 35 < calldata.size
    if ('cd', 292).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 292).length) + 322 < 321 or ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + 322 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 260).length) + 321] = ('cd', 292).length
    require cd[292] + (32 * ('cd', 292).length) + 36 <= calldata.size
    idx = 0
    s = cd[292] + 36
    t = ceil32(32 * ('cd', 260).length) + 353
    while idx < ('cd', 292).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[324] <= test266151307()
    require cd[324] + 35 < calldata.size
    if ('cd', 324).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 324).length) + 323 < 322 or ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + 323 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + 322] = ('cd', 324).length
    require cd[324] + (32 * ('cd', 324).length) + 36 <= calldata.size
    idx = 0
    s = cd[324] + 36
    t = ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + 354
    while idx < ('cd', 324).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[356] <= test266151307()
    require cd[356] + 35 < calldata.size
    if ('cd', 356).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 356).length) + 324 < 323 or ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 324 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + 323] = ('cd', 356).length
    require cd[356] + (32 * ('cd', 356).length) + 36 <= calldata.size
    idx = 0
    s = cd[356] + 36
    t = ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + 355
    while idx < ('cd', 356).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 < 100:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 356 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 100
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 452 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if ('cd', 260).length != ('cd', 292).length:
        revert with 0, 'Attribute length doesn't match'
    if ('cd', 324).length != ('cd', 356).length:
        revert with 0, 'Attribute address length doesn't match'
    if stor362[address(cd[4])]:
        revert with 0, 'Blacklisted'
    if not ownerOf[stor359[cd[100]][cd[132]]]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 324] = 0
    if ownerOf[stor359[cd[100]][cd[132]]] != sub_fb32c508Address:
        if not address(cd[4]):
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor353]:
            revert with 0, 'ERC721: token already minted'
        if stor362[address(cd[4])]:
            revert with 0, 'Blacklisted'
        if stor52[address(msg.sender)] >= stor51.length:
            revert with 0, 50
        if stor51[stor52[address(msg.sender)]].field_192 < 1000:
            if paused:
                revert with 0, 'Token transfer while paused'
        stor156[stor353] = tokenByIndex.length
        tokenByIndex.length++
        storBBA9[stor155.length] = stor353
        if address(cd[4]):
            if address(cd[4]):
                if not address(cd[4]):
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(cd[4])][stor106[address(cd[4])]] = stor353
                stor154[stor353] = balanceOf[address(cd[4])]
            if balanceOf[address(cd[4])] > -2:
                revert with 0, 17
            balanceOf[address(cd[4])]++
            ownerOf[stor353] = address(cd[4])
            emit Transfer(0, address(cd[4]), stor353);
            if ext_code.size(address(cd[4])):
                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 360] = msg.sender
                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 392] = 0
                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 424] = stor353
                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 456] = 128
                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 488] = 0
                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 520 len 0] = None
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor353, 128, 0
                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 356] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not cd[36]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len cd[36]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor156[stor353] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor156[stor353]] = tokenByIndex[tokenByIndex.length]
            stor156[stor155[stor155.length]] = stor156[stor353]
            stor156[stor353] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(cd[4])] > -2:
                revert with 0, 17
            balanceOf[address(cd[4])]++
            ownerOf[stor353] = address(cd[4])
            emit Transfer(0, address(cd[4]), stor353);
            if ext_code.size(address(cd[4])):
                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 360] = msg.sender
                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 392] = 0
                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 424] = stor353
                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 456] = 128
                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 488] = 0
                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 520 len 0] = None
                var133001 = 0
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor353, 128, 0
                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 356] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not cd[36]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len cd[36]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        block[stor353].field_0 = stor353
        block[stor353].field_256 = cd[68]
        block[stor353].field_512 = cd[100]
        block[stor353].field_768 = cd[132]
        block[stor353].field_1024 = uint32(cd[164])
        block[stor353].field_1056 = uint32(cd[196])
        block[stor353].field_1088 = 0
        sub_fbb06418[cd[100]][cd[132]] = stor353
        stor353++
        idx = 0
        while idx < ('cd', 260).length:
            if idx >= ('cd', 292).length:
                revert with 0, 50
            if idx >= ('cd', 260).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 352]
            mem[32] = sha3(stor353, 357)
            sub_d4a61aca[stor353][mem[(32 * idx) + 352]] = mem[(32 * idx) + ceil32(32 * ('cd', 260).length) + 353]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < ('cd', 324).length:
            if idx >= ('cd', 356).length:
                revert with 0, 50
            if idx >= ('cd', 324).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + 354]
            mem[32] = sha3(stor353, 358)
            sub_a40e5784[stor353][mem[(32 * idx) + ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + 354]] = mem[(32 * idx) + ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + 367 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if not block[stor359[cd[100]][cd[132]]].field_256:
            if not address(cd[4]):
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor353]:
                revert with 0, 'ERC721: token already minted'
            if stor362[address(cd[4])]:
                revert with 0, 'Blacklisted'
            if stor52[address(msg.sender)] >= stor51.length:
                revert with 0, 50
            if stor51[stor52[address(msg.sender)]].field_192 < 1000:
                if paused:
                    revert with 0, 'Token transfer while paused'
            stor156[stor353] = tokenByIndex.length
            tokenByIndex.length++
            storBBA9[stor155.length] = stor353
            if address(cd[4]):
                if address(cd[4]):
                    if not address(cd[4]):
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(cd[4])][stor106[address(cd[4])]] = stor353
                    stor154[stor353] = balanceOf[address(cd[4])]
                if balanceOf[address(cd[4])] > -2:
                    revert with 0, 17
                balanceOf[address(cd[4])]++
                ownerOf[stor353] = address(cd[4])
                emit Transfer(0, address(cd[4]), stor353);
                if ext_code.size(address(cd[4])):
                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 360] = msg.sender
                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 392] = 0
                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 424] = stor353
                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 456] = 128
                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 488] = 0
                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 520 len 0] = None
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor353, 128, 0
                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 356] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not cd[36]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len cd[36]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor156[stor353] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor156[stor353]] = tokenByIndex[tokenByIndex.length]
                stor156[stor155[stor155.length]] = stor156[stor353]
                stor156[stor353] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(cd[4])] > -2:
                    revert with 0, 17
                balanceOf[address(cd[4])]++
                ownerOf[stor353] = address(cd[4])
                emit Transfer(0, address(cd[4]), stor353);
                if ext_code.size(address(cd[4])):
                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 360] = msg.sender
                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 392] = 0
                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 424] = stor353
                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 456] = 128
                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 488] = 0
                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 520 len 0] = None
                    var134001 = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor353, 128, 0
                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 356] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not cd[36]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len cd[36]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            block[stor353].field_0 = stor353
            block[stor353].field_256 = cd[68]
            block[stor353].field_512 = cd[100]
            block[stor353].field_768 = cd[132]
            block[stor353].field_1024 = uint32(cd[164])
            block[stor353].field_1056 = uint32(cd[196])
            block[stor353].field_1088 = 0
            sub_fbb06418[cd[100]][cd[132]] = stor353
            stor353++
            idx = 0
            while idx < ('cd', 260).length:
                if idx >= ('cd', 292).length:
                    revert with 0, 50
                if idx >= ('cd', 260).length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 352]
                mem[32] = sha3(stor353, 357)
                sub_d4a61aca[stor353][mem[(32 * idx) + 352]] = mem[(32 * idx) + ceil32(32 * ('cd', 260).length) + 353]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < ('cd', 324).length:
                if idx >= ('cd', 356).length:
                    revert with 0, 50
                if idx >= ('cd', 324).length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + 354]
                mem[32] = sha3(stor353, 358)
                sub_a40e5784[stor353][mem[(32 * idx) + ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + 354]] = mem[(32 * idx) + ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + 367 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if not ownerOf[stor359[cd[100]][cd[132]]]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[stor359[cd[100]][cd[132]]] != sub_fb32c508Address:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not address(cd[4]):
                revert with 0, 'ERC721: transfer to the zero address'
            if stor362[address(cd[4])]:
                revert with 0, 'Blacklisted'
            if stor52[address(msg.sender)] >= stor51.length:
                revert with 0, 50
            if stor51[stor52[address(msg.sender)]].field_192 < 1000:
                if paused:
                    revert with 0, 'Token transfer while paused'
            if not sub_fb32c508Address:
                stor156[stor359[cd[100]][cd[132]]] = tokenByIndex.length
                tokenByIndex.length++
                storBBA9[stor155.length] = sub_fbb06418[cd[100]][cd[132]]
                if address(cd[4]):
                    if address(cd[4]) == sub_fb32c508Address:
                        approved[stor359[cd[100]][cd[132]]] = 0
                        if not ownerOf[stor359[cd[100]][cd[132]]]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[stor359[cd[100]][cd[132]]], 0, sub_fbb06418[cd[100]][cd[132]]);
                        if balanceOf[stor364] < 1:
                            revert with 0, 17
                        balanceOf[stor364]--
                        if balanceOf[address(cd[4])] > -2:
                            revert with 0, 17
                        balanceOf[address(cd[4])]++
                        ownerOf[stor359[cd[100]][cd[132]]] = address(cd[4])
                        emit Transfer(sub_fb32c508Address, address(cd[4]), sub_fbb06418[cd[100]][cd[132]]);
                        if ext_code.size(address(cd[4])):
                            mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 360] = msg.sender
                            mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 392] = sub_fb32c508Address
                            mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 424] = sub_fbb06418[cd[100]][cd[132]]
                            mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 456] = 128
                            mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 488] = 0
                            mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 520 len 0] = None
                            var136001 = 0
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, sub_fb32c508Address, sub_fbb06418[cd[100]][cd[132]], 128, 0
                            mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 356] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not cd[36]:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with memory
                                      from 128
                                       len cd[36]
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        if not address(cd[4]):
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(cd[4])][stor106[address(cd[4])]] = sub_fbb06418[cd[100]][cd[132]]
                        stor154[stor359[cd[100]][cd[132]]] = balanceOf[address(cd[4])]
                        approved[stor359[cd[100]][cd[132]]] = 0
                        if not ownerOf[stor359[cd[100]][cd[132]]]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[stor359[cd[100]][cd[132]]], 0, sub_fbb06418[cd[100]][cd[132]]);
                        if balanceOf[stor364] < 1:
                            revert with 0, 17
                        balanceOf[stor364]--
                        if balanceOf[address(cd[4])] > -2:
                            revert with 0, 17
                        balanceOf[address(cd[4])]++
                        ownerOf[stor359[cd[100]][cd[132]]] = address(cd[4])
                        emit Transfer(sub_fb32c508Address, address(cd[4]), sub_fbb06418[cd[100]][cd[132]]);
                        if ext_code.size(address(cd[4])):
                            mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 360] = msg.sender
                            mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 392] = sub_fb32c508Address
                            mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 424] = sub_fbb06418[cd[100]][cd[132]]
                            mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 456] = 128
                            mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 488] = 0
                            mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 520 len 0] = None
                            var141001 = 0
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, sub_fb32c508Address, sub_fbb06418[cd[100]][cd[132]], 128, 0
                            mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 356] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not cd[36]:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with memory
                                      from 128
                                       len cd[36]
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor156[stor359[cd[100]][cd[132]]] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor156[stor359[cd[100]][cd[132]]]] = tokenByIndex[tokenByIndex.length]
                    stor156[stor155[stor155.length]] = stor156[stor359[cd[100]][cd[132]]]
                    stor156[stor359[cd[100]][cd[132]]] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    approved[stor359[cd[100]][cd[132]]] = 0
                    if not ownerOf[stor359[cd[100]][cd[132]]]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[stor359[cd[100]][cd[132]]], 0, sub_fbb06418[cd[100]][cd[132]]);
                    if balanceOf[stor364] < 1:
                        revert with 0, 17
                    balanceOf[stor364]--
                    if balanceOf[address(cd[4])] > -2:
                        revert with 0, 17
                    balanceOf[address(cd[4])]++
                    ownerOf[stor359[cd[100]][cd[132]]] = address(cd[4])
                    emit Transfer(sub_fb32c508Address, address(cd[4]), sub_fbb06418[cd[100]][cd[132]]);
                    if ext_code.size(address(cd[4])):
                        mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 360] = msg.sender
                        mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 392] = sub_fb32c508Address
                        mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 424] = sub_fbb06418[cd[100]][cd[132]]
                        mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 456] = 128
                        mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 488] = 0
                        mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 520 len 0] = None
                        var143001 = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, sub_fb32c508Address, sub_fbb06418[cd[100]][cd[132]], 128, 0
                        mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 356] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not cd[36]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len cd[36]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if sub_fb32c508Address == address(cd[4]):
                    if address(cd[4]):
                        if address(cd[4]) == sub_fb32c508Address:
                            approved[stor359[cd[100]][cd[132]]] = 0
                            if not ownerOf[stor359[cd[100]][cd[132]]]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[stor359[cd[100]][cd[132]]], 0, sub_fbb06418[cd[100]][cd[132]]);
                            if balanceOf[stor364] < 1:
                                revert with 0, 17
                            balanceOf[stor364]--
                            if balanceOf[address(cd[4])] > -2:
                                revert with 0, 17
                            balanceOf[address(cd[4])]++
                            ownerOf[stor359[cd[100]][cd[132]]] = address(cd[4])
                            emit Transfer(sub_fb32c508Address, address(cd[4]), sub_fbb06418[cd[100]][cd[132]]);
                            if ext_code.size(address(cd[4])):
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 360] = msg.sender
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 392] = sub_fb32c508Address
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 424] = sub_fbb06418[cd[100]][cd[132]]
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 456] = 128
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 488] = 0
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 520 len 0] = None
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_fb32c508Address, sub_fbb06418[cd[100]][cd[132]], 128, 0
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 356] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not cd[36]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len cd[36]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if not address(cd[4]):
                                revert with 0, 'ERC721: balance query for the zero address'
                            tokenOfOwnerByIndex[address(cd[4])][stor106[address(cd[4])]] = sub_fbb06418[cd[100]][cd[132]]
                            stor154[stor359[cd[100]][cd[132]]] = balanceOf[address(cd[4])]
                            approved[stor359[cd[100]][cd[132]]] = 0
                            if not ownerOf[stor359[cd[100]][cd[132]]]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[stor359[cd[100]][cd[132]]], 0, sub_fbb06418[cd[100]][cd[132]]);
                            if balanceOf[stor364] < 1:
                                revert with 0, 17
                            balanceOf[stor364]--
                            if balanceOf[address(cd[4])] > -2:
                                revert with 0, 17
                            balanceOf[address(cd[4])]++
                            ownerOf[stor359[cd[100]][cd[132]]] = address(cd[4])
                            emit Transfer(sub_fb32c508Address, address(cd[4]), sub_fbb06418[cd[100]][cd[132]]);
                            if ext_code.size(address(cd[4])):
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 360] = msg.sender
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 392] = sub_fb32c508Address
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 424] = sub_fbb06418[cd[100]][cd[132]]
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 456] = 128
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 488] = 0
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 520 len 0] = None
                                var140001 = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_fb32c508Address, sub_fbb06418[cd[100]][cd[132]], 128, 0
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 356] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not cd[36]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len cd[36]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        if tokenByIndex.length < 1:
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor156[stor359[cd[100]][cd[132]]] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor156[stor359[cd[100]][cd[132]]]] = tokenByIndex[tokenByIndex.length]
                        stor156[stor155[stor155.length]] = stor156[stor359[cd[100]][cd[132]]]
                        stor156[stor359[cd[100]][cd[132]]] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                        approved[stor359[cd[100]][cd[132]]] = 0
                        if not ownerOf[stor359[cd[100]][cd[132]]]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[stor359[cd[100]][cd[132]]], 0, sub_fbb06418[cd[100]][cd[132]]);
                        if balanceOf[stor364] < 1:
                            revert with 0, 17
                        balanceOf[stor364]--
                        if balanceOf[address(cd[4])] > -2:
                            revert with 0, 17
                        balanceOf[address(cd[4])]++
                        ownerOf[stor359[cd[100]][cd[132]]] = address(cd[4])
                        emit Transfer(sub_fb32c508Address, address(cd[4]), sub_fbb06418[cd[100]][cd[132]]);
                        if ext_code.size(address(cd[4])):
                            mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 360] = msg.sender
                            mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 392] = sub_fb32c508Address
                            mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 424] = sub_fbb06418[cd[100]][cd[132]]
                            mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 456] = 128
                            mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 488] = 0
                            mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 520 len 0] = None
                            var142001 = 0
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, sub_fb32c508Address, sub_fbb06418[cd[100]][cd[132]], 128, 0
                            mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 356] = ext_call.return_data[0]
                            if not ext_call.success:
                                if not return_data.size:
                                    if not cd[36]:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with memory
                                      from 128
                                       len cd[36]
                                if not return_data.size:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not sub_fb32c508Address:
                        revert with 0, 'ERC721: balance query for the zero address'
                    if balanceOf[stor364] < 1:
                        revert with 0, 17
                    if balanceOf[stor364] - 1 == stor154[stor359[cd[100]][cd[132]]]:
                        stor154[stor359[cd[100]][cd[132]]] = 0
                        tokenOfOwnerByIndex[stor364][stor106[stor364] - 1] = 0
                        if address(cd[4]):
                            if address(cd[4]) == sub_fb32c508Address:
                                approved[stor359[cd[100]][cd[132]]] = 0
                                if not ownerOf[stor359[cd[100]][cd[132]]]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                emit Approval(ownerOf[stor359[cd[100]][cd[132]]], 0, sub_fbb06418[cd[100]][cd[132]]);
                                if balanceOf[stor364] < 1:
                                    revert with 0, 17
                                balanceOf[stor364]--
                                if balanceOf[address(cd[4])] > -2:
                                    revert with 0, 17
                                balanceOf[address(cd[4])]++
                                ownerOf[stor359[cd[100]][cd[132]]] = address(cd[4])
                                emit Transfer(sub_fb32c508Address, address(cd[4]), sub_fbb06418[cd[100]][cd[132]]);
                                if ext_code.size(address(cd[4])):
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 360] = msg.sender
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 392] = sub_fb32c508Address
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 424] = sub_fbb06418[cd[100]][cd[132]]
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 456] = 128
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 488] = 0
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 520 len 0] = None
                                    var144001 = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_fb32c508Address, sub_fbb06418[cd[100]][cd[132]], 128, 0
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 356] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        if not return_data.size:
                                            if not cd[36]:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            revert with memory
                                              from 128
                                               len cd[36]
                                        if not return_data.size:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if not address(cd[4]):
                                    revert with 0, 'ERC721: balance query for the zero address'
                                tokenOfOwnerByIndex[address(cd[4])][stor106[address(cd[4])]] = sub_fbb06418[cd[100]][cd[132]]
                                stor154[stor359[cd[100]][cd[132]]] = balanceOf[address(cd[4])]
                                approved[stor359[cd[100]][cd[132]]] = 0
                                if not ownerOf[stor359[cd[100]][cd[132]]]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                emit Approval(ownerOf[stor359[cd[100]][cd[132]]], 0, sub_fbb06418[cd[100]][cd[132]]);
                                if balanceOf[stor364] < 1:
                                    revert with 0, 17
                                balanceOf[stor364]--
                                if balanceOf[address(cd[4])] > -2:
                                    revert with 0, 17
                                balanceOf[address(cd[4])]++
                                ownerOf[stor359[cd[100]][cd[132]]] = address(cd[4])
                                emit Transfer(sub_fb32c508Address, address(cd[4]), sub_fbb06418[cd[100]][cd[132]]);
                                if ext_code.size(address(cd[4])):
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 360] = msg.sender
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 392] = sub_fb32c508Address
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 424] = sub_fbb06418[cd[100]][cd[132]]
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 456] = 128
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 488] = 0
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 520 len 0] = None
                                    var149001 = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_fb32c508Address, sub_fbb06418[cd[100]][cd[132]], 128, 0
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 356] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        if not return_data.size:
                                            if not cd[36]:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            revert with memory
                                              from 128
                                               len cd[36]
                                        if not return_data.size:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 0, 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 0, 50
                            if stor156[stor359[cd[100]][cd[132]]] >= tokenByIndex.length:
                                revert with 0, 50
                            tokenByIndex[stor156[stor359[cd[100]][cd[132]]]] = tokenByIndex[tokenByIndex.length]
                            stor156[stor155[stor155.length]] = stor156[stor359[cd[100]][cd[132]]]
                            stor156[stor359[cd[100]][cd[132]]] = 0
                            if not tokenByIndex.length:
                                revert with 0, 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            approved[stor359[cd[100]][cd[132]]] = 0
                            if not ownerOf[stor359[cd[100]][cd[132]]]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[stor359[cd[100]][cd[132]]], 0, sub_fbb06418[cd[100]][cd[132]]);
                            if balanceOf[stor364] < 1:
                                revert with 0, 17
                            balanceOf[stor364]--
                            if balanceOf[address(cd[4])] > -2:
                                revert with 0, 17
                            balanceOf[address(cd[4])]++
                            ownerOf[stor359[cd[100]][cd[132]]] = address(cd[4])
                            emit Transfer(sub_fb32c508Address, address(cd[4]), sub_fbb06418[cd[100]][cd[132]]);
                            if ext_code.size(address(cd[4])):
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 360] = msg.sender
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 392] = sub_fb32c508Address
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 424] = sub_fbb06418[cd[100]][cd[132]]
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 456] = 128
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 488] = 0
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 520 len 0] = None
                                var151001 = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_fb32c508Address, sub_fbb06418[cd[100]][cd[132]], 128, 0
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 356] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not cd[36]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len cd[36]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    else:
                        tokenOfOwnerByIndex[stor364][stor154[stor359[cd[100]][cd[132]]]] = tokenOfOwnerByIndex[stor364][stor106[stor364] - 1]
                        stor154[stor153[stor364][stor106[stor364] - 1]] = stor154[stor359[cd[100]][cd[132]]]
                        stor154[stor359[cd[100]][cd[132]]] = 0
                        tokenOfOwnerByIndex[stor364][stor106[stor364] - 1] = 0
                        if address(cd[4]):
                            if address(cd[4]) == sub_fb32c508Address:
                                approved[stor359[cd[100]][cd[132]]] = 0
                                if not ownerOf[stor359[cd[100]][cd[132]]]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                emit Approval(ownerOf[stor359[cd[100]][cd[132]]], 0, sub_fbb06418[cd[100]][cd[132]]);
                                if balanceOf[stor364] < 1:
                                    revert with 0, 17
                                balanceOf[stor364]--
                                if balanceOf[address(cd[4])] > -2:
                                    revert with 0, 17
                                balanceOf[address(cd[4])]++
                                ownerOf[stor359[cd[100]][cd[132]]] = address(cd[4])
                                emit Transfer(sub_fb32c508Address, address(cd[4]), sub_fbb06418[cd[100]][cd[132]]);
                                if ext_code.size(address(cd[4])):
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 360] = msg.sender
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 392] = sub_fb32c508Address
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 424] = sub_fbb06418[cd[100]][cd[132]]
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 456] = 128
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 488] = 0
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 520 len 0] = None
                                    var145001 = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_fb32c508Address, sub_fbb06418[cd[100]][cd[132]], 128, 0
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 356] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        if not return_data.size:
                                            if not cd[36]:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            revert with memory
                                              from 128
                                               len cd[36]
                                        if not return_data.size:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                if not address(cd[4]):
                                    revert with 0, 'ERC721: balance query for the zero address'
                                tokenOfOwnerByIndex[address(cd[4])][stor106[address(cd[4])]] = sub_fbb06418[cd[100]][cd[132]]
                                stor154[stor359[cd[100]][cd[132]]] = balanceOf[address(cd[4])]
                                approved[stor359[cd[100]][cd[132]]] = 0
                                if not ownerOf[stor359[cd[100]][cd[132]]]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                emit Approval(ownerOf[stor359[cd[100]][cd[132]]], 0, sub_fbb06418[cd[100]][cd[132]]);
                                if balanceOf[stor364] < 1:
                                    revert with 0, 17
                                balanceOf[stor364]--
                                if balanceOf[address(cd[4])] > -2:
                                    revert with 0, 17
                                balanceOf[address(cd[4])]++
                                ownerOf[stor359[cd[100]][cd[132]]] = address(cd[4])
                                emit Transfer(sub_fb32c508Address, address(cd[4]), sub_fbb06418[cd[100]][cd[132]]);
                                if ext_code.size(address(cd[4])):
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 360] = msg.sender
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 392] = sub_fb32c508Address
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 424] = sub_fbb06418[cd[100]][cd[132]]
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 456] = 128
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 488] = 0
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 520 len 0] = None
                                    var150001 = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0x150b7a02 with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_fb32c508Address, sub_fbb06418[cd[100]][cd[132]], 128, 0
                                    mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 356] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        if not return_data.size:
                                            if not cd[36]:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                            revert with memory
                                              from 128
                                               len cd[36]
                                        if not return_data.size:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        else:
                            if tokenByIndex.length < 1:
                                revert with 0, 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 0, 50
                            if stor156[stor359[cd[100]][cd[132]]] >= tokenByIndex.length:
                                revert with 0, 50
                            tokenByIndex[stor156[stor359[cd[100]][cd[132]]]] = tokenByIndex[tokenByIndex.length]
                            stor156[stor155[stor155.length]] = stor156[stor359[cd[100]][cd[132]]]
                            stor156[stor359[cd[100]][cd[132]]] = 0
                            if not tokenByIndex.length:
                                revert with 0, 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            approved[stor359[cd[100]][cd[132]]] = 0
                            if not ownerOf[stor359[cd[100]][cd[132]]]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[stor359[cd[100]][cd[132]]], 0, sub_fbb06418[cd[100]][cd[132]]);
                            if balanceOf[stor364] < 1:
                                revert with 0, 17
                            balanceOf[stor364]--
                            if balanceOf[address(cd[4])] > -2:
                                revert with 0, 17
                            balanceOf[address(cd[4])]++
                            ownerOf[stor359[cd[100]][cd[132]]] = address(cd[4])
                            emit Transfer(sub_fb32c508Address, address(cd[4]), sub_fbb06418[cd[100]][cd[132]]);
                            if ext_code.size(address(cd[4])):
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 360] = msg.sender
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 392] = sub_fb32c508Address
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 424] = sub_fbb06418[cd[100]][cd[132]]
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 456] = 128
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 488] = 0
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 520 len 0] = None
                                var152001 = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_fb32c508Address, sub_fbb06418[cd[100]][cd[132]], 128, 0
                                mem[ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 356] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if not return_data.size:
                                        if not cd[36]:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                        revert with memory
                                          from 128
                                           len cd[36]
                                    if not return_data.size:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            block[stor359[cd[100]][cd[132]]].field_256 = cd[68]
            block[stor359[cd[100]][cd[132]]].field_512 = cd[100]
            block[stor359[cd[100]][cd[132]]].field_768 = cd[132]
            block[stor359[cd[100]][cd[132]]].field_0 = sub_fbb06418[cd[100]][cd[132]]
            block[stor359[cd[100]][cd[132]]].field_1024 = uint32(cd[164])
            block[stor359[cd[100]][cd[132]]].field_1056 = uint32(cd[196])
            block[stor359[cd[100]][cd[132]]].field_1088 = 0
            block[stor359[cd[100]][cd[132]]].field_1096 = Mask(184, 8, bool(cd[228])) >> 8
            idx = 0
            while idx < ('cd', 260).length:
                if idx >= ('cd', 292).length:
                    revert with 0, 50
                if idx >= ('cd', 260).length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 352]
                mem[32] = sha3(cd[36], 357)
                sub_d4a61aca[cd[36]][mem[(32 * idx) + 352]] = mem[(32 * idx) + ceil32(32 * ('cd', 260).length) + 353]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < ('cd', 324).length:
                if idx >= ('cd', 356).length:
                    revert with 0, 50
                if idx >= ('cd', 324).length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + 354]
                mem[32] = sha3(cd[36], 358)
                sub_a40e5784[cd[36]][mem[(32 * idx) + ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + 354]] = mem[(32 * idx) + ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + 367 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    emit 0x4c214000: chainId, address(cd[4]), sub_fbb06418[cd[100]][cd[132]]
}

function sub_78e3f414(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    mem[96] = 42
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[128 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    mem[129 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    idx = 41
    s = address(arg2)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if address(arg2) + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 64] = 0, mem[129 len 63]
    mem[266] = 0x206973206e6f742073656e646572000000000000000000000000000000000000
    mem[192] = 56
    if address(arg2) != msg.sender:
        revert with 0, 32, 56, mem[160], 0, 0x206973206e6f742073656e646572, 0, 0 >> 192, 0
    mem[32] = 52
    if stor52[address(arg2)] >= stor51.length:
        revert with 0, 50
    if stor52[address(arg2)] >= stor51.length:
        revert with 0, 50
    mem[0] = 51
    mem[280] = 42
    mem[312 len 42] = call.data[calldata.size len 42]
    mem[312 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    mem[313 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    idx = 41
    s = stor51[stor52[address(arg2)]].field_0
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 312 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if stor51[stor52[address(arg2)]].field_0 + 10240:
        revert with 0, 'Strings: hex length insufficient'
    if stor51[stor52[address(arg2)]].field_192 < uint32(arg1):
        if not uint32(arg1):
            mem[472 len 64] = 0, mem[313 len 63]
            var81001 = 64
            mem[514] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
            mem[531] = 0x3078303000000000000000000000000000000000000000000000000000000000
            mem[535] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[539] = 32
            mem[571] = mem[440]
            mem[603 len ceil32(mem[440])] = mem[472 len ceil32(mem[440])]
            if ceil32(mem[440]) > mem[440]:
                mem[mem[440] + 603] = 0
            revert with 0, 32, mem[440], mem[603 len ceil32(mem[440])]
        s = 0
        idx = uint32(arg1)
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = Mask(248, 0, idx) * 0.00390625
            continue 
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 2 > !(2 * s):
            revert with 0, 17
        if (2 * s) + 2 > test266151307():
            revert with 0, 65
        mem[376] = (2 * s) + 2
        mem[64] = floor32((2 * s) + 33) + 408
        if not (2 * s) + 2:
            if 0 >= (2 * s) + 2:
                revert with 0, 50
            mem[408 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= (2 * s) + 2:
                revert with 0, 50
            mem[409 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[376]:
                    revert with 0, 50
                mem[idx + 408 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _750 = mem[64]
            _774 = mem[280]
            mem[mem[64] + 32 len ceil32(mem[280])] = mem[312 len ceil32(mem[280])]
            mem[mem[64] + _774 + 32] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
            if ceil32(_774) <= _774:
                _1174 = mem[376]
                mem[mem[64] + _774 + 49 len ceil32(mem[376])] = mem[408 len ceil32(mem[376])]
                if ceil32(_1174) <= _1174:
                    _1850 = mem[64]
                    mem[64] = _1174 + mem[64] + _774 + 49
                    mem[_1174 + _750 + _774 + 49] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1174 + _750 + _774 + 53] = 32
                    _1946 = mem[_1850]
                    mem[_1174 + _750 + _774 + 85] = mem[_1850]
                    mem[_1174 + _750 + _774 + 117 len ceil32(_1946)] = mem[_1850 + 32 len ceil32(_1946)]
                    if ceil32(_1946) > _1946:
                        mem[_1946 + _1174 + _750 + _774 + 117] = 0
                    revert with 0, 32, mem[_1174 + _750 + _774 + 85 len ceil32(_1946) + 32]
                mem[_1174 + mem[64] + _774 + 49] = 0
                _1851 = mem[64]
                mem[64] = _1174 + _750 + _774 + 49
                mem[_1174 + _750 + _774 + 49] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1174 + _750 + _774 + 53] = 32
                _1947 = mem[_1851]
                mem[_1174 + _750 + _774 + 85] = mem[_1851]
                mem[_1174 + _750 + _774 + 117 len ceil32(_1947)] = mem[_1851 + 32 len ceil32(_1947)]
                if ceil32(_1947) > _1947:
                    mem[_1947 + _1174 + _750 + _774 + 117] = 0
                revert with 0, 32, mem[_1174 + _750 + _774 + 85 len ceil32(_1947) + 32]
            _1175 = mem[376]
            mem[mem[64] + _774 + 49 len ceil32(mem[376])] = mem[408 len ceil32(mem[376])]
            if ceil32(_1175) <= _1175:
                _1852 = mem[64]
                mem[64] = _1175 + mem[64] + _774 + 49
                mem[_1175 + _750 + _774 + 49] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1175 + _750 + _774 + 53] = 32
                _1948 = mem[_1852]
                mem[_1175 + _750 + _774 + 85] = mem[_1852]
                mem[_1175 + _750 + _774 + 117 len ceil32(_1948)] = mem[_1852 + 32 len ceil32(_1948)]
                if ceil32(_1948) > _1948:
                    mem[_1948 + _1175 + _750 + _774 + 117] = 0
                revert with 0, 32, mem[_1175 + _750 + _774 + 85 len ceil32(_1948) + 32]
            mem[_1175 + mem[64] + _774 + 49] = 0
            _1853 = mem[64]
            mem[64] = _1175 + mem[64] + _774 + 49
            mem[_1175 + _750 + _774 + 49] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_1175 + _750 + _774 + 53] = 32
            _1949 = mem[_1853]
            mem[_1175 + _750 + _774 + 85] = mem[_1853]
            mem[_1175 + _750 + _774 + 117 len ceil32(_1949)] = mem[_1853 + 32 len ceil32(_1949)]
            if ceil32(_1949) > _1949:
                mem[_1949 + _1175 + _750 + _774 + 117] = 0
            revert with 0, 32, mem[_1175 + _750 + _774 + 85 len ceil32(_1949) + 32]
        mem[408 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
        if 0 >= (2 * s) + 2:
            revert with 0, 50
        mem[408 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if 1 >= (2 * s) + 2:
            revert with 0, 50
        mem[409 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 1 > !(2 * s):
            revert with 0, 17
        idx = (2 * s) + 1
        t = uint32(arg1)
        while idx > 1:
            if t % 16 >= 16:
                revert with 0, 50
            if idx >= mem[376]:
                revert with 0, 50
            mem[idx + 408 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            t = Mask(252, 0, t) * 0.0625
            continue 
        if t:
            revert with 0, 'Strings: hex length insufficient'
        _751 = mem[64]
        _775 = mem[280]
        mem[mem[64] + 32 len ceil32(mem[280])] = mem[312 len ceil32(mem[280])]
        mem[mem[64] + _775 + 32] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
        if ceil32(_775) <= _775:
            _1176 = mem[376]
            mem[mem[64] + _775 + 49 len ceil32(mem[376])] = mem[408 len ceil32(mem[376])]
            if ceil32(_1176) <= _1176:
                _1854 = mem[64]
                mem[64] = _1176 + mem[64] + _775 + 49
                mem[_1176 + _751 + _775 + 49] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1176 + _751 + _775 + 53] = 32
                _1950 = mem[_1854]
                mem[_1176 + _751 + _775 + 85] = mem[_1854]
                mem[_1176 + _751 + _775 + 117 len ceil32(_1950)] = mem[_1854 + 32 len ceil32(_1950)]
                if ceil32(_1950) > _1950:
                    mem[_1950 + _1176 + _751 + _775 + 117] = 0
                revert with 0, 32, mem[_1176 + _751 + _775 + 85 len ceil32(_1950) + 32]
            mem[_1176 + mem[64] + _775 + 49] = 0
            _1855 = mem[64]
            mem[64] = _1176 + mem[64] + _775 + 49
            mem[_1176 + _751 + _775 + 49] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_1176 + _751 + _775 + 53] = 32
            _1951 = mem[_1855]
            mem[_1176 + _751 + _775 + 85] = mem[_1855]
            mem[_1176 + _751 + _775 + 117 len ceil32(_1951)] = mem[_1855 + 32 len ceil32(_1951)]
            if ceil32(_1951) > _1951:
                mem[_1951 + _1176 + _751 + _775 + 117] = 0
            revert with 0, 32, mem[_1176 + _751 + _775 + 85 len ceil32(_1951) + 32]
        _1177 = mem[376]
        mem[mem[64] + _775 + 49 len ceil32(mem[376])] = mem[408 len ceil32(mem[376])]
        if ceil32(_1177) <= _1177:
            _1856 = mem[64]
            mem[64] = _1177 + mem[64] + _775 + 49
            mem[_1177 + _751 + _775 + 49] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_1177 + _751 + _775 + 53] = 32
            _1952 = mem[_1856]
            mem[_1177 + _751 + _775 + 85] = mem[_1856]
            mem[_1177 + _751 + _775 + 117 len ceil32(_1952)] = mem[_1856 + 32 len ceil32(_1952)]
            if ceil32(_1952) > _1952:
                mem[_1952 + _1177 + _751 + _775 + 117] = 0
            revert with 0, 32, mem[_1177 + _751 + _775 + 85 len ceil32(_1952) + 32]
        mem[_1177 + mem[64] + _775 + 49] = 0
        _1857 = mem[64]
        mem[64] = _1177 + mem[64] + _775 + 49
        mem[_1177 + _751 + _775 + 49] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_1177 + _751 + _775 + 53] = 32
        _1953 = mem[_1857]
        mem[_1177 + _751 + _775 + 85] = mem[_1857]
        mem[_1177 + _751 + _775 + 117 len ceil32(_1953)] = mem[_1857 + 32 len ceil32(_1953)]
        if ceil32(_1953) > _1953:
            mem[_1953 + _1177 + _751 + _775 + 117] = 0
        revert with 0, 32, mem[_1177 + _751 + _775 + 85 len ceil32(_1953) + 32]
    if not uint32(arg1):
        mem[376] = 4
        mem[408] = 0x3078303000000000000000000000000000000000000000000000000000000000
        mem[472 len 64] = 0, mem[313 len 63]
        var82001 = 64
        mem[514] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
        mem[531] = 0x3078303000000000000000000000000000000000000000000000000000000000
        mem[440] = 63
        mem[32] = 52
        if stor52[msg.sender] >= stor51.length:
            revert with 0, 50
        mem[0] = 51
        mem[535] = 42
        mem[567 len 42] = call.data[calldata.size len 42]
        mem[567 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        mem[568 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        idx = 41
        s = stor51[stor52[msg.sender]].field_0
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 567 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if stor51[stor52[msg.sender]].field_0 + 10240:
            revert with 0, 'Strings: hex length insufficient'
        if not uint32(arg1):
            var125001 = 64
            if uint32(arg1) > stor51[stor52[msg.sender]].field_192:
                revert with 0, 32, 61, mem[599 len 42], 0, 813183024, 0 >> 232, 0
            if stor52[address(arg2)] >= stor51.length:
                revert with 0, 50
            stor51[stor52[address(arg2)]].field_192 = 0
            emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
        s = 0
        idx = uint32(arg1)
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = Mask(248, 0, idx) * 0.00390625
            continue 
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 2 > !(2 * s):
            revert with 0, 17
        if (2 * s) + 2 > test266151307():
            revert with 0, 65
        mem[631] = (2 * s) + 2
        mem[64] = floor32((2 * s) + 33) + 663
        if not (2 * s) + 2:
            if 0 >= (2 * s) + 2:
                revert with 0, 50
            mem[663 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= (2 * s) + 2:
                revert with 0, 50
            mem[664 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[631]:
                    revert with 0, 50
                mem[idx + 663 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _3308 = mem[64]
            _3404 = mem[535]
            mem[mem[64] + 32 len ceil32(mem[535])] = mem[567 len ceil32(mem[535])]
            var150001 = ceil32(_3404)
            mem[mem[64] + _3404 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            if ceil32(_3404) <= _3404:
                _5102 = mem[631]
                mem[mem[64] + _3404 + 47 len ceil32(mem[631])] = mem[663 len ceil32(mem[631])]
                if ceil32(_5102) <= _5102:
                    _8250 = mem[64]
                    mem[mem[64]] = _5102 + _3404 + 15
                    mem[64] = _5102 + mem[64] + _3404 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = 0
                        emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_5102 + _3308 + _3404 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5102 + _3308 + _3404 + 51] = 32
                    _8908 = mem[_8250]
                    mem[_5102 + _3308 + _3404 + 83] = mem[_8250]
                    mem[_5102 + _3308 + _3404 + 115 len ceil32(_8908)] = mem[_8250 + 32 len ceil32(_8908)]
                    if ceil32(_8908) > _8908:
                        mem[_8908 + _5102 + _3308 + _3404 + 115] = 0
                    revert with 0, 32, mem[_5102 + _3308 + _3404 + 83 len ceil32(_8908) + 32]
                mem[_5102 + mem[64] + _3404 + 47] = 0
                _8251 = mem[64]
                mem[mem[64]] = _5102 + _3404 + 15
                mem[64] = _5102 + mem[64] + _3404 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_5102 + _3308 + _3404 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_5102 + _3308 + _3404 + 51] = 32
                _8911 = mem[_8251]
                mem[_5102 + _3308 + _3404 + 83] = mem[_8251]
                mem[_5102 + _3308 + _3404 + 115 len ceil32(_8911)] = mem[_8251 + 32 len ceil32(_8911)]
                if ceil32(_8911) > _8911:
                    mem[_8911 + _5102 + _3308 + _3404 + 115] = 0
                revert with 0, 32, mem[_5102 + _3308 + _3404 + 83 len ceil32(_8911) + 32]
            _5103 = mem[631]
            mem[mem[64] + _3404 + 47 len ceil32(mem[631])] = mem[663 len ceil32(mem[631])]
            if ceil32(_5103) <= _5103:
                _8252 = mem[64]
                mem[mem[64]] = _5103 + _3404 + 15
                mem[64] = _5103 + mem[64] + _3404 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_5103 + _3308 + _3404 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_5103 + _3308 + _3404 + 51] = 32
                _8914 = mem[_8252]
                mem[_5103 + _3308 + _3404 + 83] = mem[_8252]
                mem[_5103 + _3308 + _3404 + 115 len ceil32(_8914)] = mem[_8252 + 32 len ceil32(_8914)]
                if ceil32(_8914) > _8914:
                    mem[_8914 + _5103 + _3308 + _3404 + 115] = 0
                revert with 0, 32, mem[_5103 + _3308 + _3404 + 83 len ceil32(_8914) + 32]
            mem[_5103 + mem[64] + _3404 + 47] = 0
            _8253 = mem[64]
            mem[mem[64]] = _5103 + _3404 + 15
            mem[64] = _5103 + mem[64] + _3404 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = 0
                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_5103 + _3308 + _3404 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_5103 + _3308 + _3404 + 51] = 32
            _8917 = mem[_8253]
            mem[_5103 + _3308 + _3404 + 83] = mem[_8253]
            mem[_5103 + _3308 + _3404 + 115 len ceil32(_8917)] = mem[_8253 + 32 len ceil32(_8917)]
            if ceil32(_8917) > _8917:
                mem[_8917 + _5103 + _3308 + _3404 + 115] = 0
            revert with 0, 32, mem[_5103 + _3308 + _3404 + 83 len ceil32(_8917) + 32]
        mem[663 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
        if 0 >= (2 * s) + 2:
            revert with 0, 50
        mem[663 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if 1 >= (2 * s) + 2:
            revert with 0, 50
        mem[664 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 1 > !(2 * s):
            revert with 0, 17
        idx = (2 * s) + 1
        t = uint32(arg1)
        while idx > 1:
            if t % 16 >= 16:
                revert with 0, 50
            if idx >= mem[631]:
                revert with 0, 50
            mem[idx + 663 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            t = Mask(252, 0, t) * 0.0625
            continue 
        if t:
            revert with 0, 'Strings: hex length insufficient'
        _3309 = mem[64]
        _3405 = mem[535]
        mem[mem[64] + 32 len ceil32(mem[535])] = mem[567 len ceil32(mem[535])]
        var151001 = ceil32(_3405)
        mem[mem[64] + _3405 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
        if ceil32(_3405) <= _3405:
            _5104 = mem[631]
            mem[mem[64] + _3405 + 47 len ceil32(mem[631])] = mem[663 len ceil32(mem[631])]
            if ceil32(_5104) <= _5104:
                _8254 = mem[64]
                mem[mem[64]] = _5104 + _3405 + 15
                mem[64] = _5104 + mem[64] + _3405 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_5104 + _3309 + _3405 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_5104 + _3309 + _3405 + 51] = 32
                _8920 = mem[_8254]
                mem[_5104 + _3309 + _3405 + 83] = mem[_8254]
                mem[_5104 + _3309 + _3405 + 115 len ceil32(_8920)] = mem[_8254 + 32 len ceil32(_8920)]
                if ceil32(_8920) > _8920:
                    mem[_8920 + _5104 + _3309 + _3405 + 115] = 0
                revert with 0, 32, mem[_5104 + _3309 + _3405 + 83 len ceil32(_8920) + 32]
            mem[_5104 + mem[64] + _3405 + 47] = 0
            _8255 = mem[64]
            mem[mem[64]] = _5104 + _3309 + _3405 + -mem[64] + 15
            mem[64] = _5104 + _3309 + _3405 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = 0
                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_5104 + _3309 + _3405 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_5104 + _3309 + _3405 + 51] = 32
            _8923 = mem[_8255]
            mem[_5104 + _3309 + _3405 + 83] = mem[_8255]
            mem[_5104 + _3309 + _3405 + 115 len ceil32(_8923)] = mem[_8255 + 32 len ceil32(_8923)]
            if ceil32(_8923) > _8923:
                mem[_8923 + _5104 + _3309 + _3405 + 115] = 0
            revert with 0, 32, mem[_5104 + _3309 + _3405 + 83 len ceil32(_8923) + 32]
        _5105 = mem[631]
        mem[mem[64] + _3405 + 47 len ceil32(mem[631])] = mem[663 len ceil32(mem[631])]
        if ceil32(_5105) <= _5105:
            _8256 = mem[64]
            mem[mem[64]] = _5105 + _3405 + 15
            mem[64] = _5105 + mem[64] + _3405 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = 0
                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_5105 + _3309 + _3405 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_5105 + _3309 + _3405 + 51] = 32
            _8926 = mem[_8256]
            mem[_5105 + _3309 + _3405 + 83] = mem[_8256]
            mem[_5105 + _3309 + _3405 + 115 len ceil32(_8926)] = mem[_8256 + 32 len ceil32(_8926)]
            if ceil32(_8926) > _8926:
                mem[_8926 + _5105 + _3309 + _3405 + 115] = 0
            revert with 0, 32, mem[_5105 + _3309 + _3405 + 83 len ceil32(_8926) + 32]
        mem[_5105 + mem[64] + _3405 + 47] = 0
        _8257 = mem[64]
        mem[mem[64]] = _5105 + _3405 + 15
        mem[64] = _5105 + mem[64] + _3405 + 47
        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
            if stor52[address(arg2)] >= stor51.length:
                revert with 0, 50
            stor51[stor52[address(arg2)]].field_192 = 0
            emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
        mem[_5105 + _3309 + _3405 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_5105 + _3309 + _3405 + 51] = 32
        _8929 = mem[_8257]
        mem[_5105 + _3309 + _3405 + 83] = mem[_8257]
        mem[_5105 + _3309 + _3405 + 115 len ceil32(_8929)] = mem[_8257 + 32 len ceil32(_8929)]
        if ceil32(_8929) > _8929:
            mem[_8929 + _5105 + _3309 + _3405 + 115] = 0
        revert with 0, 32, mem[_5105 + _3309 + _3405 + 83 len ceil32(_8929) + 32]
    s = 0
    idx = uint32(arg1)
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = Mask(248, 0, idx) * 0.00390625
        continue 
    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 2 > !(2 * s):
        revert with 0, 17
    if (2 * s) + 2 > test266151307():
        revert with 0, 65
    mem[376] = (2 * s) + 2
    mem[64] = floor32((2 * s) + 33) + 408
    if not (2 * s) + 2:
        if 0 >= (2 * s) + 2:
            revert with 0, 50
        mem[408 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if 1 >= (2 * s) + 2:
            revert with 0, 50
        mem[409 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 1 > !(2 * s):
            revert with 0, 17
        idx = (2 * s) + 1
        t = uint32(arg1)
        while idx > 1:
            if t % 16 >= 16:
                revert with 0, 50
            if idx >= mem[376]:
                revert with 0, 50
            mem[idx + 408 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            t = Mask(252, 0, t) * 0.0625
            continue 
        if t:
            revert with 0, 'Strings: hex length insufficient'
        _756 = mem[64]
        _780 = mem[280]
        mem[mem[64] + 32 len ceil32(mem[280])] = mem[312 len ceil32(mem[280])]
        mem[mem[64] + _780 + 32] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
        if ceil32(_780) <= _780:
            _1178 = mem[376]
            mem[mem[64] + _780 + 49 len ceil32(mem[376])] = mem[408 len ceil32(mem[376])]
            mem[mem[64]] = _1178 + _780 + 17
            mem[32] = 52
            if stor52[msg.sender] >= stor51.length:
                revert with 0, 50
            mem[0] = 51
            mem[_1178 + mem[64] + _780 + 49] = 42
            mem[64] = _1178 + mem[64] + _780 + 145
            mem[_1178 + _756 + _780 + 81 len 42] = call.data[calldata.size len 42]
            mem[_1178 + _756 + _780 + 81 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            mem[_1178 + _756 + _780 + 82 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            idx = 41
            s = stor51[stor52[msg.sender]].field_0
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + _1178 + _756 + _780 + 81 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if stor51[stor52[msg.sender]].field_0 + 10240:
                revert with 0, 'Strings: hex length insufficient'
            if ceil32(_1178) <= _1178:
                if not uint32(arg1):
                    _3378 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3378] = 4
                    mem[_3378 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                    _3434 = mem[64]
                    mem[mem[64] + 32 len 64] = 0, mem[_1178 + _756 + _780 + 82 len 63]
                    var150001 = 64
                    mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                    mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 93] = 0
                    _8183 = mem[64]
                    mem[mem[64]] = 61
                    mem[64] = mem[64] + 93
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = 0
                        emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_3434 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3434 + 97] = 32
                    _8749 = mem[_8183]
                    mem[_3434 + 129] = mem[_8183]
                    mem[_3434 + 161 len ceil32(_8749)] = mem[_8183 + 32 len ceil32(_8749)]
                    if ceil32(_8749) > _8749:
                        mem[_8749 + _3434 + 161] = 0
                    revert with 0, 32, mem[_3434 + 129 len ceil32(_8749) + 32]
                s = 0
                idx = uint32(arg1)
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = Mask(248, 0, idx) * 0.00390625
                    continue 
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 > !(2 * s):
                    revert with 0, 17
                if (2 * s) + 2 > test266151307():
                    revert with 0, 65
                _5306 = mem[64]
                mem[mem[64]] = (2 * s) + 2
                mem[64] = mem[64] + floor32((2 * s) + 33) + 32
                if not (2 * s) + 2:
                    if 0 >= mem[_5306]:
                        revert with 0, 50
                    mem[_5306 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_5306]:
                        revert with 0, 50
                    mem[_5306 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 1 > !(2 * s):
                        revert with 0, 17
                    idx = (2 * s) + 1
                    t = uint32(arg1)
                    while idx > 1:
                        if t % 16 >= 16:
                            revert with 0, 50
                        if idx >= mem[_5306]:
                            revert with 0, 50
                        mem[idx + _5306 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        t = Mask(252, 0, t) * 0.0625
                        continue 
                    if t:
                        revert with 0, 'Strings: hex length insufficient'
                    _8178 = mem[64]
                    _8338 = mem[_1178 + _756 + _780 + 49]
                    mem[mem[64] + 32 len ceil32(mem[_1178 + _756 + _780 + 49])] = mem[_1178 + _756 + _780 + 81 len ceil32(mem[_1178 + _756 + _780 + 49])]
                    mem[mem[64] + _8338 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                    if ceil32(_8338) <= _8338:
                        _10818 = mem[_5306]
                        mem[mem[64] + _8338 + 47 len ceil32(mem[_5306])] = mem[_5306 + 32 len ceil32(mem[_5306])]
                        if ceil32(_10818) <= _10818:
                            _12450 = mem[64]
                            mem[mem[64]] = _10818 + _8338 + 15
                            mem[64] = _10818 + mem[64] + _8338 + 47
                            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                                if stor52[address(arg2)] >= stor51.length:
                                    revert with 0, 50
                                stor51[stor52[address(arg2)]].field_192 = 0
                                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                            mem[_10818 + _8178 + _8338 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_10818 + _8178 + _8338 + 51] = 32
                            _12964 = mem[_12450]
                            mem[_10818 + _8178 + _8338 + 83] = mem[_12450]
                            mem[_10818 + _8178 + _8338 + 115 len ceil32(_12964)] = mem[_12450 + 32 len ceil32(_12964)]
                            if ceil32(_12964) > _12964:
                                mem[_12964 + _10818 + _8178 + _8338 + 115] = 0
                            revert with 0, 32, mem[_10818 + _8178 + _8338 + 83 len ceil32(_12964) + 32]
                        mem[_10818 + mem[64] + _8338 + 47] = 0
                        _12451 = mem[64]
                        mem[mem[64]] = _10818 + _8178 + _8338 + -mem[64] + 15
                        mem[64] = _10818 + _8178 + _8338 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = 0
                            emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10818 + _8178 + _8338 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10818 + _8178 + _8338 + 51] = 32
                        _12967 = mem[_12451]
                        mem[_10818 + _8178 + _8338 + 83] = mem[_12451]
                        mem[_10818 + _8178 + _8338 + 115 len ceil32(_12967)] = mem[_12451 + 32 len ceil32(_12967)]
                        if ceil32(_12967) > _12967:
                            mem[_12967 + _10818 + _8178 + _8338 + 115] = 0
                        revert with 0, 32, mem[_10818 + _8178 + _8338 + 83 len ceil32(_12967) + 32]
                    _10819 = mem[_5306]
                    mem[mem[64] + _8338 + 47 len ceil32(mem[_5306])] = mem[_5306 + 32 len ceil32(mem[_5306])]
                    if ceil32(_10819) <= _10819:
                        _12452 = mem[64]
                        mem[mem[64]] = _10819 + _8338 + 15
                        mem[64] = _10819 + mem[64] + _8338 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = 0
                            emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10819 + _8178 + _8338 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10819 + _8178 + _8338 + 51] = 32
                        _12970 = mem[_12452]
                        mem[_10819 + _8178 + _8338 + 83] = mem[_12452]
                        mem[_10819 + _8178 + _8338 + 115 len ceil32(_12970)] = mem[_12452 + 32 len ceil32(_12970)]
                        if ceil32(_12970) > _12970:
                            mem[_12970 + _10819 + _8178 + _8338 + 115] = 0
                        revert with 0, 32, mem[_10819 + _8178 + _8338 + 83 len ceil32(_12970) + 32]
                    mem[_10819 + mem[64] + _8338 + 47] = 0
                    _12453 = mem[64]
                    mem[mem[64]] = _10819 + _8338 + 15
                    mem[64] = _10819 + mem[64] + _8338 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = 0
                        emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10819 + _8178 + _8338 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10819 + _8178 + _8338 + 51] = 32
                    _12973 = mem[_12453]
                    mem[_10819 + _8178 + _8338 + 83] = mem[_12453]
                    mem[_10819 + _8178 + _8338 + 115 len ceil32(_12973)] = mem[_12453 + 32 len ceil32(_12973)]
                    if ceil32(_12973) > _12973:
                        mem[_12973 + _10819 + _8178 + _8338 + 115] = 0
                    revert with 0, 32, mem[_10819 + _8178 + _8338 + 83 len ceil32(_12973) + 32]
                mem[_5306 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
                if 0 >= mem[_5306]:
                    revert with 0, 50
                mem[_5306 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_5306]:
                    revert with 0, 50
                mem[_5306 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * s):
                    revert with 0, 17
                idx = (2 * s) + 1
                t = uint32(arg1)
                while idx > 1:
                    if t % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_5306]:
                        revert with 0, 50
                    mem[idx + _5306 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    t = Mask(252, 0, t) * 0.0625
                    continue 
                if t:
                    revert with 0, 'Strings: hex length insufficient'
                _8179 = mem[64]
                _8339 = mem[_1178 + _756 + _780 + 49]
                mem[mem[64] + 32 len ceil32(mem[_1178 + _756 + _780 + 49])] = mem[_1178 + _756 + _780 + 81 len ceil32(mem[_1178 + _756 + _780 + 49])]
                mem[mem[64] + _8339 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                if ceil32(_8339) <= _8339:
                    _10820 = mem[_5306]
                    mem[mem[64] + _8339 + 47 len ceil32(mem[_5306])] = mem[_5306 + 32 len ceil32(mem[_5306])]
                    if ceil32(_10820) <= _10820:
                        _12454 = mem[64]
                        mem[mem[64]] = _10820 + _8339 + 15
                        mem[64] = _10820 + mem[64] + _8339 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = 0
                            emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10820 + _8179 + _8339 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10820 + _8179 + _8339 + 51] = 32
                        _12976 = mem[_12454]
                        mem[_10820 + _8179 + _8339 + 83] = mem[_12454]
                        mem[_10820 + _8179 + _8339 + 115 len ceil32(_12976)] = mem[_12454 + 32 len ceil32(_12976)]
                        if ceil32(_12976) > _12976:
                            mem[_12976 + _10820 + _8179 + _8339 + 115] = 0
                        revert with 0, 32, mem[_10820 + _8179 + _8339 + 83 len ceil32(_12976) + 32]
                    mem[_10820 + mem[64] + _8339 + 47] = 0
                    _12455 = mem[64]
                    mem[mem[64]] = _10820 + _8339 + 15
                    mem[64] = _10820 + mem[64] + _8339 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = 0
                        emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10820 + _8179 + _8339 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10820 + _8179 + _8339 + 51] = 32
                    _12979 = mem[_12455]
                    mem[_10820 + _8179 + _8339 + 83] = mem[_12455]
                    mem[_10820 + _8179 + _8339 + 115 len ceil32(_12979)] = mem[_12455 + 32 len ceil32(_12979)]
                    if ceil32(_12979) > _12979:
                        mem[_12979 + _10820 + _8179 + _8339 + 115] = 0
                    revert with 0, 32, mem[_10820 + _8179 + _8339 + 83 len ceil32(_12979) + 32]
                _10821 = mem[_5306]
                mem[mem[64] + _8339 + 47 len ceil32(mem[_5306])] = mem[_5306 + 32 len ceil32(mem[_5306])]
                if ceil32(_10821) <= _10821:
                    _12456 = mem[64]
                    mem[mem[64]] = _10821 + _8339 + 15
                    mem[64] = _10821 + mem[64] + _8339 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = 0
                        emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10821 + _8179 + _8339 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10821 + _8179 + _8339 + 51] = 32
                    _12982 = mem[_12456]
                    mem[_10821 + _8179 + _8339 + 83] = mem[_12456]
                    mem[_10821 + _8179 + _8339 + 115 len ceil32(_12982)] = mem[_12456 + 32 len ceil32(_12982)]
                    if ceil32(_12982) > _12982:
                        mem[_12982 + _10821 + _8179 + _8339 + 115] = 0
                    revert with 0, 32, mem[_10821 + _8179 + _8339 + 83 len ceil32(_12982) + 32]
                mem[_10821 + mem[64] + _8339 + 47] = 0
                _12457 = mem[64]
                mem[mem[64]] = _10821 + _8339 + 15
                mem[64] = _10821 + mem[64] + _8339 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10821 + _8179 + _8339 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10821 + _8179 + _8339 + 51] = 32
                _12985 = mem[_12457]
                mem[_10821 + _8179 + _8339 + 83] = mem[_12457]
                mem[_10821 + _8179 + _8339 + 115 len ceil32(_12985)] = mem[_12457 + 32 len ceil32(_12985)]
                if ceil32(_12985) > _12985:
                    mem[_12985 + _10821 + _8179 + _8339 + 115] = 0
                revert with 0, 32, mem[_10821 + _8179 + _8339 + 83 len ceil32(_12985) + 32]
            if not uint32(arg1):
                _3379 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3379] = 4
                mem[_3379 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                _3435 = mem[64]
                mem[mem[64] + 32 len 64] = 0, mem[_1178 + _756 + _780 + 82 len 63]
                var150001 = 64
                mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 93] = 0
                _8189 = mem[64]
                mem[mem[64]] = 61
                mem[64] = mem[64] + 93
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_3435 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3435 + 97] = 32
                _8761 = mem[_8189]
                mem[_3435 + 129] = mem[_8189]
                mem[_3435 + 161 len ceil32(_8761)] = mem[_8189 + 32 len ceil32(_8761)]
                if ceil32(_8761) > _8761:
                    mem[_8761 + _3435 + 161] = 0
                revert with 0, 32, mem[_3435 + 129 len ceil32(_8761) + 32]
            s = 0
            idx = uint32(arg1)
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = Mask(248, 0, idx) * 0.00390625
                continue 
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 > !(2 * s):
                revert with 0, 17
            if (2 * s) + 2 > test266151307():
                revert with 0, 65
            _5311 = mem[64]
            mem[mem[64]] = (2 * s) + 2
            mem[64] = mem[64] + floor32((2 * s) + 33) + 32
            if not (2 * s) + 2:
                if 0 >= mem[_5311]:
                    revert with 0, 50
                mem[_5311 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_5311]:
                    revert with 0, 50
                mem[_5311 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * s):
                    revert with 0, 17
                idx = (2 * s) + 1
                t = uint32(arg1)
                while idx > 1:
                    if t % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_5311]:
                        revert with 0, 50
                    mem[idx + _5311 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    t = Mask(252, 0, t) * 0.0625
                    continue 
                if t:
                    revert with 0, 'Strings: hex length insufficient'
                _8184 = mem[64]
                _8344 = mem[_1178 + _756 + _780 + 49]
                mem[mem[64] + 32 len ceil32(mem[_1178 + _756 + _780 + 49])] = mem[_1178 + _756 + _780 + 81 len ceil32(mem[_1178 + _756 + _780 + 49])]
                mem[mem[64] + _8344 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                if ceil32(_8344) <= _8344:
                    _10822 = mem[_5311]
                    mem[mem[64] + _8344 + 47 len ceil32(mem[_5311])] = mem[_5311 + 32 len ceil32(mem[_5311])]
                    if ceil32(_10822) <= _10822:
                        _12458 = mem[64]
                        mem[mem[64]] = _10822 + _8344 + 15
                        mem[64] = _10822 + mem[64] + _8344 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = 0
                            emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10822 + _8184 + _8344 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10822 + _8184 + _8344 + 51] = 32
                        _12988 = mem[_12458]
                        mem[_10822 + _8184 + _8344 + 83] = mem[_12458]
                        mem[_10822 + _8184 + _8344 + 115 len ceil32(_12988)] = mem[_12458 + 32 len ceil32(_12988)]
                        if ceil32(_12988) > _12988:
                            mem[_12988 + _10822 + _8184 + _8344 + 115] = 0
                        revert with 0, 32, mem[_10822 + _8184 + _8344 + 83 len ceil32(_12988) + 32]
                    mem[_10822 + mem[64] + _8344 + 47] = 0
                    _12459 = mem[64]
                    mem[mem[64]] = _10822 + _8184 + _8344 + -mem[64] + 15
                    mem[64] = _10822 + _8184 + _8344 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = 0
                        emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10822 + _8184 + _8344 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10822 + _8184 + _8344 + 51] = 32
                    _12991 = mem[_12459]
                    mem[_10822 + _8184 + _8344 + 83] = mem[_12459]
                    mem[_10822 + _8184 + _8344 + 115 len ceil32(_12991)] = mem[_12459 + 32 len ceil32(_12991)]
                    if ceil32(_12991) > _12991:
                        mem[_12991 + _10822 + _8184 + _8344 + 115] = 0
                    revert with 0, 32, mem[_10822 + _8184 + _8344 + 83 len ceil32(_12991) + 32]
                _10823 = mem[_5311]
                mem[mem[64] + _8344 + 47 len ceil32(mem[_5311])] = mem[_5311 + 32 len ceil32(mem[_5311])]
                if ceil32(_10823) <= _10823:
                    _12460 = mem[64]
                    mem[mem[64]] = _10823 + _8344 + 15
                    mem[64] = _10823 + mem[64] + _8344 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = 0
                        emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10823 + _8184 + _8344 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10823 + _8184 + _8344 + 51] = 32
                    _12994 = mem[_12460]
                    mem[_10823 + _8184 + _8344 + 83] = mem[_12460]
                    mem[_10823 + _8184 + _8344 + 115 len ceil32(_12994)] = mem[_12460 + 32 len ceil32(_12994)]
                    if ceil32(_12994) > _12994:
                        mem[_12994 + _10823 + _8184 + _8344 + 115] = 0
                    revert with 0, 32, mem[_10823 + _8184 + _8344 + 83 len ceil32(_12994) + 32]
                mem[_10823 + mem[64] + _8344 + 47] = 0
                _12461 = mem[64]
                mem[mem[64]] = _10823 + _8344 + 15
                mem[64] = _10823 + mem[64] + _8344 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10823 + _8184 + _8344 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10823 + _8184 + _8344 + 51] = 32
                _12997 = mem[_12461]
                mem[_10823 + _8184 + _8344 + 83] = mem[_12461]
                mem[_10823 + _8184 + _8344 + 115 len ceil32(_12997)] = mem[_12461 + 32 len ceil32(_12997)]
                if ceil32(_12997) > _12997:
                    mem[_12997 + _10823 + _8184 + _8344 + 115] = 0
                revert with 0, 32, mem[_10823 + _8184 + _8344 + 83 len ceil32(_12997) + 32]
            mem[_5311 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
            if 0 >= mem[_5311]:
                revert with 0, 50
            mem[_5311 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= mem[_5311]:
                revert with 0, 50
            mem[_5311 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[_5311]:
                    revert with 0, 50
                mem[idx + _5311 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _8185 = mem[64]
            _8345 = mem[_1178 + _756 + _780 + 49]
            mem[mem[64] + 32 len ceil32(mem[_1178 + _756 + _780 + 49])] = mem[_1178 + _756 + _780 + 81 len ceil32(mem[_1178 + _756 + _780 + 49])]
            mem[mem[64] + _8345 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            if ceil32(_8345) <= _8345:
                _10824 = mem[_5311]
                mem[mem[64] + _8345 + 47 len ceil32(mem[_5311])] = mem[_5311 + 32 len ceil32(mem[_5311])]
                if ceil32(_10824) <= _10824:
                    _12462 = mem[64]
                    mem[mem[64]] = _10824 + _8345 + 15
                    mem[64] = _10824 + mem[64] + _8345 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = 0
                        emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10824 + _8185 + _8345 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10824 + _8185 + _8345 + 51] = 32
                    _13000 = mem[_12462]
                    mem[_10824 + _8185 + _8345 + 83] = mem[_12462]
                    mem[_10824 + _8185 + _8345 + 115 len ceil32(_13000)] = mem[_12462 + 32 len ceil32(_13000)]
                    if ceil32(_13000) > _13000:
                        mem[_13000 + _10824 + _8185 + _8345 + 115] = 0
                    revert with 0, 32, mem[_10824 + _8185 + _8345 + 83 len ceil32(_13000) + 32]
                mem[_10824 + mem[64] + _8345 + 47] = 0
                _12463 = mem[64]
                mem[mem[64]] = _10824 + _8345 + 15
                mem[64] = _10824 + mem[64] + _8345 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10824 + _8185 + _8345 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10824 + _8185 + _8345 + 51] = 32
                _13003 = mem[_12463]
                mem[_10824 + _8185 + _8345 + 83] = mem[_12463]
                mem[_10824 + _8185 + _8345 + 115 len ceil32(_13003)] = mem[_12463 + 32 len ceil32(_13003)]
                if ceil32(_13003) > _13003:
                    mem[_13003 + _10824 + _8185 + _8345 + 115] = 0
                revert with 0, 32, mem[_10824 + _8185 + _8345 + 83 len ceil32(_13003) + 32]
            _10825 = mem[_5311]
            mem[mem[64] + _8345 + 47 len ceil32(mem[_5311])] = mem[_5311 + 32 len ceil32(mem[_5311])]
            if ceil32(_10825) <= _10825:
                _12464 = mem[64]
                mem[mem[64]] = _10825 + _8345 + 15
                mem[64] = _10825 + mem[64] + _8345 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10825 + _8185 + _8345 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10825 + _8185 + _8345 + 51] = 32
                _13006 = mem[_12464]
                mem[_10825 + _8185 + _8345 + 83] = mem[_12464]
                mem[_10825 + _8185 + _8345 + 115 len ceil32(_13006)] = mem[_12464 + 32 len ceil32(_13006)]
                if ceil32(_13006) > _13006:
                    mem[_13006 + _10825 + _8185 + _8345 + 115] = 0
                revert with 0, 32, mem[_10825 + _8185 + _8345 + 83 len ceil32(_13006) + 32]
            mem[_10825 + mem[64] + _8345 + 47] = 0
            _12465 = mem[64]
            mem[mem[64]] = _10825 + _8345 + 15
            mem[64] = _10825 + mem[64] + _8345 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = 0
                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10825 + _8185 + _8345 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10825 + _8185 + _8345 + 51] = 32
            _13009 = mem[_12465]
            mem[_10825 + _8185 + _8345 + 83] = mem[_12465]
            mem[_10825 + _8185 + _8345 + 115 len ceil32(_13009)] = mem[_12465 + 32 len ceil32(_13009)]
            if ceil32(_13009) > _13009:
                mem[_13009 + _10825 + _8185 + _8345 + 115] = 0
            revert with 0, 32, mem[_10825 + _8185 + _8345 + 83 len ceil32(_13009) + 32]
        _1179 = mem[376]
        mem[mem[64] + _780 + 49 len ceil32(mem[376])] = mem[408 len ceil32(mem[376])]
        mem[mem[64]] = _1179 + _780 + 17
        mem[32] = 52
        if stor52[msg.sender] >= stor51.length:
            revert with 0, 50
        mem[0] = 51
        mem[_1179 + mem[64] + _780 + 49] = 42
        mem[64] = _1179 + mem[64] + _780 + 145
        mem[_1179 + _756 + _780 + 81 len 42] = call.data[calldata.size len 42]
        mem[_1179 + _756 + _780 + 81 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        mem[_1179 + _756 + _780 + 82 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        idx = 41
        s = stor51[stor52[msg.sender]].field_0
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + _1179 + _756 + _780 + 81 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if stor51[stor52[msg.sender]].field_0 + 10240:
            revert with 0, 'Strings: hex length insufficient'
        if ceil32(_1179) <= _1179:
            if not uint32(arg1):
                _3380 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3380] = 4
                mem[_3380 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                _3436 = mem[64]
                mem[mem[64] + 32 len 64] = 0, mem[_1179 + _756 + _780 + 82 len 63]
                var150001 = 64
                mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 93] = 0
                _8195 = mem[64]
                mem[mem[64]] = 61
                mem[64] = mem[64] + 93
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_3436 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3436 + 97] = 32
                _8773 = mem[_8195]
                mem[_3436 + 129] = mem[_8195]
                mem[_3436 + 161 len ceil32(_8773)] = mem[_8195 + 32 len ceil32(_8773)]
                if ceil32(_8773) > _8773:
                    mem[_8773 + _3436 + 161] = 0
                revert with 0, 32, mem[_3436 + 129 len ceil32(_8773) + 32]
            s = 0
            idx = uint32(arg1)
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = Mask(248, 0, idx) * 0.00390625
                continue 
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 > !(2 * s):
                revert with 0, 17
            if (2 * s) + 2 > test266151307():
                revert with 0, 65
            _5316 = mem[64]
            mem[mem[64]] = (2 * s) + 2
            mem[64] = mem[64] + floor32((2 * s) + 33) + 32
            if not (2 * s) + 2:
                if 0 >= mem[_5316]:
                    revert with 0, 50
                mem[_5316 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_5316]:
                    revert with 0, 50
                mem[_5316 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * s):
                    revert with 0, 17
                idx = (2 * s) + 1
                t = uint32(arg1)
                while idx > 1:
                    if t % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_5316]:
                        revert with 0, 50
                    mem[idx + _5316 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    t = Mask(252, 0, t) * 0.0625
                    continue 
                if t:
                    revert with 0, 'Strings: hex length insufficient'
                _8190 = mem[64]
                _8350 = mem[_1179 + _756 + _780 + 49]
                mem[mem[64] + 32 len ceil32(mem[_1179 + _756 + _780 + 49])] = mem[_1179 + _756 + _780 + 81 len ceil32(mem[_1179 + _756 + _780 + 49])]
                mem[mem[64] + _8350 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                if ceil32(_8350) <= _8350:
                    _10826 = mem[_5316]
                    mem[_8190 + _8350 + 47 len ceil32(mem[_5316])] = mem[_5316 + 32 len ceil32(mem[_5316])]
                    if ceil32(_10826) <= _10826:
                        _12466 = mem[64]
                        mem[mem[64]] = _10826 + _8190 + _8350 + -mem[64] + 15
                        mem[64] = _10826 + _8190 + _8350 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = 0
                            emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10826 + _8190 + _8350 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10826 + _8190 + _8350 + 51] = 32
                        _13012 = mem[_12466]
                        mem[_10826 + _8190 + _8350 + 83] = mem[_12466]
                        mem[_10826 + _8190 + _8350 + 115 len ceil32(_13012)] = mem[_12466 + 32 len ceil32(_13012)]
                        if ceil32(_13012) > _13012:
                            mem[_13012 + _10826 + _8190 + _8350 + 115] = 0
                        revert with 0, 32, mem[_10826 + _8190 + _8350 + 83 len ceil32(_13012) + 32]
                    mem[_10826 + _8190 + _8350 + 47] = 0
                    _12467 = mem[64]
                    mem[mem[64]] = _10826 + _8190 + _8350 + -mem[64] + 15
                    mem[64] = _10826 + _8190 + _8350 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = 0
                        emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10826 + _8190 + _8350 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10826 + _8190 + _8350 + 51] = 32
                    _13015 = mem[_12467]
                    mem[_10826 + _8190 + _8350 + 83] = mem[_12467]
                    mem[_10826 + _8190 + _8350 + 115 len ceil32(_13015)] = mem[_12467 + 32 len ceil32(_13015)]
                    if ceil32(_13015) > _13015:
                        mem[_13015 + _10826 + _8190 + _8350 + 115] = 0
                    revert with 0, 32, mem[_10826 + _8190 + _8350 + 83 len ceil32(_13015) + 32]
                _10827 = mem[_5316]
                mem[_8190 + _8350 + 47 len ceil32(mem[_5316])] = mem[_5316 + 32 len ceil32(mem[_5316])]
                if ceil32(_10827) <= _10827:
                    _12468 = mem[64]
                    mem[mem[64]] = _10827 + _8190 + _8350 + -mem[64] + 15
                    mem[64] = _10827 + _8190 + _8350 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = 0
                        emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10827 + _8190 + _8350 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10827 + _8190 + _8350 + 51] = 32
                    _13018 = mem[_12468]
                    mem[_10827 + _8190 + _8350 + 83] = mem[_12468]
                    mem[_10827 + _8190 + _8350 + 115 len ceil32(_13018)] = mem[_12468 + 32 len ceil32(_13018)]
                    if ceil32(_13018) > _13018:
                        mem[_13018 + _10827 + _8190 + _8350 + 115] = 0
                    revert with 0, 32, mem[_10827 + _8190 + _8350 + 83 len ceil32(_13018) + 32]
                mem[_10827 + _8190 + _8350 + 47] = 0
                _12469 = mem[64]
                mem[mem[64]] = _10827 + _8190 + _8350 + -mem[64] + 15
                mem[64] = _10827 + _8190 + _8350 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10827 + _8190 + _8350 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10827 + _8190 + _8350 + 51] = 32
                _13021 = mem[_12469]
                mem[_10827 + _8190 + _8350 + 83] = mem[_12469]
                mem[_10827 + _8190 + _8350 + 115 len ceil32(_13021)] = mem[_12469 + 32 len ceil32(_13021)]
                if ceil32(_13021) > _13021:
                    mem[_13021 + _10827 + _8190 + _8350 + 115] = 0
                revert with 0, 32, mem[_10827 + _8190 + _8350 + 83 len ceil32(_13021) + 32]
            mem[_5316 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
            if 0 >= mem[_5316]:
                revert with 0, 50
            mem[_5316 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= mem[_5316]:
                revert with 0, 50
            mem[_5316 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[_5316]:
                    revert with 0, 50
                mem[idx + _5316 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _8191 = mem[64]
            _8351 = mem[_1179 + _756 + _780 + 49]
            mem[mem[64] + 32 len ceil32(mem[_1179 + _756 + _780 + 49])] = mem[_1179 + _756 + _780 + 81 len ceil32(mem[_1179 + _756 + _780 + 49])]
            mem[mem[64] + _8351 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            if ceil32(_8351) <= _8351:
                _10828 = mem[_5316]
                mem[mem[64] + _8351 + 47 len ceil32(mem[_5316])] = mem[_5316 + 32 len ceil32(mem[_5316])]
                if ceil32(_10828) <= _10828:
                    _12470 = mem[64]
                    mem[mem[64]] = _10828 + _8351 + 15
                    mem[64] = _10828 + mem[64] + _8351 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = 0
                        emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10828 + _8191 + _8351 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10828 + _8191 + _8351 + 51] = 32
                    _13024 = mem[_12470]
                    mem[_10828 + _8191 + _8351 + 83] = mem[_12470]
                    mem[_10828 + _8191 + _8351 + 115 len ceil32(_13024)] = mem[_12470 + 32 len ceil32(_13024)]
                    if ceil32(_13024) > _13024:
                        mem[_13024 + _10828 + _8191 + _8351 + 115] = 0
                    revert with 0, 32, mem[_10828 + _8191 + _8351 + 83 len ceil32(_13024) + 32]
                mem[_10828 + mem[64] + _8351 + 47] = 0
                _12471 = mem[64]
                mem[mem[64]] = _10828 + _8191 + _8351 + -mem[64] + 15
                mem[64] = _10828 + _8191 + _8351 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10828 + _8191 + _8351 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10828 + _8191 + _8351 + 51] = 32
                _13027 = mem[_12471]
                mem[_10828 + _8191 + _8351 + 83] = mem[_12471]
                mem[_10828 + _8191 + _8351 + 115 len ceil32(_13027)] = mem[_12471 + 32 len ceil32(_13027)]
                if ceil32(_13027) > _13027:
                    mem[_13027 + _10828 + _8191 + _8351 + 115] = 0
                revert with 0, 32, mem[_10828 + _8191 + _8351 + 83 len ceil32(_13027) + 32]
            _10829 = mem[_5316]
            mem[mem[64] + _8351 + 47 len ceil32(mem[_5316])] = mem[_5316 + 32 len ceil32(mem[_5316])]
            if ceil32(_10829) <= _10829:
                _12472 = mem[64]
                mem[mem[64]] = _10829 + _8351 + 15
                mem[64] = _10829 + mem[64] + _8351 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10829 + _8191 + _8351 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10829 + _8191 + _8351 + 51] = 32
                _13030 = mem[_12472]
                mem[_10829 + _8191 + _8351 + 83] = mem[_12472]
                mem[_10829 + _8191 + _8351 + 115 len ceil32(_13030)] = mem[_12472 + 32 len ceil32(_13030)]
                if ceil32(_13030) > _13030:
                    mem[_13030 + _10829 + _8191 + _8351 + 115] = 0
                revert with 0, 32, mem[_10829 + _8191 + _8351 + 83 len ceil32(_13030) + 32]
            mem[_10829 + mem[64] + _8351 + 47] = 0
            _12473 = mem[64]
            mem[mem[64]] = _10829 + _8351 + 15
            mem[64] = _10829 + mem[64] + _8351 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = 0
                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10829 + _8191 + _8351 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10829 + _8191 + _8351 + 51] = 32
            _13033 = mem[_12473]
            mem[_10829 + _8191 + _8351 + 83] = mem[_12473]
            mem[_10829 + _8191 + _8351 + 115 len ceil32(_13033)] = mem[_12473 + 32 len ceil32(_13033)]
            if ceil32(_13033) > _13033:
                mem[_13033 + _10829 + _8191 + _8351 + 115] = 0
            revert with 0, 32, mem[_10829 + _8191 + _8351 + 83 len ceil32(_13033) + 32]
        if not uint32(arg1):
            _3381 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3381] = 4
            mem[_3381 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
            _3437 = mem[64]
            mem[mem[64] + 32 len 64] = 0, mem[_1179 + _756 + _780 + 82 len 63]
            var150001 = 64
            mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 93] = 0
            _8201 = mem[64]
            mem[mem[64]] = 61
            mem[64] = mem[64] + 93
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = 0
                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_3437 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3437 + 97] = 32
            _8785 = mem[_8201]
            mem[_3437 + 129] = mem[_8201]
            mem[_3437 + 161 len ceil32(_8785)] = mem[_8201 + 32 len ceil32(_8785)]
            if ceil32(_8785) > _8785:
                mem[_8785 + _3437 + 161] = 0
            revert with 0, 32, mem[_3437 + 129 len ceil32(_8785) + 32]
        s = 0
        idx = uint32(arg1)
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = Mask(248, 0, idx) * 0.00390625
            continue 
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 2 > !(2 * s):
            revert with 0, 17
        if (2 * s) + 2 > test266151307():
            revert with 0, 65
        _5321 = mem[64]
        mem[mem[64]] = (2 * s) + 2
        mem[64] = mem[64] + floor32((2 * s) + 33) + 32
        if not (2 * s) + 2:
            if 0 >= mem[_5321]:
                revert with 0, 50
            mem[_5321 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= mem[_5321]:
                revert with 0, 50
            mem[_5321 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[_5321]:
                    revert with 0, 50
                mem[idx + _5321 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _8196 = mem[64]
            _8356 = mem[_1179 + _756 + _780 + 49]
            mem[mem[64] + 32 len ceil32(mem[_1179 + _756 + _780 + 49])] = mem[_1179 + _756 + _780 + 81 len ceil32(mem[_1179 + _756 + _780 + 49])]
            mem[mem[64] + _8356 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            if ceil32(_8356) <= _8356:
                _10830 = mem[_5321]
                mem[mem[64] + _8356 + 47 len ceil32(mem[_5321])] = mem[_5321 + 32 len ceil32(mem[_5321])]
                if ceil32(_10830) <= _10830:
                    _12474 = mem[64]
                    mem[mem[64]] = _10830 + _8356 + 15
                    mem[64] = _10830 + mem[64] + _8356 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = 0
                        emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10830 + _8196 + _8356 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10830 + _8196 + _8356 + 51] = 32
                    _13036 = mem[_12474]
                    mem[_10830 + _8196 + _8356 + 83] = mem[_12474]
                    mem[_10830 + _8196 + _8356 + 115 len ceil32(_13036)] = mem[_12474 + 32 len ceil32(_13036)]
                    if ceil32(_13036) > _13036:
                        mem[_13036 + _10830 + _8196 + _8356 + 115] = 0
                    revert with 0, 32, mem[_10830 + _8196 + _8356 + 83 len ceil32(_13036) + 32]
                mem[_10830 + mem[64] + _8356 + 47] = 0
                _12475 = mem[64]
                mem[mem[64]] = _10830 + _8356 + 15
                mem[64] = _10830 + mem[64] + _8356 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10830 + _8196 + _8356 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10830 + _8196 + _8356 + 51] = 32
                _13039 = mem[_12475]
                mem[_10830 + _8196 + _8356 + 83] = mem[_12475]
                mem[_10830 + _8196 + _8356 + 115 len ceil32(_13039)] = mem[_12475 + 32 len ceil32(_13039)]
                if ceil32(_13039) > _13039:
                    mem[_13039 + _10830 + _8196 + _8356 + 115] = 0
                revert with 0, 32, mem[_10830 + _8196 + _8356 + 83 len ceil32(_13039) + 32]
            _10831 = mem[_5321]
            mem[mem[64] + _8356 + 47 len ceil32(mem[_5321])] = mem[_5321 + 32 len ceil32(mem[_5321])]
            if ceil32(_10831) <= _10831:
                _12476 = mem[64]
                mem[mem[64]] = _10831 + _8356 + 15
                mem[64] = _10831 + mem[64] + _8356 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10831 + _8196 + _8356 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10831 + _8196 + _8356 + 51] = 32
                _13042 = mem[_12476]
                mem[_10831 + _8196 + _8356 + 83] = mem[_12476]
                mem[_10831 + _8196 + _8356 + 115 len ceil32(_13042)] = mem[_12476 + 32 len ceil32(_13042)]
                if ceil32(_13042) > _13042:
                    mem[_13042 + _10831 + _8196 + _8356 + 115] = 0
                revert with 0, 32, mem[_10831 + _8196 + _8356 + 83 len ceil32(_13042) + 32]
            mem[_10831 + mem[64] + _8356 + 47] = 0
            _12477 = mem[64]
            mem[mem[64]] = _10831 + _8356 + 15
            mem[64] = _10831 + mem[64] + _8356 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = 0
                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10831 + _8196 + _8356 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10831 + _8196 + _8356 + 51] = 32
            _13045 = mem[_12477]
            mem[_10831 + _8196 + _8356 + 83] = mem[_12477]
            mem[_10831 + _8196 + _8356 + 115 len ceil32(_13045)] = mem[_12477 + 32 len ceil32(_13045)]
            if ceil32(_13045) > _13045:
                mem[_13045 + _10831 + _8196 + _8356 + 115] = 0
            revert with 0, 32, mem[_10831 + _8196 + _8356 + 83 len ceil32(_13045) + 32]
        mem[_5321 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
        if 0 >= mem[_5321]:
            revert with 0, 50
        mem[_5321 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if 1 >= mem[_5321]:
            revert with 0, 50
        mem[_5321 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 1 > !(2 * s):
            revert with 0, 17
        idx = (2 * s) + 1
        t = uint32(arg1)
        while idx > 1:
            if t % 16 >= 16:
                revert with 0, 50
            if idx >= mem[_5321]:
                revert with 0, 50
            mem[idx + _5321 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            t = Mask(252, 0, t) * 0.0625
            continue 
        if t:
            revert with 0, 'Strings: hex length insufficient'
        _8197 = mem[64]
        _8357 = mem[_1179 + _756 + _780 + 49]
        mem[mem[64] + 32 len ceil32(mem[_1179 + _756 + _780 + 49])] = mem[_1179 + _756 + _780 + 81 len ceil32(mem[_1179 + _756 + _780 + 49])]
        mem[mem[64] + _8357 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
        if ceil32(_8357) <= _8357:
            _10832 = mem[_5321]
            mem[mem[64] + _8357 + 47 len ceil32(mem[_5321])] = mem[_5321 + 32 len ceil32(mem[_5321])]
            if ceil32(_10832) <= _10832:
                _12478 = mem[64]
                mem[mem[64]] = _10832 + _8357 + 15
                mem[64] = _10832 + mem[64] + _8357 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10832 + _8197 + _8357 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10832 + _8197 + _8357 + 51] = 32
                _13048 = mem[_12478]
                mem[_10832 + _8197 + _8357 + 83] = mem[_12478]
                mem[_10832 + _8197 + _8357 + 115 len ceil32(_13048)] = mem[_12478 + 32 len ceil32(_13048)]
                if ceil32(_13048) > _13048:
                    mem[_13048 + _10832 + _8197 + _8357 + 115] = 0
                revert with 0, 32, mem[_10832 + _8197 + _8357 + 83 len ceil32(_13048) + 32]
            mem[_10832 + mem[64] + _8357 + 47] = 0
            _12479 = mem[64]
            mem[mem[64]] = _10832 + _8357 + 15
            mem[64] = _10832 + mem[64] + _8357 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = 0
                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10832 + _8197 + _8357 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10832 + _8197 + _8357 + 51] = 32
            _13051 = mem[_12479]
            mem[_10832 + _8197 + _8357 + 83] = mem[_12479]
            mem[_10832 + _8197 + _8357 + 115 len ceil32(_13051)] = mem[_12479 + 32 len ceil32(_13051)]
            if ceil32(_13051) > _13051:
                mem[_13051 + _10832 + _8197 + _8357 + 115] = 0
            revert with 0, 32, mem[_10832 + _8197 + _8357 + 83 len ceil32(_13051) + 32]
        _10833 = mem[_5321]
        mem[mem[64] + _8357 + 47 len ceil32(mem[_5321])] = mem[_5321 + 32 len ceil32(mem[_5321])]
        if ceil32(_10833) <= _10833:
            _12480 = mem[64]
            mem[mem[64]] = _10833 + _8357 + 15
            mem[64] = _10833 + mem[64] + _8357 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = 0
                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10833 + _8197 + _8357 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10833 + _8197 + _8357 + 51] = 32
            _13054 = mem[_12480]
            mem[_10833 + _8197 + _8357 + 83] = mem[_12480]
            mem[_10833 + _8197 + _8357 + 115 len ceil32(_13054)] = mem[_12480 + 32 len ceil32(_13054)]
            if ceil32(_13054) > _13054:
                mem[_13054 + _10833 + _8197 + _8357 + 115] = 0
            revert with 0, 32, mem[_10833 + _8197 + _8357 + 83 len ceil32(_13054) + 32]
        mem[_10833 + mem[64] + _8357 + 47] = 0
        _12481 = mem[64]
        mem[mem[64]] = _10833 + _8357 + 15
        mem[64] = _10833 + mem[64] + _8357 + 47
        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
            if stor52[address(arg2)] >= stor51.length:
                revert with 0, 50
            stor51[stor52[address(arg2)]].field_192 = 0
            emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
        mem[_10833 + _8197 + _8357 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_10833 + _8197 + _8357 + 51] = 32
        _13057 = mem[_12481]
        mem[_10833 + _8197 + _8357 + 83] = mem[_12481]
        mem[_10833 + _8197 + _8357 + 115 len ceil32(_13057)] = mem[_12481 + 32 len ceil32(_13057)]
        if ceil32(_13057) > _13057:
            mem[_13057 + _10833 + _8197 + _8357 + 115] = 0
        revert with 0, 32, mem[_10833 + _8197 + _8357 + 83 len ceil32(_13057) + 32]
    mem[408 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
    if 0 >= (2 * s) + 2:
        revert with 0, 50
    mem[408 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    if 1 >= (2 * s) + 2:
        revert with 0, 50
    mem[409 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 1 > !(2 * s):
        revert with 0, 17
    idx = (2 * s) + 1
    t = uint32(arg1)
    while idx > 1:
        if t % 16 >= 16:
            revert with 0, 50
        if idx >= mem[376]:
            revert with 0, 50
        mem[idx + 408 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        t = Mask(252, 0, t) * 0.0625
        continue 
    if t:
        revert with 0, 'Strings: hex length insufficient'
    _757 = mem[64]
    _781 = mem[280]
    mem[mem[64] + 32 len ceil32(mem[280])] = mem[312 len ceil32(mem[280])]
    mem[mem[64] + _781 + 32] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
    if ceil32(_781) <= _781:
        _1180 = mem[376]
        mem[mem[64] + _781 + 49 len ceil32(mem[376])] = mem[408 len ceil32(mem[376])]
        if ceil32(_1180) <= _1180:
            mem[mem[64]] = _1180 + _781 + 17
            mem[32] = 52
            if stor52[msg.sender] >= stor51.length:
                revert with 0, 50
            mem[0] = 51
            mem[_1180 + mem[64] + _781 + 49] = 42
            mem[64] = _1180 + _757 + _781 + 145
            mem[_1180 + _757 + _781 + 81 len 42] = call.data[calldata.size len 42]
            mem[_1180 + _757 + _781 + 81 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            mem[_1180 + _757 + _781 + 82 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            idx = 41
            s = stor51[stor52[msg.sender]].field_0
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + _1180 + _757 + _781 + 81 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if stor51[stor52[msg.sender]].field_0 + 10240:
                revert with 0, 'Strings: hex length insufficient'
            if not uint32(arg1):
                _3382 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3382] = 4
                mem[_3382 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                _3438 = mem[64]
                mem[mem[64] + 32 len 64] = 0, mem[_1180 + _757 + _781 + 82 len 63]
                var151001 = 64
                mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 93] = 0
                _8207 = mem[64]
                mem[mem[64]] = 61
                mem[64] = mem[64] + 93
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_3438 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3438 + 97] = 32
                _8797 = mem[_8207]
                mem[_3438 + 129] = mem[_8207]
                mem[_3438 + 161 len ceil32(_8797)] = mem[_8207 + 32 len ceil32(_8797)]
                if ceil32(_8797) > _8797:
                    mem[_8797 + _3438 + 161] = 0
                revert with 0, 32, mem[_3438 + 129 len ceil32(_8797) + 32]
            s = 0
            idx = uint32(arg1)
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = Mask(248, 0, idx) * 0.00390625
                continue 
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 > !(2 * s):
                revert with 0, 17
            if (2 * s) + 2 > test266151307():
                revert with 0, 65
            _5326 = mem[64]
            mem[mem[64]] = (2 * s) + 2
            mem[64] = mem[64] + floor32((2 * s) + 33) + 32
            if not (2 * s) + 2:
                if 0 >= mem[_5326]:
                    revert with 0, 50
                mem[_5326 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_5326]:
                    revert with 0, 50
                mem[_5326 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * s):
                    revert with 0, 17
                idx = (2 * s) + 1
                t = uint32(arg1)
                while idx > 1:
                    if t % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_5326]:
                        revert with 0, 50
                    mem[idx + _5326 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    t = Mask(252, 0, t) * 0.0625
                    continue 
                if t:
                    revert with 0, 'Strings: hex length insufficient'
                _8202 = mem[64]
                _8362 = mem[_1180 + _757 + _781 + 49]
                mem[mem[64] + 32 len ceil32(mem[_1180 + _757 + _781 + 49])] = mem[_1180 + _757 + _781 + 81 len ceil32(mem[_1180 + _757 + _781 + 49])]
                mem[mem[64] + _8362 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                if ceil32(_8362) <= _8362:
                    _10834 = mem[_5326]
                    mem[mem[64] + _8362 + 47 len ceil32(mem[_5326])] = mem[_5326 + 32 len ceil32(mem[_5326])]
                    if ceil32(_10834) <= _10834:
                        _12482 = mem[64]
                        mem[mem[64]] = _10834 + _8362 + 15
                        mem[64] = _10834 + mem[64] + _8362 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = 0
                            emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10834 + _8202 + _8362 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10834 + _8202 + _8362 + 51] = 32
                        _13060 = mem[_12482]
                        mem[_10834 + _8202 + _8362 + 83] = mem[_12482]
                        mem[_10834 + _8202 + _8362 + 115 len ceil32(_13060)] = mem[_12482 + 32 len ceil32(_13060)]
                        if ceil32(_13060) > _13060:
                            mem[_13060 + _10834 + _8202 + _8362 + 115] = 0
                        revert with 0, 32, mem[_10834 + _8202 + _8362 + 83 len ceil32(_13060) + 32]
                    mem[_10834 + mem[64] + _8362 + 47] = 0
                    _12483 = mem[64]
                    mem[mem[64]] = _10834 + _8202 + _8362 + -mem[64] + 15
                    mem[64] = _10834 + _8202 + _8362 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = 0
                        emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10834 + _8202 + _8362 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10834 + _8202 + _8362 + 51] = 32
                    _13063 = mem[_12483]
                    mem[_10834 + _8202 + _8362 + 83] = mem[_12483]
                    mem[_10834 + _8202 + _8362 + 115 len ceil32(_13063)] = mem[_12483 + 32 len ceil32(_13063)]
                    if ceil32(_13063) > _13063:
                        mem[_13063 + _10834 + _8202 + _8362 + 115] = 0
                    revert with 0, 32, mem[_10834 + _8202 + _8362 + 83 len ceil32(_13063) + 32]
                _10835 = mem[_5326]
                mem[mem[64] + _8362 + 47 len ceil32(mem[_5326])] = mem[_5326 + 32 len ceil32(mem[_5326])]
                if ceil32(_10835) <= _10835:
                    _12484 = mem[64]
                    mem[mem[64]] = _10835 + _8362 + 15
                    mem[64] = _10835 + mem[64] + _8362 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = 0
                        emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10835 + _8202 + _8362 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10835 + _8202 + _8362 + 51] = 32
                    _13066 = mem[_12484]
                    mem[_10835 + _8202 + _8362 + 83] = mem[_12484]
                    mem[_10835 + _8202 + _8362 + 115 len ceil32(_13066)] = mem[_12484 + 32 len ceil32(_13066)]
                    if ceil32(_13066) > _13066:
                        mem[_13066 + _10835 + _8202 + _8362 + 115] = 0
                    revert with 0, 32, mem[_10835 + _8202 + _8362 + 83 len ceil32(_13066) + 32]
                mem[_10835 + mem[64] + _8362 + 47] = 0
                _12485 = mem[64]
                mem[mem[64]] = _10835 + _8362 + 15
                mem[64] = _10835 + mem[64] + _8362 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10835 + _8202 + _8362 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10835 + _8202 + _8362 + 51] = 32
                _13069 = mem[_12485]
                mem[_10835 + _8202 + _8362 + 83] = mem[_12485]
                mem[_10835 + _8202 + _8362 + 115 len ceil32(_13069)] = mem[_12485 + 32 len ceil32(_13069)]
                if ceil32(_13069) > _13069:
                    mem[_13069 + _10835 + _8202 + _8362 + 115] = 0
                revert with 0, 32, mem[_10835 + _8202 + _8362 + 83 len ceil32(_13069) + 32]
            mem[_5326 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
            if 0 >= mem[_5326]:
                revert with 0, 50
            mem[_5326 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= mem[_5326]:
                revert with 0, 50
            mem[_5326 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[_5326]:
                    revert with 0, 50
                mem[idx + _5326 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _8203 = mem[64]
            _8363 = mem[_1180 + _757 + _781 + 49]
            mem[mem[64] + 32 len ceil32(mem[_1180 + _757 + _781 + 49])] = mem[_1180 + _757 + _781 + 81 len ceil32(mem[_1180 + _757 + _781 + 49])]
            mem[mem[64] + _8363 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            if ceil32(_8363) <= _8363:
                _10836 = mem[_5326]
                mem[mem[64] + _8363 + 47 len ceil32(mem[_5326])] = mem[_5326 + 32 len ceil32(mem[_5326])]
                if ceil32(_10836) <= _10836:
                    _12486 = mem[64]
                    mem[mem[64]] = _10836 + _8363 + 15
                    mem[64] = _10836 + mem[64] + _8363 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = 0
                        emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10836 + _8203 + _8363 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10836 + _8203 + _8363 + 51] = 32
                    _13072 = mem[_12486]
                    mem[_10836 + _8203 + _8363 + 83] = mem[_12486]
                    mem[_10836 + _8203 + _8363 + 115 len ceil32(_13072)] = mem[_12486 + 32 len ceil32(_13072)]
                    if ceil32(_13072) > _13072:
                        mem[_13072 + _10836 + _8203 + _8363 + 115] = 0
                    revert with 0, 32, mem[_10836 + _8203 + _8363 + 83 len ceil32(_13072) + 32]
                mem[_10836 + mem[64] + _8363 + 47] = 0
                _12487 = mem[64]
                mem[mem[64]] = _10836 + _8203 + _8363 + -mem[64] + 15
                mem[64] = _10836 + _8203 + _8363 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10836 + _8203 + _8363 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10836 + _8203 + _8363 + 51] = 32
                _13075 = mem[_12487]
                mem[_10836 + _8203 + _8363 + 83] = mem[_12487]
                mem[_10836 + _8203 + _8363 + 115 len ceil32(_13075)] = mem[_12487 + 32 len ceil32(_13075)]
                if ceil32(_13075) > _13075:
                    mem[_13075 + _10836 + _8203 + _8363 + 115] = 0
                revert with 0, 32, mem[_10836 + _8203 + _8363 + 83 len ceil32(_13075) + 32]
            _10837 = mem[_5326]
            mem[mem[64] + _8363 + 47 len ceil32(mem[_5326])] = mem[_5326 + 32 len ceil32(mem[_5326])]
            if ceil32(_10837) <= _10837:
                _12488 = mem[64]
                mem[mem[64]] = _10837 + _8363 + 15
                mem[64] = _10837 + mem[64] + _8363 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10837 + _8203 + _8363 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10837 + _8203 + _8363 + 51] = 32
                _13078 = mem[_12488]
                mem[_10837 + _8203 + _8363 + 83] = mem[_12488]
                mem[_10837 + _8203 + _8363 + 115 len ceil32(_13078)] = mem[_12488 + 32 len ceil32(_13078)]
                if ceil32(_13078) > _13078:
                    mem[_13078 + _10837 + _8203 + _8363 + 115] = 0
                revert with 0, 32, mem[_10837 + _8203 + _8363 + 83 len ceil32(_13078) + 32]
            mem[_10837 + mem[64] + _8363 + 47] = 0
            _12489 = mem[64]
            mem[mem[64]] = _10837 + _8363 + 15
            mem[64] = _10837 + mem[64] + _8363 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = 0
                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10837 + _8203 + _8363 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10837 + _8203 + _8363 + 51] = 32
            _13081 = mem[_12489]
            mem[_10837 + _8203 + _8363 + 83] = mem[_12489]
            mem[_10837 + _8203 + _8363 + 115 len ceil32(_13081)] = mem[_12489 + 32 len ceil32(_13081)]
            if ceil32(_13081) > _13081:
                mem[_13081 + _10837 + _8203 + _8363 + 115] = 0
            revert with 0, 32, mem[_10837 + _8203 + _8363 + 83 len ceil32(_13081) + 32]
        mem[_1180 + mem[64] + _781 + 49] = 0
        mem[mem[64]] = _1180 + _757 + _781 + -mem[64] + 17
        mem[32] = 52
        if stor52[msg.sender] >= stor51.length:
            revert with 0, 50
        mem[0] = 51
        mem[_1180 + _757 + _781 + 49] = 42
        mem[64] = _1180 + _757 + _781 + 145
        mem[_1180 + _757 + _781 + 81 len 42] = call.data[calldata.size len 42]
        mem[_1180 + _757 + _781 + 81 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        mem[_1180 + _757 + _781 + 82 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        idx = 41
        s = stor51[stor52[msg.sender]].field_0
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + _1180 + _757 + _781 + 81 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if stor51[stor52[msg.sender]].field_0 + 10240:
            revert with 0, 'Strings: hex length insufficient'
        if not uint32(arg1):
            _3383 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3383] = 4
            mem[_3383 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
            _3439 = mem[64]
            mem[mem[64] + 32 len 64] = 0, mem[_1180 + _757 + _781 + 82 len 63]
            var151001 = 64
            mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 93] = 0
            _8213 = mem[64]
            mem[mem[64]] = 61
            mem[64] = mem[64] + 93
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = 0
                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_3439 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3439 + 97] = 32
            _8809 = mem[_8213]
            mem[_3439 + 129] = mem[_8213]
            mem[_3439 + 161 len ceil32(_8809)] = mem[_8213 + 32 len ceil32(_8809)]
            if ceil32(_8809) > _8809:
                mem[_8809 + _3439 + 161] = 0
            revert with 0, 32, mem[_3439 + 129 len ceil32(_8809) + 32]
        s = 0
        idx = uint32(arg1)
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = Mask(248, 0, idx) * 0.00390625
            continue 
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 2 > !(2 * s):
            revert with 0, 17
        if (2 * s) + 2 > test266151307():
            revert with 0, 65
        _5331 = mem[64]
        mem[mem[64]] = (2 * s) + 2
        mem[64] = mem[64] + floor32((2 * s) + 33) + 32
        if not (2 * s) + 2:
            if 0 >= mem[_5331]:
                revert with 0, 50
            mem[_5331 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= mem[_5331]:
                revert with 0, 50
            mem[_5331 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[_5331]:
                    revert with 0, 50
                mem[idx + _5331 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _8208 = mem[64]
            _8368 = mem[_1180 + _757 + _781 + 49]
            mem[mem[64] + 32 len ceil32(mem[_1180 + _757 + _781 + 49])] = mem[_1180 + _757 + _781 + 81 len ceil32(mem[_1180 + _757 + _781 + 49])]
            mem[mem[64] + _8368 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            if ceil32(_8368) <= _8368:
                _10838 = mem[_5331]
                mem[mem[64] + _8368 + 47 len ceil32(mem[_5331])] = mem[_5331 + 32 len ceil32(mem[_5331])]
                if ceil32(_10838) <= _10838:
                    _12490 = mem[64]
                    mem[mem[64]] = _10838 + _8368 + 15
                    mem[64] = _10838 + mem[64] + _8368 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = 0
                        emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10838 + _8208 + _8368 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10838 + _8208 + _8368 + 51] = 32
                    _13084 = mem[_12490]
                    mem[_10838 + _8208 + _8368 + 83] = mem[_12490]
                    mem[_10838 + _8208 + _8368 + 115 len ceil32(_13084)] = mem[_12490 + 32 len ceil32(_13084)]
                    if ceil32(_13084) > _13084:
                        mem[_13084 + _10838 + _8208 + _8368 + 115] = 0
                    revert with 0, 32, mem[_10838 + _8208 + _8368 + 83 len ceil32(_13084) + 32]
                mem[_10838 + mem[64] + _8368 + 47] = 0
                _12491 = mem[64]
                mem[mem[64]] = _10838 + _8368 + 15
                mem[64] = _10838 + mem[64] + _8368 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10838 + _8208 + _8368 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10838 + _8208 + _8368 + 51] = 32
                _13087 = mem[_12491]
                mem[_10838 + _8208 + _8368 + 83] = mem[_12491]
                mem[_10838 + _8208 + _8368 + 115 len ceil32(_13087)] = mem[_12491 + 32 len ceil32(_13087)]
                if ceil32(_13087) > _13087:
                    mem[_13087 + _10838 + _8208 + _8368 + 115] = 0
                revert with 0, 32, mem[_10838 + _8208 + _8368 + 83 len ceil32(_13087) + 32]
            _10839 = mem[_5331]
            mem[mem[64] + _8368 + 47 len ceil32(mem[_5331])] = mem[_5331 + 32 len ceil32(mem[_5331])]
            if ceil32(_10839) <= _10839:
                _12492 = mem[64]
                mem[mem[64]] = _10839 + _8368 + 15
                mem[64] = _10839 + mem[64] + _8368 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10839 + _8208 + _8368 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10839 + _8208 + _8368 + 51] = 32
                _13090 = mem[_12492]
                mem[_10839 + _8208 + _8368 + 83] = mem[_12492]
                mem[_10839 + _8208 + _8368 + 115 len ceil32(_13090)] = mem[_12492 + 32 len ceil32(_13090)]
                if ceil32(_13090) > _13090:
                    mem[_13090 + _10839 + _8208 + _8368 + 115] = 0
                revert with 0, 32, mem[_10839 + _8208 + _8368 + 83 len ceil32(_13090) + 32]
            mem[_10839 + mem[64] + _8368 + 47] = 0
            _12493 = mem[64]
            mem[mem[64]] = _10839 + _8368 + 15
            mem[64] = _10839 + mem[64] + _8368 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = 0
                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10839 + _8208 + _8368 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10839 + _8208 + _8368 + 51] = 32
            _13093 = mem[_12493]
            mem[_10839 + _8208 + _8368 + 83] = mem[_12493]
            mem[_10839 + _8208 + _8368 + 115 len ceil32(_13093)] = mem[_12493 + 32 len ceil32(_13093)]
            if ceil32(_13093) > _13093:
                mem[_13093 + _10839 + _8208 + _8368 + 115] = 0
            revert with 0, 32, mem[_10839 + _8208 + _8368 + 83 len ceil32(_13093) + 32]
        mem[_5331 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
        if 0 >= mem[_5331]:
            revert with 0, 50
        mem[_5331 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if 1 >= mem[_5331]:
            revert with 0, 50
        mem[_5331 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 1 > !(2 * s):
            revert with 0, 17
        idx = (2 * s) + 1
        t = uint32(arg1)
        while idx > 1:
            if t % 16 >= 16:
                revert with 0, 50
            if idx >= mem[_5331]:
                revert with 0, 50
            mem[idx + _5331 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            t = Mask(252, 0, t) * 0.0625
            continue 
        if t:
            revert with 0, 'Strings: hex length insufficient'
        _8209 = mem[64]
        _8369 = mem[_1180 + _757 + _781 + 49]
        mem[mem[64] + 32 len ceil32(mem[_1180 + _757 + _781 + 49])] = mem[_1180 + _757 + _781 + 81 len ceil32(mem[_1180 + _757 + _781 + 49])]
        mem[mem[64] + _8369 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
        if ceil32(_8369) <= _8369:
            _10840 = mem[_5331]
            mem[mem[64] + _8369 + 47 len ceil32(mem[_5331])] = mem[_5331 + 32 len ceil32(mem[_5331])]
            if ceil32(_10840) <= _10840:
                _12494 = mem[64]
                mem[mem[64]] = _10840 + _8369 + 15
                mem[64] = _10840 + mem[64] + _8369 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10840 + _8209 + _8369 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10840 + _8209 + _8369 + 51] = 32
                _13096 = mem[_12494]
                mem[_10840 + _8209 + _8369 + 83] = mem[_12494]
                mem[_10840 + _8209 + _8369 + 115 len ceil32(_13096)] = mem[_12494 + 32 len ceil32(_13096)]
                if ceil32(_13096) > _13096:
                    mem[_13096 + _10840 + _8209 + _8369 + 115] = 0
                revert with 0, 32, mem[_10840 + _8209 + _8369 + 83 len ceil32(_13096) + 32]
            mem[_10840 + mem[64] + _8369 + 47] = 0
            _12495 = mem[64]
            mem[mem[64]] = _10840 + _8369 + 15
            mem[64] = _10840 + mem[64] + _8369 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = 0
                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10840 + _8209 + _8369 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10840 + _8209 + _8369 + 51] = 32
            _13099 = mem[_12495]
            mem[_10840 + _8209 + _8369 + 83] = mem[_12495]
            mem[_10840 + _8209 + _8369 + 115 len ceil32(_13099)] = mem[_12495 + 32 len ceil32(_13099)]
            if ceil32(_13099) > _13099:
                mem[_13099 + _10840 + _8209 + _8369 + 115] = 0
            revert with 0, 32, mem[_10840 + _8209 + _8369 + 83 len ceil32(_13099) + 32]
        _10841 = mem[_5331]
        mem[mem[64] + _8369 + 47 len ceil32(mem[_5331])] = mem[_5331 + 32 len ceil32(mem[_5331])]
        if ceil32(_10841) <= _10841:
            _12496 = mem[64]
            mem[mem[64]] = _10841 + _8369 + 15
            mem[64] = _10841 + mem[64] + _8369 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = 0
                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10841 + _8209 + _8369 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10841 + _8209 + _8369 + 51] = 32
            _13102 = mem[_12496]
            mem[_10841 + _8209 + _8369 + 83] = mem[_12496]
            mem[_10841 + _8209 + _8369 + 115 len ceil32(_13102)] = mem[_12496 + 32 len ceil32(_13102)]
            if ceil32(_13102) > _13102:
                mem[_13102 + _10841 + _8209 + _8369 + 115] = 0
            revert with 0, 32, mem[_10841 + _8209 + _8369 + 83 len ceil32(_13102) + 32]
        mem[_10841 + mem[64] + _8369 + 47] = 0
        _12497 = mem[64]
        mem[mem[64]] = _10841 + _8369 + 15
        mem[64] = _10841 + mem[64] + _8369 + 47
        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
            if stor52[address(arg2)] >= stor51.length:
                revert with 0, 50
            stor51[stor52[address(arg2)]].field_192 = 0
            emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
        mem[_10841 + _8209 + _8369 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_10841 + _8209 + _8369 + 51] = 32
        _13105 = mem[_12497]
        mem[_10841 + _8209 + _8369 + 83] = mem[_12497]
        mem[_10841 + _8209 + _8369 + 115 len ceil32(_13105)] = mem[_12497 + 32 len ceil32(_13105)]
        if ceil32(_13105) > _13105:
            mem[_13105 + _10841 + _8209 + _8369 + 115] = 0
        revert with 0, 32, mem[_10841 + _8209 + _8369 + 83 len ceil32(_13105) + 32]
    _1181 = mem[376]
    mem[mem[64] + _781 + 49 len ceil32(mem[376])] = mem[408 len ceil32(mem[376])]
    if ceil32(_1181) <= _1181:
        mem[mem[64]] = _1181 + _781 + 17
        mem[32] = 52
        if stor52[msg.sender] >= stor51.length:
            revert with 0, 50
        mem[0] = 51
        mem[_1181 + mem[64] + _781 + 49] = 42
        mem[64] = _1181 + _757 + _781 + 145
        mem[_1181 + _757 + _781 + 81 len 42] = call.data[calldata.size len 42]
        mem[_1181 + _757 + _781 + 81 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        mem[_1181 + _757 + _781 + 82 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        idx = 41
        s = stor51[stor52[msg.sender]].field_0
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + _1181 + _757 + _781 + 81 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if stor51[stor52[msg.sender]].field_0 + 10240:
            revert with 0, 'Strings: hex length insufficient'
        if not uint32(arg1):
            _3384 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3384] = 4
            mem[_3384 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
            _3440 = mem[64]
            mem[mem[64] + 32 len 64] = 0, mem[_1181 + _757 + _781 + 82 len 63]
            var151001 = 64
            mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 93] = 0
            _8219 = mem[64]
            mem[mem[64]] = 61
            mem[64] = mem[64] + 93
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = 0
                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_3440 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3440 + 97] = 32
            _8821 = mem[_8219]
            mem[_3440 + 129] = mem[_8219]
            mem[_3440 + 161 len ceil32(_8821)] = mem[_8219 + 32 len ceil32(_8821)]
            if ceil32(_8821) > _8821:
                mem[_8821 + _3440 + 161] = 0
            revert with 0, 32, mem[_3440 + 129 len ceil32(_8821) + 32]
        s = 0
        idx = uint32(arg1)
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = Mask(248, 0, idx) * 0.00390625
            continue 
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 2 > !(2 * s):
            revert with 0, 17
        if (2 * s) + 2 > test266151307():
            revert with 0, 65
        _5336 = mem[64]
        mem[mem[64]] = (2 * s) + 2
        mem[64] = mem[64] + floor32((2 * s) + 33) + 32
        if not (2 * s) + 2:
            if 0 >= mem[_5336]:
                revert with 0, 50
            mem[_5336 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= mem[_5336]:
                revert with 0, 50
            mem[_5336 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[_5336]:
                    revert with 0, 50
                mem[idx + _5336 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _8214 = mem[64]
            _8374 = mem[_1181 + _757 + _781 + 49]
            mem[mem[64] + 32 len ceil32(mem[_1181 + _757 + _781 + 49])] = mem[_1181 + _757 + _781 + 81 len ceil32(mem[_1181 + _757 + _781 + 49])]
            mem[mem[64] + _8374 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            if ceil32(_8374) <= _8374:
                _10842 = mem[_5336]
                mem[mem[64] + _8374 + 47 len ceil32(mem[_5336])] = mem[_5336 + 32 len ceil32(mem[_5336])]
                if ceil32(_10842) <= _10842:
                    _12498 = mem[64]
                    mem[mem[64]] = _10842 + _8374 + 15
                    mem[64] = _10842 + mem[64] + _8374 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = 0
                        emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10842 + _8214 + _8374 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10842 + _8214 + _8374 + 51] = 32
                    _13108 = mem[_12498]
                    mem[_10842 + _8214 + _8374 + 83] = mem[_12498]
                    mem[_10842 + _8214 + _8374 + 115 len ceil32(_13108)] = mem[_12498 + 32 len ceil32(_13108)]
                    if ceil32(_13108) > _13108:
                        mem[_13108 + _10842 + _8214 + _8374 + 115] = 0
                    revert with 0, 32, mem[_10842 + _8214 + _8374 + 83 len ceil32(_13108) + 32]
                mem[_10842 + mem[64] + _8374 + 47] = 0
                _12499 = mem[64]
                mem[mem[64]] = _10842 + _8214 + _8374 + -mem[64] + 15
                mem[64] = _10842 + _8214 + _8374 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10842 + _8214 + _8374 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10842 + _8214 + _8374 + 51] = 32
                _13111 = mem[_12499]
                mem[_10842 + _8214 + _8374 + 83] = mem[_12499]
                mem[_10842 + _8214 + _8374 + 115 len ceil32(_13111)] = mem[_12499 + 32 len ceil32(_13111)]
                if ceil32(_13111) > _13111:
                    mem[_13111 + _10842 + _8214 + _8374 + 115] = 0
                revert with 0, 32, mem[_10842 + _8214 + _8374 + 83 len ceil32(_13111) + 32]
            _10843 = mem[_5336]
            mem[mem[64] + _8374 + 47 len ceil32(mem[_5336])] = mem[_5336 + 32 len ceil32(mem[_5336])]
            if ceil32(_10843) <= _10843:
                _12500 = mem[64]
                mem[mem[64]] = _10843 + _8374 + 15
                mem[64] = _10843 + mem[64] + _8374 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10843 + _8214 + _8374 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10843 + _8214 + _8374 + 51] = 32
                _13114 = mem[_12500]
                mem[_10843 + _8214 + _8374 + 83] = mem[_12500]
                mem[_10843 + _8214 + _8374 + 115 len ceil32(_13114)] = mem[_12500 + 32 len ceil32(_13114)]
                if ceil32(_13114) > _13114:
                    mem[_13114 + _10843 + _8214 + _8374 + 115] = 0
                revert with 0, 32, mem[_10843 + _8214 + _8374 + 83 len ceil32(_13114) + 32]
            mem[_10843 + mem[64] + _8374 + 47] = 0
            _12501 = mem[64]
            mem[mem[64]] = _10843 + _8214 + _8374 + -mem[64] + 15
            mem[64] = _10843 + _8214 + _8374 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = 0
                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10843 + _8214 + _8374 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10843 + _8214 + _8374 + 51] = 32
            _13117 = mem[_12501]
            mem[_10843 + _8214 + _8374 + 83] = mem[_12501]
            mem[_10843 + _8214 + _8374 + 115 len ceil32(_13117)] = mem[_12501 + 32 len ceil32(_13117)]
            if ceil32(_13117) > _13117:
                mem[_13117 + _10843 + _8214 + _8374 + 115] = 0
            revert with 0, 32, mem[_10843 + _8214 + _8374 + 83 len ceil32(_13117) + 32]
        mem[_5336 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
        if 0 >= mem[_5336]:
            revert with 0, 50
        mem[_5336 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if 1 >= mem[_5336]:
            revert with 0, 50
        mem[_5336 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 1 > !(2 * s):
            revert with 0, 17
        idx = (2 * s) + 1
        t = uint32(arg1)
        while idx > 1:
            if t % 16 >= 16:
                revert with 0, 50
            if idx >= mem[_5336]:
                revert with 0, 50
            mem[idx + _5336 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            t = Mask(252, 0, t) * 0.0625
            continue 
        if t:
            revert with 0, 'Strings: hex length insufficient'
        _8215 = mem[64]
        _8375 = mem[_1181 + _757 + _781 + 49]
        mem[mem[64] + 32 len ceil32(mem[_1181 + _757 + _781 + 49])] = mem[_1181 + _757 + _781 + 81 len ceil32(mem[_1181 + _757 + _781 + 49])]
        mem[mem[64] + _8375 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
        if ceil32(_8375) <= _8375:
            _10844 = mem[_5336]
            mem[mem[64] + _8375 + 47 len ceil32(mem[_5336])] = mem[_5336 + 32 len ceil32(mem[_5336])]
            if ceil32(_10844) <= _10844:
                _12502 = mem[64]
                mem[mem[64]] = _10844 + _8375 + 15
                mem[64] = _10844 + mem[64] + _8375 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10844 + _8215 + _8375 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10844 + _8215 + _8375 + 51] = 32
                _13120 = mem[_12502]
                mem[_10844 + _8215 + _8375 + 83] = mem[_12502]
                mem[_10844 + _8215 + _8375 + 115 len ceil32(_13120)] = mem[_12502 + 32 len ceil32(_13120)]
                if ceil32(_13120) > _13120:
                    mem[_13120 + _10844 + _8215 + _8375 + 115] = 0
                revert with 0, 32, mem[_10844 + _8215 + _8375 + 83 len ceil32(_13120) + 32]
            mem[_10844 + mem[64] + _8375 + 47] = 0
            _12503 = mem[64]
            mem[mem[64]] = _10844 + _8375 + 15
            mem[64] = _10844 + mem[64] + _8375 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = 0
                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10844 + _8215 + _8375 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10844 + _8215 + _8375 + 51] = 32
            _13123 = mem[_12503]
            mem[_10844 + _8215 + _8375 + 83] = mem[_12503]
            mem[_10844 + _8215 + _8375 + 115 len ceil32(_13123)] = mem[_12503 + 32 len ceil32(_13123)]
            if ceil32(_13123) > _13123:
                mem[_13123 + _10844 + _8215 + _8375 + 115] = 0
            revert with 0, 32, mem[_10844 + _8215 + _8375 + 83 len ceil32(_13123) + 32]
        _10845 = mem[_5336]
        mem[mem[64] + _8375 + 47 len ceil32(mem[_5336])] = mem[_5336 + 32 len ceil32(mem[_5336])]
        if ceil32(_10845) <= _10845:
            _12504 = mem[64]
            mem[mem[64]] = _10845 + _8375 + 15
            mem[64] = _10845 + mem[64] + _8375 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = 0
                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10845 + _8215 + _8375 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10845 + _8215 + _8375 + 51] = 32
            _13126 = mem[_12504]
            mem[_10845 + _8215 + _8375 + 83] = mem[_12504]
            mem[_10845 + _8215 + _8375 + 115 len ceil32(_13126)] = mem[_12504 + 32 len ceil32(_13126)]
            if ceil32(_13126) > _13126:
                mem[_13126 + _10845 + _8215 + _8375 + 115] = 0
            revert with 0, 32, mem[_10845 + _8215 + _8375 + 83 len ceil32(_13126) + 32]
        mem[_10845 + mem[64] + _8375 + 47] = 0
        _12505 = mem[64]
        mem[mem[64]] = _10845 + _8215 + _8375 + -mem[64] + 15
        mem[64] = _10845 + _8215 + _8375 + 47
        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
            if stor52[address(arg2)] >= stor51.length:
                revert with 0, 50
            stor51[stor52[address(arg2)]].field_192 = 0
            emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
        mem[_10845 + _8215 + _8375 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_10845 + _8215 + _8375 + 51] = 32
        _13129 = mem[_12505]
        mem[_10845 + _8215 + _8375 + 83] = mem[_12505]
        mem[_10845 + _8215 + _8375 + 115 len ceil32(_13129)] = mem[_12505 + 32 len ceil32(_13129)]
        if ceil32(_13129) > _13129:
            mem[_13129 + _10845 + _8215 + _8375 + 115] = 0
        revert with 0, 32, mem[_10845 + _8215 + _8375 + 83 len ceil32(_13129) + 32]
    mem[_1181 + mem[64] + _781 + 49] = 0
    mem[mem[64]] = _1181 + _757 + _781 + -mem[64] + 17
    mem[32] = 52
    if stor52[msg.sender] >= stor51.length:
        revert with 0, 50
    mem[0] = 51
    mem[_1181 + _757 + _781 + 49] = 42
    mem[64] = _1181 + _757 + _781 + 145
    mem[_1181 + _757 + _781 + 81 len 42] = call.data[calldata.size len 42]
    mem[_1181 + _757 + _781 + 81 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    mem[_1181 + _757 + _781 + 82 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    idx = 41
    s = stor51[stor52[msg.sender]].field_0
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + _1181 + _757 + _781 + 81 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if stor51[stor52[msg.sender]].field_0 + 10240:
        revert with 0, 'Strings: hex length insufficient'
    if not uint32(arg1):
        _3385 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3385] = 4
        mem[_3385 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
        _3441 = mem[64]
        mem[mem[64] + 32 len 64] = 0, mem[_1181 + _757 + _781 + 82 len 63]
        var151001 = 64
        mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
        mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 93] = 0
        _8225 = mem[64]
        mem[mem[64]] = 61
        mem[64] = mem[64] + 93
        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
            if stor52[address(arg2)] >= stor51.length:
                revert with 0, 50
            stor51[stor52[address(arg2)]].field_192 = 0
            emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
        mem[_3441 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_3441 + 97] = 32
        _8833 = mem[_8225]
        mem[_3441 + 129] = mem[_8225]
        mem[_3441 + 161 len ceil32(_8833)] = mem[_8225 + 32 len ceil32(_8833)]
        if ceil32(_8833) > _8833:
            mem[_8833 + _3441 + 161] = 0
        revert with 0, 32, mem[_3441 + 129 len ceil32(_8833) + 32]
    s = 0
    idx = uint32(arg1)
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = Mask(248, 0, idx) * 0.00390625
        continue 
    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 2 > !(2 * s):
        revert with 0, 17
    if (2 * s) + 2 > test266151307():
        revert with 0, 65
    _5341 = mem[64]
    mem[mem[64]] = (2 * s) + 2
    mem[64] = mem[64] + floor32((2 * s) + 33) + 32
    if not (2 * s) + 2:
        if 0 >= mem[_5341]:
            revert with 0, 50
        mem[_5341 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if 1 >= mem[_5341]:
            revert with 0, 50
        mem[_5341 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 1 > !(2 * s):
            revert with 0, 17
        idx = (2 * s) + 1
        t = uint32(arg1)
        while idx > 1:
            if t % 16 >= 16:
                revert with 0, 50
            if idx >= mem[_5341]:
                revert with 0, 50
            mem[idx + _5341 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            t = Mask(252, 0, t) * 0.0625
            continue 
        if t:
            revert with 0, 'Strings: hex length insufficient'
        _8220 = mem[64]
        _8380 = mem[_1181 + _757 + _781 + 49]
        mem[mem[64] + 32 len ceil32(mem[_1181 + _757 + _781 + 49])] = mem[_1181 + _757 + _781 + 81 len ceil32(mem[_1181 + _757 + _781 + 49])]
        mem[mem[64] + _8380 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
        if ceil32(_8380) <= _8380:
            _10846 = mem[_5341]
            mem[mem[64] + _8380 + 47 len ceil32(mem[_5341])] = mem[_5341 + 32 len ceil32(mem[_5341])]
            if ceil32(_10846) <= _10846:
                _12506 = mem[64]
                mem[mem[64]] = _10846 + _8380 + 15
                mem[64] = _10846 + mem[64] + _8380 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = 0
                    emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10846 + _8220 + _8380 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10846 + _8220 + _8380 + 51] = 32
                _13132 = mem[_12506]
                mem[_10846 + _8220 + _8380 + 83] = mem[_12506]
                mem[_10846 + _8220 + _8380 + 115 len ceil32(_13132)] = mem[_12506 + 32 len ceil32(_13132)]
                if ceil32(_13132) > _13132:
                    mem[_13132 + _10846 + _8220 + _8380 + 115] = 0
                revert with 0, 32, mem[_10846 + _8220 + _8380 + 83 len ceil32(_13132) + 32]
            mem[_10846 + mem[64] + _8380 + 47] = 0
            _12507 = mem[64]
            mem[mem[64]] = _10846 + _8380 + 15
            mem[64] = _10846 + mem[64] + _8380 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = 0
                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10846 + _8220 + _8380 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10846 + _8220 + _8380 + 51] = 32
            _13135 = mem[_12507]
            mem[_10846 + _8220 + _8380 + 83] = mem[_12507]
            mem[_10846 + _8220 + _8380 + 115 len ceil32(_13135)] = mem[_12507 + 32 len ceil32(_13135)]
            if ceil32(_13135) > _13135:
                mem[_13135 + _10846 + _8220 + _8380 + 115] = 0
            revert with 0, 32, mem[_10846 + _8220 + _8380 + 83 len ceil32(_13135) + 32]
        _10847 = mem[_5341]
        mem[mem[64] + _8380 + 47 len ceil32(mem[_5341])] = mem[_5341 + 32 len ceil32(mem[_5341])]
        if ceil32(_10847) <= _10847:
            _12508 = mem[64]
            mem[mem[64]] = _10847 + _8380 + 15
            mem[64] = _10847 + mem[64] + _8380 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = 0
                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10847 + _8220 + _8380 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10847 + _8220 + _8380 + 51] = 32
            _13138 = mem[_12508]
            mem[_10847 + _8220 + _8380 + 83] = mem[_12508]
            mem[_10847 + _8220 + _8380 + 115 len ceil32(_13138)] = mem[_12508 + 32 len ceil32(_13138)]
            if ceil32(_13138) > _13138:
                mem[_13138 + _10847 + _8220 + _8380 + 115] = 0
            revert with 0, 32, mem[_10847 + _8220 + _8380 + 83 len ceil32(_13138) + 32]
        mem[_10847 + mem[64] + _8380 + 47] = 0
        _12509 = mem[64]
        mem[mem[64]] = _10847 + _8220 + _8380 + -mem[64] + 15
        mem[64] = _10847 + _8220 + _8380 + 47
        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
            if stor52[address(arg2)] >= stor51.length:
                revert with 0, 50
            stor51[stor52[address(arg2)]].field_192 = 0
            emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
        mem[_10847 + _8220 + _8380 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_10847 + _8220 + _8380 + 51] = 32
        _13141 = mem[_12509]
        mem[_10847 + _8220 + _8380 + 83] = mem[_12509]
        mem[_10847 + _8220 + _8380 + 115 len ceil32(_13141)] = mem[_12509 + 32 len ceil32(_13141)]
        if ceil32(_13141) > _13141:
            mem[_13141 + _10847 + _8220 + _8380 + 115] = 0
        revert with 0, 32, mem[_10847 + _8220 + _8380 + 83 len ceil32(_13141) + 32]
    mem[_5341 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
    if 0 >= mem[_5341]:
        revert with 0, 50
    mem[_5341 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    if 1 >= mem[_5341]:
        revert with 0, 50
    mem[_5341 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 1 > !(2 * s):
        revert with 0, 17
    idx = (2 * s) + 1
    t = uint32(arg1)
    while idx > 1:
        if t % 16 >= 16:
            revert with 0, 50
        if idx >= mem[_5341]:
            revert with 0, 50
        mem[idx + _5341 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        t = Mask(252, 0, t) * 0.0625
        continue 
    if t:
        revert with 0, 'Strings: hex length insufficient'
    _8221 = mem[64]
    _8381 = mem[_1181 + _757 + _781 + 49]
    mem[mem[64] + 32 len ceil32(mem[_1181 + _757 + _781 + 49])] = mem[_1181 + _757 + _781 + 81 len ceil32(mem[_1181 + _757 + _781 + 49])]
    mem[mem[64] + _8381 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
    if ceil32(_8381) <= _8381:
        _10848 = mem[_5341]
        mem[mem[64] + _8381 + 47 len ceil32(mem[_5341])] = mem[_5341 + 32 len ceil32(mem[_5341])]
        if ceil32(_10848) <= _10848:
            _12510 = mem[64]
            mem[mem[64]] = _10848 + _8381 + 15
            mem[64] = _10848 + mem[64] + _8381 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = 0
                emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10848 + _8221 + _8381 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10848 + _8221 + _8381 + 51] = 32
            _13144 = mem[_12510]
            mem[_10848 + _8221 + _8381 + 83] = mem[_12510]
            mem[_10848 + _8221 + _8381 + 115 len ceil32(_13144)] = mem[_12510 + 32 len ceil32(_13144)]
            if ceil32(_13144) > _13144:
                mem[_13144 + _10848 + _8221 + _8381 + 115] = 0
            revert with 0, 32, mem[_10848 + _8221 + _8381 + 83 len ceil32(_13144) + 32]
        mem[_10848 + mem[64] + _8381 + 47] = 0
        _12511 = mem[64]
        mem[mem[64]] = _10848 + _8381 + 15
        mem[64] = _10848 + mem[64] + _8381 + 47
        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
            if stor52[address(arg2)] >= stor51.length:
                revert with 0, 50
            stor51[stor52[address(arg2)]].field_192 = 0
            emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
        mem[_10848 + _8221 + _8381 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_10848 + _8221 + _8381 + 51] = 32
        _13147 = mem[_12511]
        mem[_10848 + _8221 + _8381 + 83] = mem[_12511]
        mem[_10848 + _8221 + _8381 + 115 len ceil32(_13147)] = mem[_12511 + 32 len ceil32(_13147)]
        if ceil32(_13147) > _13147:
            mem[_13147 + _10848 + _8221 + _8381 + 115] = 0
        revert with 0, 32, mem[_10848 + _8221 + _8381 + 83 len ceil32(_13147) + 32]
    _10849 = mem[_5341]
    mem[mem[64] + _8381 + 47 len ceil32(mem[_5341])] = mem[_5341 + 32 len ceil32(mem[_5341])]
    if ceil32(_10849) <= _10849:
        _12512 = mem[64]
        mem[mem[64]] = _10849 + _8381 + 15
        mem[64] = _10849 + mem[64] + _8381 + 47
        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
            if stor52[address(arg2)] >= stor51.length:
                revert with 0, 50
            stor51[stor52[address(arg2)]].field_192 = 0
            emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
        mem[_10849 + _8221 + _8381 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_10849 + _8221 + _8381 + 51] = 32
        _13150 = mem[_12512]
        mem[_10849 + _8221 + _8381 + 83] = mem[_12512]
        mem[_10849 + _8221 + _8381 + 115 len ceil32(_13150)] = mem[_12512 + 32 len ceil32(_13150)]
        if ceil32(_13150) > _13150:
            mem[_13150 + _10849 + _8221 + _8381 + 115] = 0
        revert with 0, 32, mem[_10849 + _8221 + _8381 + 83 len ceil32(_13150) + 32]
    mem[_10849 + mem[64] + _8381 + 47] = 0
    _12513 = mem[64]
    mem[mem[64]] = _10849 + _8381 + 15
    mem[64] = _10849 + mem[64] + _8381 + 47
    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
        if stor52[address(arg2)] >= stor51.length:
            revert with 0, 50
        stor51[stor52[address(arg2)]].field_192 = 0
        emit 0x45a0aeb9: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
    mem[_10849 + _8221 + _8381 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_10849 + _8221 + _8381 + 51] = 32
    _13153 = mem[_12513]
    mem[_10849 + _8221 + _8381 + 83] = mem[_12513]
    mem[_10849 + _8221 + _8381 + 115 len ceil32(_13153)] = mem[_12513 + 32 len ceil32(_13153)]
    if ceil32(_13153) > _13153:
        mem[_13153 + _10849 + _8221 + _8381 + 115] = 0
    revert with 0, 32, mem[_10849 + _8221 + _8381 + 83 len ceil32(_13153) + 32]
}

function sub_8b9b3b63(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    if stor52[address(msg.sender)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(msg.sender)]].field_192 < 100:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 100
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if stor52[address(arg2)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(arg2)]].field_0 == address(arg2):
        mem[32] = 52
        if stor52[address(arg2)] >= stor51.length:
            revert with 0, 50
        if stor52[address(arg2)] >= stor51.length:
            revert with 0, 50
        mem[0] = 51
        mem[96] = 42
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[128 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        mem[129 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        idx = 41
        s = stor51[stor52[address(arg2)]].field_0
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if stor51[stor52[address(arg2)]].field_0 + 10240:
            revert with 0, 'Strings: hex length insufficient'
        if stor51[stor52[address(arg2)]].field_192 >= uint32(arg1):
            if not uint32(arg1):
                mem[288 len 64] = 0, mem[129 len 63]
                var60001 = 64
                mem[330] = 0x2068617320726f6c652000000000000000000000000000000000000000000000
                mem[340] = 0x3078303000000000000000000000000000000000000000000000000000000000
                mem[344] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[348] = 32
                mem[380] = mem[256]
                mem[412 len ceil32(mem[256])] = mem[288 len ceil32(mem[256])]
                if ceil32(mem[256]) > mem[256]:
                    mem[mem[256] + 412] = 0
                revert with 0, 32, mem[256], mem[412 len ceil32(mem[256])]
            s = 0
            idx = uint32(arg1)
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = Mask(248, 0, idx) * 0.00390625
                continue 
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 > !(2 * s):
                revert with 0, 17
            if (2 * s) + 2 > test266151307():
                revert with 0, 65
            mem[192] = (2 * s) + 2
            mem[64] = floor32((2 * s) + 33) + 224
            if not (2 * s) + 2:
                if 0 >= (2 * s) + 2:
                    revert with 0, 50
                mem[224 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= (2 * s) + 2:
                    revert with 0, 50
                mem[225 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * s):
                    revert with 0, 17
                idx = (2 * s) + 1
                t = uint32(arg1)
                while idx > 1:
                    if t % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[192]:
                        revert with 0, 50
                    mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    t = Mask(252, 0, t) * 0.0625
                    continue 
                if t:
                    revert with 0, 'Strings: hex length insufficient'
                _730 = mem[64]
                _754 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 32] = 0x2068617320726f6c652000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _1180 = mem[192]
                    mem[mem[64] + mem[96] + 42 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                    if ceil32(_1180) <= _1180:
                        _1876 = mem[64]
                        mem[64] = _1180 + mem[64] + mem[96] + 42
                        mem[_1180 + _730 + mem[96] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1180 + _730 + _754 + 46] = 32
                        _1980 = mem[_1876]
                        mem[_1180 + _730 + _754 + 78] = mem[_1876]
                        mem[_1180 + _730 + _754 + 110 len ceil32(_1980)] = mem[_1876 + 32 len ceil32(_1980)]
                        if ceil32(_1980) > _1980:
                            mem[_1980 + _1180 + _730 + _754 + 110] = 0
                        revert with 0, 32, mem[_1180 + _730 + _754 + 78 len ceil32(_1980) + 32]
                    mem[_1180 + mem[64] + mem[96] + 42] = 0
                    _1877 = mem[64]
                    mem[64] = _1180 + _730 + _754 + 42
                    mem[_1180 + _730 + _754 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1180 + _730 + _754 + 46] = 32
                    _1981 = mem[_1877]
                    mem[_1180 + _730 + _754 + 78] = mem[_1877]
                    mem[_1180 + _730 + _754 + 110 len ceil32(_1981)] = mem[_1877 + 32 len ceil32(_1981)]
                    if ceil32(_1981) > _1981:
                        mem[_1981 + _1180 + _730 + _754 + 110] = 0
                    revert with 0, 32, mem[_1180 + _730 + _754 + 78 len ceil32(_1981) + 32]
                _1181 = mem[192]
                mem[mem[64] + mem[96] + 42 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                if ceil32(_1181) <= _1181:
                    _1878 = mem[64]
                    mem[64] = _1181 + mem[64] + mem[96] + 42
                    mem[_1181 + _730 + mem[96] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1181 + _730 + _754 + 46] = 32
                    _1982 = mem[_1878]
                    mem[_1181 + _730 + _754 + 78] = mem[_1878]
                    mem[_1181 + _730 + _754 + 110 len ceil32(_1982)] = mem[_1878 + 32 len ceil32(_1982)]
                    if ceil32(_1982) > _1982:
                        mem[_1982 + _1181 + _730 + _754 + 110] = 0
                    revert with 0, 32, mem[_1181 + _730 + _754 + 78 len ceil32(_1982) + 32]
                mem[_1181 + mem[64] + mem[96] + 42] = 0
                _1879 = mem[64]
                mem[64] = _1181 + _730 + _754 + 42
                mem[_1181 + _730 + _754 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1181 + _730 + _754 + 46] = 32
                _1983 = mem[_1879]
                mem[_1181 + _730 + _754 + 78] = mem[_1879]
                mem[_1181 + _730 + _754 + 110 len ceil32(_1983)] = mem[_1879 + 32 len ceil32(_1983)]
                if ceil32(_1983) > _1983:
                    mem[_1983 + _1181 + _730 + _754 + 110] = 0
                revert with 0, 32, mem[_1181 + _730 + _754 + 78 len ceil32(_1983) + 32]
            mem[224 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
            if 0 >= (2 * s) + 2:
                revert with 0, 50
            mem[224 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= (2 * s) + 2:
                revert with 0, 50
            mem[225 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[192]:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _731 = mem[64]
            _755 = mem[96]
            mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 32] = 0x2068617320726f6c652000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _1182 = mem[192]
                mem[mem[64] + mem[96] + 42 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                if ceil32(_1182) <= _1182:
                    _1880 = mem[64]
                    mem[64] = _1182 + mem[64] + mem[96] + 42
                    mem[_1182 + _731 + mem[96] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1182 + _731 + _755 + 46] = 32
                    _1984 = mem[_1880]
                    mem[_1182 + _731 + _755 + 78] = mem[_1880]
                    mem[_1182 + _731 + _755 + 110 len ceil32(_1984)] = mem[_1880 + 32 len ceil32(_1984)]
                    if ceil32(_1984) > _1984:
                        mem[_1984 + _1182 + _731 + _755 + 110] = 0
                    revert with 0, 32, mem[_1182 + _731 + _755 + 78 len ceil32(_1984) + 32]
                mem[_1182 + mem[64] + mem[96] + 42] = 0
                _1881 = mem[64]
                mem[64] = _1182 + mem[64] + mem[96] + 42
                mem[_1182 + _731 + mem[96] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1182 + _731 + _755 + 46] = 32
                _1985 = mem[_1881]
                mem[_1182 + _731 + _755 + 78] = mem[_1881]
                mem[_1182 + _731 + _755 + 110 len ceil32(_1985)] = mem[_1881 + 32 len ceil32(_1985)]
                if ceil32(_1985) > _1985:
                    mem[_1985 + _1182 + _731 + _755 + 110] = 0
                revert with 0, 32, mem[_1182 + _731 + _755 + 78 len ceil32(_1985) + 32]
            _1183 = mem[192]
            mem[mem[64] + mem[96] + 42 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            if ceil32(_1183) <= _1183:
                _1882 = mem[64]
                mem[64] = _1183 + mem[64] + mem[96] + 42
                mem[_1183 + _731 + mem[96] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1183 + _731 + _755 + 46] = 32
                _1986 = mem[_1882]
                mem[_1183 + _731 + _755 + 78] = mem[_1882]
                mem[_1183 + _731 + _755 + 110 len ceil32(_1986)] = mem[_1882 + 32 len ceil32(_1986)]
                if ceil32(_1986) > _1986:
                    mem[_1986 + _1183 + _731 + _755 + 110] = 0
                revert with 0, 32, mem[_1183 + _731 + _755 + 78 len ceil32(_1986) + 32]
            mem[_1183 + mem[64] + mem[96] + 42] = 0
            _1883 = mem[64]
            mem[64] = _1183 + mem[64] + mem[96] + 42
            mem[_1183 + _731 + mem[96] + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_1183 + _731 + _755 + 46] = 32
            _1987 = mem[_1883]
            mem[_1183 + _731 + _755 + 78] = mem[_1883]
            mem[_1183 + _731 + _755 + 110 len ceil32(_1987)] = mem[_1883 + 32 len ceil32(_1987)]
            if ceil32(_1987) > _1987:
                mem[_1987 + _1183 + _731 + _755 + 110] = 0
            revert with 0, 32, mem[_1183 + _731 + _755 + 78 len ceil32(_1987) + 32]
        if not uint32(arg1):
            mem[192] = 4
            mem[224] = 0x3078303000000000000000000000000000000000000000000000000000000000
            mem[288 len 64] = 0, mem[129 len 63]
            var59001 = 64
            mem[330] = 0x2068617320726f6c652000000000000000000000000000000000000000000000
            mem[340] = 0x3078303000000000000000000000000000000000000000000000000000000000
            mem[256] = 56
            mem[32] = 52
            if stor52[msg.sender] >= stor51.length:
                revert with 0, 50
            mem[0] = 51
            mem[344] = 42
            mem[376 len 42] = call.data[calldata.size len 42]
            mem[376 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            mem[377 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            idx = 41
            s = stor51[stor52[msg.sender]].field_0
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + 376 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if stor51[stor52[msg.sender]].field_0 + 10240:
                revert with 0, 'Strings: hex length insufficient'
            if not uint32(arg1):
                var102001 = 64
                if uint32(arg1) > stor51[stor52[msg.sender]].field_192:
                    revert with 0, 32, 61, mem[408 len 42], 0, 813183024, 0 >> 232, 0
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            s = 0
            idx = uint32(arg1)
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = Mask(248, 0, idx) * 0.00390625
                continue 
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 > !(2 * s):
                revert with 0, 17
            if (2 * s) + 2 > test266151307():
                revert with 0, 65
            mem[440] = (2 * s) + 2
            mem[64] = floor32((2 * s) + 33) + 472
            if not (2 * s) + 2:
                if 0 >= (2 * s) + 2:
                    revert with 0, 50
                mem[472 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= (2 * s) + 2:
                    revert with 0, 50
                mem[473 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * s):
                    revert with 0, 17
                idx = (2 * s) + 1
                t = uint32(arg1)
                while idx > 1:
                    if t % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[440]:
                        revert with 0, 50
                    mem[idx + 472 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    t = Mask(252, 0, t) * 0.0625
                    continue 
                if t:
                    revert with 0, 'Strings: hex length insufficient'
                _3326 = mem[64]
                _3382 = mem[344]
                mem[mem[64] + 32 len ceil32(mem[344])] = mem[376 len ceil32(mem[344])]
                var127001 = ceil32(_3382)
                mem[mem[64] + _3382 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                if ceil32(_3382) <= _3382:
                    _5112 = mem[440]
                    mem[mem[64] + _3382 + 47 len ceil32(mem[440])] = mem[472 len ceil32(mem[440])]
                    if ceil32(_5112) <= _5112:
                        _8212 = mem[64]
                        mem[mem[64]] = _5112 + _3382 + 15
                        mem[64] = _5112 + mem[64] + _3382 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_5112 + _3326 + _3382 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5112 + _3326 + _3382 + 51] = 32
                        _8758 = mem[_8212]
                        mem[_5112 + _3326 + _3382 + 83] = mem[_8212]
                        mem[_5112 + _3326 + _3382 + 115 len ceil32(_8758)] = mem[_8212 + 32 len ceil32(_8758)]
                        if ceil32(_8758) > _8758:
                            mem[_8758 + _5112 + _3326 + _3382 + 115] = 0
                        revert with 0, 32, mem[_5112 + _3326 + _3382 + 83 len ceil32(_8758) + 32]
                    mem[_5112 + mem[64] + _3382 + 47] = 0
                    _8213 = mem[64]
                    mem[mem[64]] = _5112 + _3382 + 15
                    mem[64] = _5112 + mem[64] + _3382 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_5112 + _3326 + _3382 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5112 + _3326 + _3382 + 51] = 32
                    _8761 = mem[_8213]
                    mem[_5112 + _3326 + _3382 + 83] = mem[_8213]
                    mem[_5112 + _3326 + _3382 + 115 len ceil32(_8761)] = mem[_8213 + 32 len ceil32(_8761)]
                    if ceil32(_8761) > _8761:
                        mem[_8761 + _5112 + _3326 + _3382 + 115] = 0
                    revert with 0, 32, mem[_5112 + _3326 + _3382 + 83 len ceil32(_8761) + 32]
                _5113 = mem[440]
                mem[mem[64] + _3382 + 47 len ceil32(mem[440])] = mem[472 len ceil32(mem[440])]
                if ceil32(_5113) <= _5113:
                    _8214 = mem[64]
                    mem[mem[64]] = _5113 + _3382 + 15
                    mem[64] = _5113 + mem[64] + _3382 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_5113 + _3326 + _3382 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5113 + _3326 + _3382 + 51] = 32
                    _8764 = mem[_8214]
                    mem[_5113 + _3326 + _3382 + 83] = mem[_8214]
                    mem[_5113 + _3326 + _3382 + 115 len ceil32(_8764)] = mem[_8214 + 32 len ceil32(_8764)]
                    if ceil32(_8764) > _8764:
                        mem[_8764 + _5113 + _3326 + _3382 + 115] = 0
                    revert with 0, 32, mem[_5113 + _3326 + _3382 + 83 len ceil32(_8764) + 32]
                mem[_5113 + mem[64] + _3382 + 47] = 0
                _8215 = mem[64]
                mem[mem[64]] = _5113 + _3382 + 15
                mem[64] = _5113 + mem[64] + _3382 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_5113 + _3326 + _3382 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_5113 + _3326 + _3382 + 51] = 32
                _8767 = mem[_8215]
                mem[_5113 + _3326 + _3382 + 83] = mem[_8215]
                mem[_5113 + _3326 + _3382 + 115 len ceil32(_8767)] = mem[_8215 + 32 len ceil32(_8767)]
                if ceil32(_8767) > _8767:
                    mem[_8767 + _5113 + _3326 + _3382 + 115] = 0
                revert with 0, 32, mem[_5113 + _3326 + _3382 + 83 len ceil32(_8767) + 32]
            mem[472 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
            if 0 >= (2 * s) + 2:
                revert with 0, 50
            mem[472 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= (2 * s) + 2:
                revert with 0, 50
            mem[473 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[440]:
                    revert with 0, 50
                mem[idx + 472 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _3327 = mem[64]
            _3383 = mem[344]
            mem[mem[64] + 32 len ceil32(mem[344])] = mem[376 len ceil32(mem[344])]
            var128001 = ceil32(_3383)
            mem[mem[64] + _3383 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            if ceil32(_3383) <= _3383:
                _5114 = mem[440]
                mem[mem[64] + _3383 + 47 len ceil32(mem[440])] = mem[472 len ceil32(mem[440])]
                if ceil32(_5114) <= _5114:
                    _8216 = mem[64]
                    mem[mem[64]] = _5114 + _3383 + 15
                    mem[64] = _5114 + mem[64] + _3383 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_5114 + _3327 + _3383 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5114 + _3327 + _3383 + 51] = 32
                    _8770 = mem[_8216]
                    mem[_5114 + _3327 + _3383 + 83] = mem[_8216]
                    mem[_5114 + _3327 + _3383 + 115 len ceil32(_8770)] = mem[_8216 + 32 len ceil32(_8770)]
                    if ceil32(_8770) > _8770:
                        mem[_8770 + _5114 + _3327 + _3383 + 115] = 0
                    revert with 0, 32, mem[_5114 + _3327 + _3383 + 83 len ceil32(_8770) + 32]
                mem[_5114 + mem[64] + _3383 + 47] = 0
                _8217 = mem[64]
                mem[mem[64]] = _5114 + _3383 + 15
                mem[64] = _5114 + mem[64] + _3383 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_5114 + _3327 + _3383 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_5114 + _3327 + _3383 + 51] = 32
                _8773 = mem[_8217]
                mem[_5114 + _3327 + _3383 + 83] = mem[_8217]
                mem[_5114 + _3327 + _3383 + 115 len ceil32(_8773)] = mem[_8217 + 32 len ceil32(_8773)]
                if ceil32(_8773) > _8773:
                    mem[_8773 + _5114 + _3327 + _3383 + 115] = 0
                revert with 0, 32, mem[_5114 + _3327 + _3383 + 83 len ceil32(_8773) + 32]
            _5115 = mem[440]
            mem[mem[64] + _3383 + 47 len ceil32(mem[440])] = mem[472 len ceil32(mem[440])]
            if ceil32(_5115) <= _5115:
                _8218 = mem[64]
                mem[mem[64]] = _5115 + _3383 + 15
                mem[64] = _5115 + mem[64] + _3383 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_5115 + _3327 + _3383 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_5115 + _3327 + _3383 + 51] = 32
                _8776 = mem[_8218]
                mem[_5115 + _3327 + _3383 + 83] = mem[_8218]
                mem[_5115 + _3327 + _3383 + 115 len ceil32(_8776)] = mem[_8218 + 32 len ceil32(_8776)]
                if ceil32(_8776) > _8776:
                    mem[_8776 + _5115 + _3327 + _3383 + 115] = 0
                revert with 0, 32, mem[_5115 + _3327 + _3383 + 83 len ceil32(_8776) + 32]
            mem[_5115 + mem[64] + _3383 + 47] = 0
            _8219 = mem[64]
            mem[mem[64]] = _5115 + _3383 + 15
            mem[64] = _5115 + mem[64] + _3383 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_5115 + _3327 + _3383 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_5115 + _3327 + _3383 + 51] = 32
            _8779 = mem[_8219]
            mem[_5115 + _3327 + _3383 + 83] = mem[_8219]
            mem[_5115 + _3327 + _3383 + 115 len ceil32(_8779)] = mem[_8219 + 32 len ceil32(_8779)]
            if ceil32(_8779) > _8779:
                mem[_8779 + _5115 + _3327 + _3383 + 115] = 0
            revert with 0, 32, mem[_5115 + _3327 + _3383 + 83 len ceil32(_8779) + 32]
        s = 0
        idx = uint32(arg1)
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = Mask(248, 0, idx) * 0.00390625
            continue 
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 2 > !(2 * s):
            revert with 0, 17
        if (2 * s) + 2 > test266151307():
            revert with 0, 65
        mem[192] = (2 * s) + 2
        mem[64] = floor32((2 * s) + 33) + 224
        if not (2 * s) + 2:
            if 0 >= (2 * s) + 2:
                revert with 0, 50
            mem[224 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= (2 * s) + 2:
                revert with 0, 50
            mem[225 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[192]:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _724 = mem[64]
            _748 = mem[96]
            mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + mem[96] + 32] = 0x2068617320726f6c652000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _1172 = mem[192]
                mem[mem[64] + mem[96] + 42 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
                if ceil32(_1172) <= _1172:
                    mem[mem[64]] = _1172 + mem[96] + 10
                    mem[32] = 52
                    if stor52[msg.sender] >= stor51.length:
                        revert with 0, 50
                    mem[0] = 51
                    mem[_1172 + mem[64] + _748 + 42] = 42
                    mem[64] = _1172 + mem[64] + _748 + 138
                    mem[_1172 + _724 + _748 + 74 len 42] = call.data[calldata.size len 42]
                    mem[_1172 + _724 + _748 + 74 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    mem[_1172 + _724 + _748 + 75 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    idx = 41
                    s = stor51[stor52[msg.sender]].field_0
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= 42:
                            revert with 0, 50
                        mem[idx + _1172 + _724 + _748 + 74 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if stor51[stor52[msg.sender]].field_0 + 10240:
                        revert with 0, 'Strings: hex length insufficient'
                    if not uint32(arg1):
                        _3356 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3356] = 4
                        mem[_3356 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                        _3452 = mem[64]
                        mem[mem[64] + 32 len 64] = 0, mem[_1172 + _724 + _748 + 75 len 63]
                        var127001 = 64
                        mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                        mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 93] = 0
                        _8145 = mem[64]
                        mem[mem[64]] = 61
                        mem[64] = mem[64] + 93
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_3452 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3452 + 97] = 32
                        _8599 = mem[_8145]
                        mem[_3452 + 129] = mem[_8145]
                        mem[_3452 + 161 len ceil32(_8599)] = mem[_8145 + 32 len ceil32(_8599)]
                        if ceil32(_8599) > _8599:
                            mem[_8599 + _3452 + 161] = 0
                        revert with 0, 32, mem[_3452 + 129 len ceil32(_8599) + 32]
                    s = 0
                    idx = uint32(arg1)
                    while idx:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = Mask(248, 0, idx) * 0.00390625
                        continue 
                    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 2 > !(2 * s):
                        revert with 0, 17
                    if (2 * s) + 2 > test266151307():
                        revert with 0, 65
                    _5276 = mem[64]
                    mem[mem[64]] = (2 * s) + 2
                    mem[64] = mem[64] + floor32((2 * s) + 33) + 32
                    if not (2 * s) + 2:
                        if 0 >= mem[_5276]:
                            revert with 0, 50
                        mem[_5276 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                        if 1 >= mem[_5276]:
                            revert with 0, 50
                        mem[_5276 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 1 > !(2 * s):
                            revert with 0, 17
                        idx = (2 * s) + 1
                        t = uint32(arg1)
                        while idx > 1:
                            if t % 16 >= 16:
                                revert with 0, 50
                            if idx >= mem[_5276]:
                                revert with 0, 50
                            mem[idx + _5276 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            t = Mask(252, 0, t) * 0.0625
                            continue 
                        if t:
                            revert with 0, 'Strings: hex length insufficient'
                        _8140 = mem[64]
                        _8300 = mem[_1172 + _724 + _748 + 42]
                        mem[mem[64] + 32 len ceil32(mem[_1172 + _724 + _748 + 42])] = mem[_1172 + _724 + _748 + 74 len ceil32(mem[_1172 + _724 + _748 + 42])]
                        mem[mem[64] + _8300 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                        if ceil32(_8300) <= _8300:
                            _10828 = mem[_5276]
                            mem[mem[64] + _8300 + 47 len ceil32(mem[_5276])] = mem[_5276 + 32 len ceil32(mem[_5276])]
                            if ceil32(_10828) <= _10828:
                                _12428 = mem[64]
                                mem[mem[64]] = _10828 + _8300 + 15
                                mem[64] = _10828 + mem[64] + _8300 + 47
                                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                                    if stor52[address(arg2)] >= stor51.length:
                                        revert with 0, 50
                                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                                mem[_10828 + _8140 + _8300 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_10828 + _8140 + _8300 + 51] = 32
                                _12814 = mem[_12428]
                                mem[_10828 + _8140 + _8300 + 83] = mem[_12428]
                                mem[_10828 + _8140 + _8300 + 115 len ceil32(_12814)] = mem[_12428 + 32 len ceil32(_12814)]
                                if ceil32(_12814) > _12814:
                                    mem[_12814 + _10828 + _8140 + _8300 + 115] = 0
                                revert with 0, 32, mem[_10828 + _8140 + _8300 + 83 len ceil32(_12814) + 32]
                            mem[_10828 + mem[64] + _8300 + 47] = 0
                            _12429 = mem[64]
                            mem[mem[64]] = _10828 + _8140 + _8300 + -mem[64] + 15
                            mem[64] = _10828 + _8140 + _8300 + 47
                            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                                if stor52[address(arg2)] >= stor51.length:
                                    revert with 0, 50
                                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                            mem[_10828 + _8140 + _8300 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_10828 + _8140 + _8300 + 51] = 32
                            _12817 = mem[_12429]
                            mem[_10828 + _8140 + _8300 + 83] = mem[_12429]
                            mem[_10828 + _8140 + _8300 + 115 len ceil32(_12817)] = mem[_12429 + 32 len ceil32(_12817)]
                            if ceil32(_12817) > _12817:
                                mem[_12817 + _10828 + _8140 + _8300 + 115] = 0
                            revert with 0, 32, mem[_10828 + _8140 + _8300 + 83 len ceil32(_12817) + 32]
                        _10829 = mem[_5276]
                        mem[mem[64] + _8300 + 47 len ceil32(mem[_5276])] = mem[_5276 + 32 len ceil32(mem[_5276])]
                        if ceil32(_10829) <= _10829:
                            _12430 = mem[64]
                            mem[mem[64]] = _10829 + _8300 + 15
                            mem[64] = _10829 + mem[64] + _8300 + 47
                            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                                if stor52[address(arg2)] >= stor51.length:
                                    revert with 0, 50
                                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                            mem[_10829 + _8140 + _8300 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_10829 + _8140 + _8300 + 51] = 32
                            _12820 = mem[_12430]
                            mem[_10829 + _8140 + _8300 + 83] = mem[_12430]
                            mem[_10829 + _8140 + _8300 + 115 len ceil32(_12820)] = mem[_12430 + 32 len ceil32(_12820)]
                            if ceil32(_12820) > _12820:
                                mem[_12820 + _10829 + _8140 + _8300 + 115] = 0
                            revert with 0, 32, mem[_10829 + _8140 + _8300 + 83 len ceil32(_12820) + 32]
                        mem[_10829 + mem[64] + _8300 + 47] = 0
                        _12431 = mem[64]
                        mem[mem[64]] = _10829 + _8300 + 15
                        mem[64] = _10829 + mem[64] + _8300 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10829 + _8140 + _8300 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10829 + _8140 + _8300 + 51] = 32
                        _12823 = mem[_12431]
                        mem[_10829 + _8140 + _8300 + 83] = mem[_12431]
                        mem[_10829 + _8140 + _8300 + 115 len ceil32(_12823)] = mem[_12431 + 32 len ceil32(_12823)]
                        if ceil32(_12823) > _12823:
                            mem[_12823 + _10829 + _8140 + _8300 + 115] = 0
                        revert with 0, 32, mem[_10829 + _8140 + _8300 + 83 len ceil32(_12823) + 32]
                    mem[_5276 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
                    if 0 >= mem[_5276]:
                        revert with 0, 50
                    mem[_5276 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_5276]:
                        revert with 0, 50
                    mem[_5276 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 1 > !(2 * s):
                        revert with 0, 17
                    idx = (2 * s) + 1
                    t = uint32(arg1)
                    while idx > 1:
                        if t % 16 >= 16:
                            revert with 0, 50
                        if idx >= mem[_5276]:
                            revert with 0, 50
                        mem[idx + _5276 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        t = Mask(252, 0, t) * 0.0625
                        continue 
                    if t:
                        revert with 0, 'Strings: hex length insufficient'
                    _8141 = mem[64]
                    _8301 = mem[_1172 + _724 + _748 + 42]
                    mem[mem[64] + 32 len ceil32(mem[_1172 + _724 + _748 + 42])] = mem[_1172 + _724 + _748 + 74 len ceil32(mem[_1172 + _724 + _748 + 42])]
                    mem[mem[64] + _8301 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                    if ceil32(_8301) <= _8301:
                        _10830 = mem[_5276]
                        mem[mem[64] + _8301 + 47 len ceil32(mem[_5276])] = mem[_5276 + 32 len ceil32(mem[_5276])]
                        if ceil32(_10830) <= _10830:
                            _12432 = mem[64]
                            mem[mem[64]] = _10830 + _8301 + 15
                            mem[64] = _10830 + mem[64] + _8301 + 47
                            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                                if stor52[address(arg2)] >= stor51.length:
                                    revert with 0, 50
                                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                            mem[_10830 + _8141 + _8301 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_10830 + _8141 + _8301 + 51] = 32
                            _12826 = mem[_12432]
                            mem[_10830 + _8141 + _8301 + 83] = mem[_12432]
                            mem[_10830 + _8141 + _8301 + 115 len ceil32(_12826)] = mem[_12432 + 32 len ceil32(_12826)]
                            if ceil32(_12826) > _12826:
                                mem[_12826 + _10830 + _8141 + _8301 + 115] = 0
                            revert with 0, 32, mem[_10830 + _8141 + _8301 + 83 len ceil32(_12826) + 32]
                        mem[_10830 + mem[64] + _8301 + 47] = 0
                        _12433 = mem[64]
                        mem[mem[64]] = _10830 + _8301 + 15
                        mem[64] = _10830 + mem[64] + _8301 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10830 + _8141 + _8301 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10830 + _8141 + _8301 + 51] = 32
                        _12829 = mem[_12433]
                        mem[_10830 + _8141 + _8301 + 83] = mem[_12433]
                        mem[_10830 + _8141 + _8301 + 115 len ceil32(_12829)] = mem[_12433 + 32 len ceil32(_12829)]
                        if ceil32(_12829) > _12829:
                            mem[_12829 + _10830 + _8141 + _8301 + 115] = 0
                        revert with 0, 32, mem[_10830 + _8141 + _8301 + 83 len ceil32(_12829) + 32]
                    _10831 = mem[_5276]
                    mem[mem[64] + _8301 + 47 len ceil32(mem[_5276])] = mem[_5276 + 32 len ceil32(mem[_5276])]
                    if ceil32(_10831) <= _10831:
                        _12434 = mem[64]
                        mem[mem[64]] = _10831 + _8301 + 15
                        mem[64] = _10831 + mem[64] + _8301 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10831 + _8141 + _8301 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10831 + _8141 + _8301 + 51] = 32
                        _12832 = mem[_12434]
                        mem[_10831 + _8141 + _8301 + 83] = mem[_12434]
                        mem[_10831 + _8141 + _8301 + 115 len ceil32(_12832)] = mem[_12434 + 32 len ceil32(_12832)]
                        if ceil32(_12832) > _12832:
                            mem[_12832 + _10831 + _8141 + _8301 + 115] = 0
                        revert with 0, 32, mem[_10831 + _8141 + _8301 + 83 len ceil32(_12832) + 32]
                    mem[_10831 + mem[64] + _8301 + 47] = 0
                    _12435 = mem[64]
                    mem[mem[64]] = _10831 + _8301 + 15
                    mem[64] = _10831 + mem[64] + _8301 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10831 + _8141 + _8301 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10831 + _8141 + _8301 + 51] = 32
                    _12835 = mem[_12435]
                    mem[_10831 + _8141 + _8301 + 83] = mem[_12435]
                    mem[_10831 + _8141 + _8301 + 115 len ceil32(_12835)] = mem[_12435 + 32 len ceil32(_12835)]
                    if ceil32(_12835) > _12835:
                        mem[_12835 + _10831 + _8141 + _8301 + 115] = 0
                    revert with 0, 32, mem[_10831 + _8141 + _8301 + 83 len ceil32(_12835) + 32]
                mem[_1172 + mem[64] + mem[96] + 42] = 0
                mem[mem[64]] = _1172 + mem[96] + 10
                mem[32] = 52
                if stor52[msg.sender] >= stor51.length:
                    revert with 0, 50
                mem[0] = 51
                mem[_1172 + mem[64] + _748 + 42] = 42
                mem[64] = _1172 + mem[64] + _748 + 138
                mem[_1172 + _724 + _748 + 74 len 42] = call.data[calldata.size len 42]
                mem[_1172 + _724 + _748 + 74 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                mem[_1172 + _724 + _748 + 75 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                idx = 41
                s = stor51[stor52[msg.sender]].field_0
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 42:
                        revert with 0, 50
                    mem[idx + _1172 + _724 + _748 + 74 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if stor51[stor52[msg.sender]].field_0 + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                if not uint32(arg1):
                    _3357 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3357] = 4
                    mem[_3357 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                    _3453 = mem[64]
                    mem[mem[64] + 32 len 64] = 0, mem[_1172 + _724 + _748 + 75 len 63]
                    var127001 = 64
                    mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                    mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 93] = 0
                    _8151 = mem[64]
                    mem[mem[64]] = 61
                    mem[64] = mem[64] + 93
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_3453 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3453 + 97] = 32
                    _8611 = mem[_8151]
                    mem[_3453 + 129] = mem[_8151]
                    mem[_3453 + 161 len ceil32(_8611)] = mem[_8151 + 32 len ceil32(_8611)]
                    if ceil32(_8611) > _8611:
                        mem[_8611 + _3453 + 161] = 0
                    revert with 0, 32, mem[_3453 + 129 len ceil32(_8611) + 32]
                s = 0
                idx = uint32(arg1)
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = Mask(248, 0, idx) * 0.00390625
                    continue 
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 > !(2 * s):
                    revert with 0, 17
                if (2 * s) + 2 > test266151307():
                    revert with 0, 65
                _5281 = mem[64]
                mem[mem[64]] = (2 * s) + 2
                mem[64] = mem[64] + floor32((2 * s) + 33) + 32
                if not (2 * s) + 2:
                    if 0 >= mem[_5281]:
                        revert with 0, 50
                    mem[_5281 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_5281]:
                        revert with 0, 50
                    mem[_5281 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 1 > !(2 * s):
                        revert with 0, 17
                    idx = (2 * s) + 1
                    t = uint32(arg1)
                    while idx > 1:
                        if t % 16 >= 16:
                            revert with 0, 50
                        if idx >= mem[_5281]:
                            revert with 0, 50
                        mem[idx + _5281 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        t = Mask(252, 0, t) * 0.0625
                        continue 
                    if t:
                        revert with 0, 'Strings: hex length insufficient'
                    _8146 = mem[64]
                    _8306 = mem[_1172 + _724 + _748 + 42]
                    mem[mem[64] + 32 len ceil32(mem[_1172 + _724 + _748 + 42])] = mem[_1172 + _724 + _748 + 74 len ceil32(mem[_1172 + _724 + _748 + 42])]
                    mem[mem[64] + _8306 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                    if ceil32(_8306) <= _8306:
                        _10832 = mem[_5281]
                        mem[mem[64] + _8306 + 47 len ceil32(mem[_5281])] = mem[_5281 + 32 len ceil32(mem[_5281])]
                        if ceil32(_10832) <= _10832:
                            _12436 = mem[64]
                            mem[mem[64]] = _10832 + _8306 + 15
                            mem[64] = _10832 + mem[64] + _8306 + 47
                            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                                if stor52[address(arg2)] >= stor51.length:
                                    revert with 0, 50
                                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                            mem[_10832 + _8146 + _8306 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_10832 + _8146 + _8306 + 51] = 32
                            _12838 = mem[_12436]
                            mem[_10832 + _8146 + _8306 + 83] = mem[_12436]
                            mem[_10832 + _8146 + _8306 + 115 len ceil32(_12838)] = mem[_12436 + 32 len ceil32(_12838)]
                            if ceil32(_12838) > _12838:
                                mem[_12838 + _10832 + _8146 + _8306 + 115] = 0
                            revert with 0, 32, mem[_10832 + _8146 + _8306 + 83 len ceil32(_12838) + 32]
                        mem[_10832 + mem[64] + _8306 + 47] = 0
                        _12437 = mem[64]
                        mem[mem[64]] = _10832 + _8306 + 15
                        mem[64] = _10832 + mem[64] + _8306 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10832 + _8146 + _8306 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10832 + _8146 + _8306 + 51] = 32
                        _12841 = mem[_12437]
                        mem[_10832 + _8146 + _8306 + 83] = mem[_12437]
                        mem[_10832 + _8146 + _8306 + 115 len ceil32(_12841)] = mem[_12437 + 32 len ceil32(_12841)]
                        if ceil32(_12841) > _12841:
                            mem[_12841 + _10832 + _8146 + _8306 + 115] = 0
                        revert with 0, 32, mem[_10832 + _8146 + _8306 + 83 len ceil32(_12841) + 32]
                    _10833 = mem[_5281]
                    mem[mem[64] + _8306 + 47 len ceil32(mem[_5281])] = mem[_5281 + 32 len ceil32(mem[_5281])]
                    if ceil32(_10833) <= _10833:
                        _12438 = mem[64]
                        mem[mem[64]] = _10833 + _8306 + 15
                        mem[64] = _10833 + mem[64] + _8306 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10833 + _8146 + _8306 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10833 + _8146 + _8306 + 51] = 32
                        _12844 = mem[_12438]
                        mem[_10833 + _8146 + _8306 + 83] = mem[_12438]
                        mem[_10833 + _8146 + _8306 + 115 len ceil32(_12844)] = mem[_12438 + 32 len ceil32(_12844)]
                        if ceil32(_12844) > _12844:
                            mem[_12844 + _10833 + _8146 + _8306 + 115] = 0
                        revert with 0, 32, mem[_10833 + _8146 + _8306 + 83 len ceil32(_12844) + 32]
                    mem[_10833 + mem[64] + _8306 + 47] = 0
                    _12439 = mem[64]
                    mem[mem[64]] = _10833 + _8306 + 15
                    mem[64] = _10833 + mem[64] + _8306 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10833 + _8146 + _8306 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10833 + _8146 + _8306 + 51] = 32
                    _12847 = mem[_12439]
                    mem[_10833 + _8146 + _8306 + 83] = mem[_12439]
                    mem[_10833 + _8146 + _8306 + 115 len ceil32(_12847)] = mem[_12439 + 32 len ceil32(_12847)]
                    if ceil32(_12847) > _12847:
                        mem[_12847 + _10833 + _8146 + _8306 + 115] = 0
                    revert with 0, 32, mem[_10833 + _8146 + _8306 + 83 len ceil32(_12847) + 32]
                mem[_5281 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
                if 0 >= mem[_5281]:
                    revert with 0, 50
                mem[_5281 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_5281]:
                    revert with 0, 50
                mem[_5281 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * s):
                    revert with 0, 17
                idx = (2 * s) + 1
                t = uint32(arg1)
                while idx > 1:
                    if t % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_5281]:
                        revert with 0, 50
                    mem[idx + _5281 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    t = Mask(252, 0, t) * 0.0625
                    continue 
                if t:
                    revert with 0, 'Strings: hex length insufficient'
                _8147 = mem[64]
                _8307 = mem[_1172 + _724 + _748 + 42]
                mem[mem[64] + 32 len ceil32(mem[_1172 + _724 + _748 + 42])] = mem[_1172 + _724 + _748 + 74 len ceil32(mem[_1172 + _724 + _748 + 42])]
                mem[mem[64] + _8307 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                if ceil32(_8307) <= _8307:
                    _10834 = mem[_5281]
                    mem[mem[64] + _8307 + 47 len ceil32(mem[_5281])] = mem[_5281 + 32 len ceil32(mem[_5281])]
                    if ceil32(_10834) <= _10834:
                        _12440 = mem[64]
                        mem[mem[64]] = _10834 + _8307 + 15
                        mem[64] = _10834 + mem[64] + _8307 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10834 + _8147 + _8307 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10834 + _8147 + _8307 + 51] = 32
                        _12850 = mem[_12440]
                        mem[_10834 + _8147 + _8307 + 83] = mem[_12440]
                        mem[_10834 + _8147 + _8307 + 115 len ceil32(_12850)] = mem[_12440 + 32 len ceil32(_12850)]
                        if ceil32(_12850) > _12850:
                            mem[_12850 + _10834 + _8147 + _8307 + 115] = 0
                        revert with 0, 32, mem[_10834 + _8147 + _8307 + 83 len ceil32(_12850) + 32]
                    mem[_10834 + mem[64] + _8307 + 47] = 0
                    _12441 = mem[64]
                    mem[mem[64]] = _10834 + _8147 + _8307 + -mem[64] + 15
                    mem[64] = _10834 + _8147 + _8307 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10834 + _8147 + _8307 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10834 + _8147 + _8307 + 51] = 32
                    _12853 = mem[_12441]
                    mem[_10834 + _8147 + _8307 + 83] = mem[_12441]
                    mem[_10834 + _8147 + _8307 + 115 len ceil32(_12853)] = mem[_12441 + 32 len ceil32(_12853)]
                    if ceil32(_12853) > _12853:
                        mem[_12853 + _10834 + _8147 + _8307 + 115] = 0
                    revert with 0, 32, mem[_10834 + _8147 + _8307 + 83 len ceil32(_12853) + 32]
                _10835 = mem[_5281]
                mem[mem[64] + _8307 + 47 len ceil32(mem[_5281])] = mem[_5281 + 32 len ceil32(mem[_5281])]
                if ceil32(_10835) <= _10835:
                    _12442 = mem[64]
                    mem[mem[64]] = _10835 + _8307 + 15
                    mem[64] = _10835 + mem[64] + _8307 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10835 + _8147 + _8307 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10835 + _8147 + _8307 + 51] = 32
                    _12856 = mem[_12442]
                    mem[_10835 + _8147 + _8307 + 83] = mem[_12442]
                    mem[_10835 + _8147 + _8307 + 115 len ceil32(_12856)] = mem[_12442 + 32 len ceil32(_12856)]
                    if ceil32(_12856) > _12856:
                        mem[_12856 + _10835 + _8147 + _8307 + 115] = 0
                    revert with 0, 32, mem[_10835 + _8147 + _8307 + 83 len ceil32(_12856) + 32]
                mem[_10835 + mem[64] + _8307 + 47] = 0
                _12443 = mem[64]
                mem[mem[64]] = _10835 + _8307 + 15
                mem[64] = _10835 + mem[64] + _8307 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10835 + _8147 + _8307 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10835 + _8147 + _8307 + 51] = 32
                _12859 = mem[_12443]
                mem[_10835 + _8147 + _8307 + 83] = mem[_12443]
                mem[_10835 + _8147 + _8307 + 115 len ceil32(_12859)] = mem[_12443 + 32 len ceil32(_12859)]
                if ceil32(_12859) > _12859:
                    mem[_12859 + _10835 + _8147 + _8307 + 115] = 0
                revert with 0, 32, mem[_10835 + _8147 + _8307 + 83 len ceil32(_12859) + 32]
            _1173 = mem[192]
            mem[mem[64] + mem[96] + 42 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            if ceil32(_1173) <= _1173:
                mem[mem[64]] = _1173 + mem[96] + 10
                mem[32] = 52
                if stor52[msg.sender] >= stor51.length:
                    revert with 0, 50
                mem[0] = 51
                mem[_1173 + mem[64] + _748 + 42] = 42
                mem[64] = _1173 + mem[64] + _748 + 138
                mem[_1173 + _724 + _748 + 74 len 42] = call.data[calldata.size len 42]
                mem[_1173 + _724 + _748 + 74 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                mem[_1173 + _724 + _748 + 75 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                idx = 41
                s = stor51[stor52[msg.sender]].field_0
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 42:
                        revert with 0, 50
                    mem[idx + _1173 + _724 + _748 + 74 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if stor51[stor52[msg.sender]].field_0 + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                if not uint32(arg1):
                    _3358 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3358] = 4
                    mem[_3358 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                    _3454 = mem[64]
                    mem[mem[64] + 32 len 64] = 0, mem[_1173 + _724 + _748 + 75 len 63]
                    var127001 = 64
                    mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                    mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 93] = 0
                    _8157 = mem[64]
                    mem[mem[64]] = 61
                    mem[64] = mem[64] + 93
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_3454 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3454 + 97] = 32
                    _8623 = mem[_8157]
                    mem[_3454 + 129] = mem[_8157]
                    mem[_3454 + 161 len ceil32(_8623)] = mem[_8157 + 32 len ceil32(_8623)]
                    if ceil32(_8623) > _8623:
                        mem[_8623 + _3454 + 161] = 0
                    revert with 0, 32, mem[_3454 + 129 len ceil32(_8623) + 32]
                s = 0
                idx = uint32(arg1)
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = Mask(248, 0, idx) * 0.00390625
                    continue 
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 > !(2 * s):
                    revert with 0, 17
                if (2 * s) + 2 > test266151307():
                    revert with 0, 65
                _5286 = mem[64]
                mem[mem[64]] = (2 * s) + 2
                mem[64] = mem[64] + floor32((2 * s) + 33) + 32
                if not (2 * s) + 2:
                    if 0 >= mem[_5286]:
                        revert with 0, 50
                    mem[_5286 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_5286]:
                        revert with 0, 50
                    mem[_5286 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 1 > !(2 * s):
                        revert with 0, 17
                    idx = (2 * s) + 1
                    t = uint32(arg1)
                    while idx > 1:
                        if t % 16 >= 16:
                            revert with 0, 50
                        if idx >= mem[_5286]:
                            revert with 0, 50
                        mem[idx + _5286 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        t = Mask(252, 0, t) * 0.0625
                        continue 
                    if t:
                        revert with 0, 'Strings: hex length insufficient'
                    _8152 = mem[64]
                    _8312 = mem[_1173 + _724 + _748 + 42]
                    mem[mem[64] + 32 len ceil32(mem[_1173 + _724 + _748 + 42])] = mem[_1173 + _724 + _748 + 74 len ceil32(mem[_1173 + _724 + _748 + 42])]
                    mem[mem[64] + _8312 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                    if ceil32(_8312) <= _8312:
                        _10836 = mem[_5286]
                        mem[mem[64] + _8312 + 47 len ceil32(mem[_5286])] = mem[_5286 + 32 len ceil32(mem[_5286])]
                        if ceil32(_10836) <= _10836:
                            _12444 = mem[64]
                            mem[mem[64]] = _10836 + _8312 + 15
                            mem[64] = _10836 + mem[64] + _8312 + 47
                            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                                if stor52[address(arg2)] >= stor51.length:
                                    revert with 0, 50
                                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                            mem[_10836 + _8152 + _8312 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_10836 + _8152 + _8312 + 51] = 32
                            _12862 = mem[_12444]
                            mem[_10836 + _8152 + _8312 + 83] = mem[_12444]
                            mem[_10836 + _8152 + _8312 + 115 len ceil32(_12862)] = mem[_12444 + 32 len ceil32(_12862)]
                            if ceil32(_12862) > _12862:
                                mem[_12862 + _10836 + _8152 + _8312 + 115] = 0
                            revert with 0, 32, mem[_10836 + _8152 + _8312 + 83 len ceil32(_12862) + 32]
                        mem[_10836 + mem[64] + _8312 + 47] = 0
                        _12445 = mem[64]
                        mem[mem[64]] = _10836 + _8152 + _8312 + -mem[64] + 15
                        mem[64] = _10836 + _8152 + _8312 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10836 + _8152 + _8312 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10836 + _8152 + _8312 + 51] = 32
                        _12865 = mem[_12445]
                        mem[_10836 + _8152 + _8312 + 83] = mem[_12445]
                        mem[_10836 + _8152 + _8312 + 115 len ceil32(_12865)] = mem[_12445 + 32 len ceil32(_12865)]
                        if ceil32(_12865) > _12865:
                            mem[_12865 + _10836 + _8152 + _8312 + 115] = 0
                        revert with 0, 32, mem[_10836 + _8152 + _8312 + 83 len ceil32(_12865) + 32]
                    _10837 = mem[_5286]
                    mem[mem[64] + _8312 + 47 len ceil32(mem[_5286])] = mem[_5286 + 32 len ceil32(mem[_5286])]
                    if ceil32(_10837) <= _10837:
                        _12446 = mem[64]
                        mem[mem[64]] = _10837 + _8312 + 15
                        mem[64] = _10837 + mem[64] + _8312 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10837 + _8152 + _8312 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10837 + _8152 + _8312 + 51] = 32
                        _12868 = mem[_12446]
                        mem[_10837 + _8152 + _8312 + 83] = mem[_12446]
                        mem[_10837 + _8152 + _8312 + 115 len ceil32(_12868)] = mem[_12446 + 32 len ceil32(_12868)]
                        if ceil32(_12868) > _12868:
                            mem[_12868 + _10837 + _8152 + _8312 + 115] = 0
                        revert with 0, 32, mem[_10837 + _8152 + _8312 + 83 len ceil32(_12868) + 32]
                    mem[_10837 + mem[64] + _8312 + 47] = 0
                    _12447 = mem[64]
                    mem[mem[64]] = _10837 + _8312 + 15
                    mem[64] = _10837 + mem[64] + _8312 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10837 + _8152 + _8312 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10837 + _8152 + _8312 + 51] = 32
                    _12871 = mem[_12447]
                    mem[_10837 + _8152 + _8312 + 83] = mem[_12447]
                    mem[_10837 + _8152 + _8312 + 115 len ceil32(_12871)] = mem[_12447 + 32 len ceil32(_12871)]
                    if ceil32(_12871) > _12871:
                        mem[_12871 + _10837 + _8152 + _8312 + 115] = 0
                    revert with 0, 32, mem[_10837 + _8152 + _8312 + 83 len ceil32(_12871) + 32]
                mem[_5286 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
                if 0 >= mem[_5286]:
                    revert with 0, 50
                mem[_5286 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_5286]:
                    revert with 0, 50
                mem[_5286 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * s):
                    revert with 0, 17
                idx = (2 * s) + 1
                t = uint32(arg1)
                while idx > 1:
                    if t % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_5286]:
                        revert with 0, 50
                    mem[idx + _5286 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    t = Mask(252, 0, t) * 0.0625
                    continue 
                if t:
                    revert with 0, 'Strings: hex length insufficient'
                _8153 = mem[64]
                _8313 = mem[_1173 + _724 + _748 + 42]
                mem[mem[64] + 32 len ceil32(mem[_1173 + _724 + _748 + 42])] = mem[_1173 + _724 + _748 + 74 len ceil32(mem[_1173 + _724 + _748 + 42])]
                mem[mem[64] + _8313 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                if ceil32(_8313) <= _8313:
                    _10838 = mem[_5286]
                    mem[mem[64] + _8313 + 47 len ceil32(mem[_5286])] = mem[_5286 + 32 len ceil32(mem[_5286])]
                    if ceil32(_10838) <= _10838:
                        _12448 = mem[64]
                        mem[mem[64]] = _10838 + _8313 + 15
                        mem[64] = _10838 + mem[64] + _8313 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10838 + _8153 + _8313 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10838 + _8153 + _8313 + 51] = 32
                        _12874 = mem[_12448]
                        mem[_10838 + _8153 + _8313 + 83] = mem[_12448]
                        mem[_10838 + _8153 + _8313 + 115 len ceil32(_12874)] = mem[_12448 + 32 len ceil32(_12874)]
                        if ceil32(_12874) > _12874:
                            mem[_12874 + _10838 + _8153 + _8313 + 115] = 0
                        revert with 0, 32, mem[_10838 + _8153 + _8313 + 83 len ceil32(_12874) + 32]
                    mem[_10838 + mem[64] + _8313 + 47] = 0
                    _12449 = mem[64]
                    mem[mem[64]] = _10838 + _8313 + 15
                    mem[64] = _10838 + mem[64] + _8313 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10838 + _8153 + _8313 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10838 + _8153 + _8313 + 51] = 32
                    _12877 = mem[_12449]
                    mem[_10838 + _8153 + _8313 + 83] = mem[_12449]
                    mem[_10838 + _8153 + _8313 + 115 len ceil32(_12877)] = mem[_12449 + 32 len ceil32(_12877)]
                    if ceil32(_12877) > _12877:
                        mem[_12877 + _10838 + _8153 + _8313 + 115] = 0
                    revert with 0, 32, mem[_10838 + _8153 + _8313 + 83 len ceil32(_12877) + 32]
                _10839 = mem[_5286]
                mem[mem[64] + _8313 + 47 len ceil32(mem[_5286])] = mem[_5286 + 32 len ceil32(mem[_5286])]
                if ceil32(_10839) <= _10839:
                    _12450 = mem[64]
                    mem[mem[64]] = _10839 + _8313 + 15
                    mem[64] = _10839 + mem[64] + _8313 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10839 + _8153 + _8313 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10839 + _8153 + _8313 + 51] = 32
                    _12880 = mem[_12450]
                    mem[_10839 + _8153 + _8313 + 83] = mem[_12450]
                    mem[_10839 + _8153 + _8313 + 115 len ceil32(_12880)] = mem[_12450 + 32 len ceil32(_12880)]
                    if ceil32(_12880) > _12880:
                        mem[_12880 + _10839 + _8153 + _8313 + 115] = 0
                    revert with 0, 32, mem[_10839 + _8153 + _8313 + 83 len ceil32(_12880) + 32]
                mem[_10839 + mem[64] + _8313 + 47] = 0
                _12451 = mem[64]
                mem[mem[64]] = _10839 + _8313 + 15
                mem[64] = _10839 + mem[64] + _8313 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10839 + _8153 + _8313 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10839 + _8153 + _8313 + 51] = 32
                _12883 = mem[_12451]
                mem[_10839 + _8153 + _8313 + 83] = mem[_12451]
                mem[_10839 + _8153 + _8313 + 115 len ceil32(_12883)] = mem[_12451 + 32 len ceil32(_12883)]
                if ceil32(_12883) > _12883:
                    mem[_12883 + _10839 + _8153 + _8313 + 115] = 0
                revert with 0, 32, mem[_10839 + _8153 + _8313 + 83 len ceil32(_12883) + 32]
            mem[_1173 + mem[64] + mem[96] + 42] = 0
            mem[mem[64]] = _1173 + mem[96] + 10
            mem[32] = 52
            if stor52[msg.sender] >= stor51.length:
                revert with 0, 50
            mem[0] = 51
            mem[_1173 + mem[64] + _748 + 42] = 42
            mem[64] = _1173 + mem[64] + _748 + 138
            mem[_1173 + _724 + _748 + 74 len 42] = call.data[calldata.size len 42]
            mem[_1173 + _724 + _748 + 74 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            mem[_1173 + _724 + _748 + 75 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            idx = 41
            s = stor51[stor52[msg.sender]].field_0
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + _1173 + _724 + _748 + 74 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if stor51[stor52[msg.sender]].field_0 + 10240:
                revert with 0, 'Strings: hex length insufficient'
            if not uint32(arg1):
                _3359 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3359] = 4
                mem[_3359 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                _3455 = mem[64]
                mem[mem[64] + 32 len 64] = 0, mem[_1173 + _724 + _748 + 75 len 63]
                var127001 = 64
                mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 93] = 0
                _8163 = mem[64]
                mem[mem[64]] = 61
                mem[64] = mem[64] + 93
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_3455 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3455 + 97] = 32
                _8635 = mem[_8163]
                mem[_3455 + 129] = mem[_8163]
                mem[_3455 + 161 len ceil32(_8635)] = mem[_8163 + 32 len ceil32(_8635)]
                if ceil32(_8635) > _8635:
                    mem[_8635 + _3455 + 161] = 0
                revert with 0, 32, mem[_3455 + 129 len ceil32(_8635) + 32]
            s = 0
            idx = uint32(arg1)
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = Mask(248, 0, idx) * 0.00390625
                continue 
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 > !(2 * s):
                revert with 0, 17
            if (2 * s) + 2 > test266151307():
                revert with 0, 65
            _5291 = mem[64]
            mem[mem[64]] = (2 * s) + 2
            mem[64] = mem[64] + floor32((2 * s) + 33) + 32
            if not (2 * s) + 2:
                if 0 >= mem[_5291]:
                    revert with 0, 50
                mem[_5291 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_5291]:
                    revert with 0, 50
                mem[_5291 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * s):
                    revert with 0, 17
                idx = (2 * s) + 1
                t = uint32(arg1)
                while idx > 1:
                    if t % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_5291]:
                        revert with 0, 50
                    mem[idx + _5291 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    t = Mask(252, 0, t) * 0.0625
                    continue 
                if t:
                    revert with 0, 'Strings: hex length insufficient'
                _8158 = mem[64]
                _8318 = mem[_1173 + _724 + _748 + 42]
                mem[mem[64] + 32 len ceil32(mem[_1173 + _724 + _748 + 42])] = mem[_1173 + _724 + _748 + 74 len ceil32(mem[_1173 + _724 + _748 + 42])]
                mem[mem[64] + _8318 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                if ceil32(_8318) <= _8318:
                    _10840 = mem[_5291]
                    mem[mem[64] + _8318 + 47 len ceil32(mem[_5291])] = mem[_5291 + 32 len ceil32(mem[_5291])]
                    if ceil32(_10840) <= _10840:
                        _12452 = mem[64]
                        mem[mem[64]] = _10840 + _8318 + 15
                        mem[64] = _10840 + mem[64] + _8318 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10840 + _8158 + _8318 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10840 + _8158 + _8318 + 51] = 32
                        _12886 = mem[_12452]
                        mem[_10840 + _8158 + _8318 + 83] = mem[_12452]
                        mem[_10840 + _8158 + _8318 + 115 len ceil32(_12886)] = mem[_12452 + 32 len ceil32(_12886)]
                        if ceil32(_12886) > _12886:
                            mem[_12886 + _10840 + _8158 + _8318 + 115] = 0
                        revert with 0, 32, mem[_10840 + _8158 + _8318 + 83 len ceil32(_12886) + 32]
                    mem[_10840 + mem[64] + _8318 + 47] = 0
                    _12453 = mem[64]
                    mem[mem[64]] = _10840 + _8318 + 15
                    mem[64] = _10840 + mem[64] + _8318 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10840 + _8158 + _8318 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10840 + _8158 + _8318 + 51] = 32
                    _12889 = mem[_12453]
                    mem[_10840 + _8158 + _8318 + 83] = mem[_12453]
                    mem[_10840 + _8158 + _8318 + 115 len ceil32(_12889)] = mem[_12453 + 32 len ceil32(_12889)]
                    if ceil32(_12889) > _12889:
                        mem[_12889 + _10840 + _8158 + _8318 + 115] = 0
                    revert with 0, 32, mem[_10840 + _8158 + _8318 + 83 len ceil32(_12889) + 32]
                _10841 = mem[_5291]
                mem[mem[64] + _8318 + 47 len ceil32(mem[_5291])] = mem[_5291 + 32 len ceil32(mem[_5291])]
                if ceil32(_10841) <= _10841:
                    _12454 = mem[64]
                    mem[mem[64]] = _10841 + _8318 + 15
                    mem[64] = _10841 + mem[64] + _8318 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10841 + _8158 + _8318 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10841 + _8158 + _8318 + 51] = 32
                    _12892 = mem[_12454]
                    mem[_10841 + _8158 + _8318 + 83] = mem[_12454]
                    mem[_10841 + _8158 + _8318 + 115 len ceil32(_12892)] = mem[_12454 + 32 len ceil32(_12892)]
                    if ceil32(_12892) > _12892:
                        mem[_12892 + _10841 + _8158 + _8318 + 115] = 0
                    revert with 0, 32, mem[_10841 + _8158 + _8318 + 83 len ceil32(_12892) + 32]
                mem[_10841 + mem[64] + _8318 + 47] = 0
                _12455 = mem[64]
                mem[mem[64]] = _10841 + _8318 + 15
                mem[64] = _10841 + mem[64] + _8318 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10841 + _8158 + _8318 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10841 + _8158 + _8318 + 51] = 32
                _12895 = mem[_12455]
                mem[_10841 + _8158 + _8318 + 83] = mem[_12455]
                mem[_10841 + _8158 + _8318 + 115 len ceil32(_12895)] = mem[_12455 + 32 len ceil32(_12895)]
                if ceil32(_12895) > _12895:
                    mem[_12895 + _10841 + _8158 + _8318 + 115] = 0
                revert with 0, 32, mem[_10841 + _8158 + _8318 + 83 len ceil32(_12895) + 32]
            mem[_5291 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
            if 0 >= mem[_5291]:
                revert with 0, 50
            mem[_5291 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= mem[_5291]:
                revert with 0, 50
            mem[_5291 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[_5291]:
                    revert with 0, 50
                mem[idx + _5291 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _8159 = mem[64]
            _8319 = mem[_1173 + _724 + _748 + 42]
            mem[mem[64] + 32 len ceil32(mem[_1173 + _724 + _748 + 42])] = mem[_1173 + _724 + _748 + 74 len ceil32(mem[_1173 + _724 + _748 + 42])]
            mem[mem[64] + _8319 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            if ceil32(_8319) <= _8319:
                _10842 = mem[_5291]
                mem[mem[64] + _8319 + 47 len ceil32(mem[_5291])] = mem[_5291 + 32 len ceil32(mem[_5291])]
                if ceil32(_10842) <= _10842:
                    _12456 = mem[64]
                    mem[mem[64]] = _10842 + _8319 + 15
                    mem[64] = _10842 + mem[64] + _8319 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10842 + _8159 + _8319 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10842 + _8159 + _8319 + 51] = 32
                    _12898 = mem[_12456]
                    mem[_10842 + _8159 + _8319 + 83] = mem[_12456]
                    mem[_10842 + _8159 + _8319 + 115 len ceil32(_12898)] = mem[_12456 + 32 len ceil32(_12898)]
                    if ceil32(_12898) > _12898:
                        mem[_12898 + _10842 + _8159 + _8319 + 115] = 0
                    revert with 0, 32, mem[_10842 + _8159 + _8319 + 83 len ceil32(_12898) + 32]
                mem[_10842 + mem[64] + _8319 + 47] = 0
                _12457 = mem[64]
                mem[mem[64]] = _10842 + _8159 + _8319 + -mem[64] + 15
                mem[64] = _10842 + _8159 + _8319 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10842 + _8159 + _8319 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10842 + _8159 + _8319 + 51] = 32
                _12901 = mem[_12457]
                mem[_10842 + _8159 + _8319 + 83] = mem[_12457]
                mem[_10842 + _8159 + _8319 + 115 len ceil32(_12901)] = mem[_12457 + 32 len ceil32(_12901)]
                if ceil32(_12901) > _12901:
                    mem[_12901 + _10842 + _8159 + _8319 + 115] = 0
                revert with 0, 32, mem[_10842 + _8159 + _8319 + 83 len ceil32(_12901) + 32]
            _10843 = mem[_5291]
            mem[mem[64] + _8319 + 47 len ceil32(mem[_5291])] = mem[_5291 + 32 len ceil32(mem[_5291])]
            if ceil32(_10843) <= _10843:
                _12458 = mem[64]
                mem[mem[64]] = _10843 + _8319 + 15
                mem[64] = _10843 + mem[64] + _8319 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10843 + _8159 + _8319 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10843 + _8159 + _8319 + 51] = 32
                _12904 = mem[_12458]
                mem[_10843 + _8159 + _8319 + 83] = mem[_12458]
                mem[_10843 + _8159 + _8319 + 115 len ceil32(_12904)] = mem[_12458 + 32 len ceil32(_12904)]
                if ceil32(_12904) > _12904:
                    mem[_12904 + _10843 + _8159 + _8319 + 115] = 0
                revert with 0, 32, mem[_10843 + _8159 + _8319 + 83 len ceil32(_12904) + 32]
            mem[_10843 + mem[64] + _8319 + 47] = 0
            _12459 = mem[64]
            mem[mem[64]] = _10843 + _8159 + _8319 + -mem[64] + 15
            mem[64] = _10843 + _8159 + _8319 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10843 + _8159 + _8319 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10843 + _8159 + _8319 + 51] = 32
            _12907 = mem[_12459]
            mem[_10843 + _8159 + _8319 + 83] = mem[_12459]
            mem[_10843 + _8159 + _8319 + 115 len ceil32(_12907)] = mem[_12459 + 32 len ceil32(_12907)]
            if ceil32(_12907) > _12907:
                mem[_12907 + _10843 + _8159 + _8319 + 115] = 0
            revert with 0, 32, mem[_10843 + _8159 + _8319 + 83 len ceil32(_12907) + 32]
        mem[224 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
        if 0 >= (2 * s) + 2:
            revert with 0, 50
        mem[224 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if 1 >= (2 * s) + 2:
            revert with 0, 50
        mem[225 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 1 > !(2 * s):
            revert with 0, 17
        idx = (2 * s) + 1
        t = uint32(arg1)
        while idx > 1:
            if t % 16 >= 16:
                revert with 0, 50
            if idx >= mem[192]:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            t = Mask(252, 0, t) * 0.0625
            continue 
        if t:
            revert with 0, 'Strings: hex length insufficient'
        _725 = mem[64]
        _749 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + mem[96] + 32] = 0x2068617320726f6c652000000000000000000000000000000000000000000000
        if ceil32(mem[96]) <= mem[96]:
            _1174 = mem[192]
            mem[mem[64] + mem[96] + 42 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            if ceil32(_1174) <= _1174:
                mem[mem[64]] = _1174 + mem[96] + 10
                mem[32] = 52
                if stor52[msg.sender] >= stor51.length:
                    revert with 0, 50
                mem[0] = 51
                mem[_1174 + mem[64] + _749 + 42] = 42
                mem[64] = _1174 + _725 + _749 + 138
                mem[_1174 + _725 + _749 + 74 len 42] = call.data[calldata.size len 42]
                mem[_1174 + _725 + _749 + 74 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                mem[_1174 + _725 + _749 + 75 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                idx = 41
                s = stor51[stor52[msg.sender]].field_0
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 42:
                        revert with 0, 50
                    mem[idx + _1174 + _725 + _749 + 74 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if stor51[stor52[msg.sender]].field_0 + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                if not uint32(arg1):
                    _3360 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3360] = 4
                    mem[_3360 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                    _3456 = mem[64]
                    mem[mem[64] + 32 len 64] = 0, mem[_1174 + _725 + _749 + 75 len 63]
                    var128001 = 64
                    mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                    mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 93] = 0
                    _8169 = mem[64]
                    mem[mem[64]] = 61
                    mem[64] = mem[64] + 93
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_3456 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3456 + 97] = 32
                    _8647 = mem[_8169]
                    mem[_3456 + 129] = mem[_8169]
                    mem[_3456 + 161 len ceil32(_8647)] = mem[_8169 + 32 len ceil32(_8647)]
                    if ceil32(_8647) > _8647:
                        mem[_8647 + _3456 + 161] = 0
                    revert with 0, 32, mem[_3456 + 129 len ceil32(_8647) + 32]
                s = 0
                idx = uint32(arg1)
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = Mask(248, 0, idx) * 0.00390625
                    continue 
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 > !(2 * s):
                    revert with 0, 17
                if (2 * s) + 2 > test266151307():
                    revert with 0, 65
                _5296 = mem[64]
                mem[mem[64]] = (2 * s) + 2
                mem[64] = mem[64] + floor32((2 * s) + 33) + 32
                if not (2 * s) + 2:
                    if 0 >= mem[_5296]:
                        revert with 0, 50
                    mem[_5296 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_5296]:
                        revert with 0, 50
                    mem[_5296 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 1 > !(2 * s):
                        revert with 0, 17
                    idx = (2 * s) + 1
                    t = uint32(arg1)
                    while idx > 1:
                        if t % 16 >= 16:
                            revert with 0, 50
                        if idx >= mem[_5296]:
                            revert with 0, 50
                        mem[idx + _5296 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        t = Mask(252, 0, t) * 0.0625
                        continue 
                    if t:
                        revert with 0, 'Strings: hex length insufficient'
                    _8164 = mem[64]
                    _8324 = mem[_1174 + _725 + _749 + 42]
                    mem[mem[64] + 32 len ceil32(mem[_1174 + _725 + _749 + 42])] = mem[_1174 + _725 + _749 + 74 len ceil32(mem[_1174 + _725 + _749 + 42])]
                    mem[mem[64] + _8324 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                    if ceil32(_8324) <= _8324:
                        _10844 = mem[_5296]
                        mem[mem[64] + _8324 + 47 len ceil32(mem[_5296])] = mem[_5296 + 32 len ceil32(mem[_5296])]
                        if ceil32(_10844) <= _10844:
                            _12460 = mem[64]
                            mem[mem[64]] = _10844 + _8324 + 15
                            mem[64] = _10844 + mem[64] + _8324 + 47
                            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                                if stor52[address(arg2)] >= stor51.length:
                                    revert with 0, 50
                                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                            mem[_10844 + _8164 + _8324 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_10844 + _8164 + _8324 + 51] = 32
                            _12910 = mem[_12460]
                            mem[_10844 + _8164 + _8324 + 83] = mem[_12460]
                            mem[_10844 + _8164 + _8324 + 115 len ceil32(_12910)] = mem[_12460 + 32 len ceil32(_12910)]
                            if ceil32(_12910) > _12910:
                                mem[_12910 + _10844 + _8164 + _8324 + 115] = 0
                            revert with 0, 32, mem[_10844 + _8164 + _8324 + 83 len ceil32(_12910) + 32]
                        mem[_10844 + mem[64] + _8324 + 47] = 0
                        _12461 = mem[64]
                        mem[mem[64]] = _10844 + _8324 + 15
                        mem[64] = _10844 + mem[64] + _8324 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10844 + _8164 + _8324 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10844 + _8164 + _8324 + 51] = 32
                        _12913 = mem[_12461]
                        mem[_10844 + _8164 + _8324 + 83] = mem[_12461]
                        mem[_10844 + _8164 + _8324 + 115 len ceil32(_12913)] = mem[_12461 + 32 len ceil32(_12913)]
                        if ceil32(_12913) > _12913:
                            mem[_12913 + _10844 + _8164 + _8324 + 115] = 0
                        revert with 0, 32, mem[_10844 + _8164 + _8324 + 83 len ceil32(_12913) + 32]
                    _10845 = mem[_5296]
                    mem[mem[64] + _8324 + 47 len ceil32(mem[_5296])] = mem[_5296 + 32 len ceil32(mem[_5296])]
                    if ceil32(_10845) <= _10845:
                        _12462 = mem[64]
                        mem[mem[64]] = _10845 + _8324 + 15
                        mem[64] = _10845 + mem[64] + _8324 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10845 + _8164 + _8324 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10845 + _8164 + _8324 + 51] = 32
                        _12916 = mem[_12462]
                        mem[_10845 + _8164 + _8324 + 83] = mem[_12462]
                        mem[_10845 + _8164 + _8324 + 115 len ceil32(_12916)] = mem[_12462 + 32 len ceil32(_12916)]
                        if ceil32(_12916) > _12916:
                            mem[_12916 + _10845 + _8164 + _8324 + 115] = 0
                        revert with 0, 32, mem[_10845 + _8164 + _8324 + 83 len ceil32(_12916) + 32]
                    mem[_10845 + mem[64] + _8324 + 47] = 0
                    _12463 = mem[64]
                    mem[mem[64]] = _10845 + _8164 + _8324 + -mem[64] + 15
                    mem[64] = _10845 + _8164 + _8324 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10845 + _8164 + _8324 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10845 + _8164 + _8324 + 51] = 32
                    _12919 = mem[_12463]
                    mem[_10845 + _8164 + _8324 + 83] = mem[_12463]
                    mem[_10845 + _8164 + _8324 + 115 len ceil32(_12919)] = mem[_12463 + 32 len ceil32(_12919)]
                    if ceil32(_12919) > _12919:
                        mem[_12919 + _10845 + _8164 + _8324 + 115] = 0
                    revert with 0, 32, mem[_10845 + _8164 + _8324 + 83 len ceil32(_12919) + 32]
                mem[_5296 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
                if 0 >= mem[_5296]:
                    revert with 0, 50
                mem[_5296 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_5296]:
                    revert with 0, 50
                mem[_5296 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * s):
                    revert with 0, 17
                idx = (2 * s) + 1
                t = uint32(arg1)
                while idx > 1:
                    if t % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_5296]:
                        revert with 0, 50
                    mem[idx + _5296 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    t = Mask(252, 0, t) * 0.0625
                    continue 
                if t:
                    revert with 0, 'Strings: hex length insufficient'
                _8165 = mem[64]
                _8325 = mem[_1174 + _725 + _749 + 42]
                mem[mem[64] + 32 len ceil32(mem[_1174 + _725 + _749 + 42])] = mem[_1174 + _725 + _749 + 74 len ceil32(mem[_1174 + _725 + _749 + 42])]
                mem[mem[64] + _8325 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                if ceil32(_8325) <= _8325:
                    _10846 = mem[_5296]
                    mem[mem[64] + _8325 + 47 len ceil32(mem[_5296])] = mem[_5296 + 32 len ceil32(mem[_5296])]
                    if ceil32(_10846) <= _10846:
                        _12464 = mem[64]
                        mem[mem[64]] = _10846 + _8325 + 15
                        mem[64] = _10846 + mem[64] + _8325 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10846 + _8165 + _8325 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10846 + _8165 + _8325 + 51] = 32
                        _12922 = mem[_12464]
                        mem[_10846 + _8165 + _8325 + 83] = mem[_12464]
                        mem[_10846 + _8165 + _8325 + 115 len ceil32(_12922)] = mem[_12464 + 32 len ceil32(_12922)]
                        if ceil32(_12922) > _12922:
                            mem[_12922 + _10846 + _8165 + _8325 + 115] = 0
                        revert with 0, 32, mem[_10846 + _8165 + _8325 + 83 len ceil32(_12922) + 32]
                    mem[_10846 + mem[64] + _8325 + 47] = 0
                    _12465 = mem[64]
                    mem[mem[64]] = _10846 + _8325 + 15
                    mem[64] = _10846 + mem[64] + _8325 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10846 + _8165 + _8325 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10846 + _8165 + _8325 + 51] = 32
                    _12925 = mem[_12465]
                    mem[_10846 + _8165 + _8325 + 83] = mem[_12465]
                    mem[_10846 + _8165 + _8325 + 115 len ceil32(_12925)] = mem[_12465 + 32 len ceil32(_12925)]
                    if ceil32(_12925) > _12925:
                        mem[_12925 + _10846 + _8165 + _8325 + 115] = 0
                    revert with 0, 32, mem[_10846 + _8165 + _8325 + 83 len ceil32(_12925) + 32]
                _10847 = mem[_5296]
                mem[mem[64] + _8325 + 47 len ceil32(mem[_5296])] = mem[_5296 + 32 len ceil32(mem[_5296])]
                if ceil32(_10847) <= _10847:
                    _12466 = mem[64]
                    mem[mem[64]] = _10847 + _8325 + 15
                    mem[64] = _10847 + mem[64] + _8325 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10847 + _8165 + _8325 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10847 + _8165 + _8325 + 51] = 32
                    _12928 = mem[_12466]
                    mem[_10847 + _8165 + _8325 + 83] = mem[_12466]
                    mem[_10847 + _8165 + _8325 + 115 len ceil32(_12928)] = mem[_12466 + 32 len ceil32(_12928)]
                    if ceil32(_12928) > _12928:
                        mem[_12928 + _10847 + _8165 + _8325 + 115] = 0
                    revert with 0, 32, mem[_10847 + _8165 + _8325 + 83 len ceil32(_12928) + 32]
                mem[_10847 + mem[64] + _8325 + 47] = 0
                _12467 = mem[64]
                mem[mem[64]] = _10847 + _8165 + _8325 + -mem[64] + 15
                mem[64] = _10847 + _8165 + _8325 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10847 + _8165 + _8325 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10847 + _8165 + _8325 + 51] = 32
                _12931 = mem[_12467]
                mem[_10847 + _8165 + _8325 + 83] = mem[_12467]
                mem[_10847 + _8165 + _8325 + 115 len ceil32(_12931)] = mem[_12467 + 32 len ceil32(_12931)]
                if ceil32(_12931) > _12931:
                    mem[_12931 + _10847 + _8165 + _8325 + 115] = 0
                revert with 0, 32, mem[_10847 + _8165 + _8325 + 83 len ceil32(_12931) + 32]
            mem[_1174 + mem[64] + mem[96] + 42] = 0
            mem[mem[64]] = _1174 + _725 + _749 + -mem[64] + 10
            mem[32] = 52
            if stor52[msg.sender] >= stor51.length:
                revert with 0, 50
            mem[0] = 51
            mem[_1174 + _725 + _749 + 42] = 42
            mem[64] = _1174 + _725 + _749 + 138
            mem[_1174 + _725 + _749 + 74 len 42] = call.data[calldata.size len 42]
            mem[_1174 + _725 + _749 + 74 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            mem[_1174 + _725 + _749 + 75 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            idx = 41
            s = stor51[stor52[msg.sender]].field_0
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + _1174 + _725 + _749 + 74 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if stor51[stor52[msg.sender]].field_0 + 10240:
                revert with 0, 'Strings: hex length insufficient'
            if not uint32(arg1):
                _3361 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3361] = 4
                mem[_3361 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                _3457 = mem[64]
                mem[mem[64] + 32 len 64] = 0, mem[_1174 + _725 + _749 + 75 len 63]
                var128001 = 64
                mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 93] = 0
                _8175 = mem[64]
                mem[mem[64]] = 61
                mem[64] = mem[64] + 93
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_3457 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3457 + 97] = 32
                _8659 = mem[_8175]
                mem[_3457 + 129] = mem[_8175]
                mem[_3457 + 161 len ceil32(_8659)] = mem[_8175 + 32 len ceil32(_8659)]
                if ceil32(_8659) > _8659:
                    mem[_8659 + _3457 + 161] = 0
                revert with 0, 32, mem[_3457 + 129 len ceil32(_8659) + 32]
            s = 0
            idx = uint32(arg1)
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = Mask(248, 0, idx) * 0.00390625
                continue 
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 > !(2 * s):
                revert with 0, 17
            if (2 * s) + 2 > test266151307():
                revert with 0, 65
            _5301 = mem[64]
            mem[mem[64]] = (2 * s) + 2
            mem[64] = mem[64] + floor32((2 * s) + 33) + 32
            if not (2 * s) + 2:
                if 0 >= mem[_5301]:
                    revert with 0, 50
                mem[_5301 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_5301]:
                    revert with 0, 50
                mem[_5301 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * s):
                    revert with 0, 17
                idx = (2 * s) + 1
                t = uint32(arg1)
                while idx > 1:
                    if t % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_5301]:
                        revert with 0, 50
                    mem[idx + _5301 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    t = Mask(252, 0, t) * 0.0625
                    continue 
                if t:
                    revert with 0, 'Strings: hex length insufficient'
                _8170 = mem[64]
                _8330 = mem[_1174 + _725 + _749 + 42]
                mem[mem[64] + 32 len ceil32(mem[_1174 + _725 + _749 + 42])] = mem[_1174 + _725 + _749 + 74 len ceil32(mem[_1174 + _725 + _749 + 42])]
                mem[mem[64] + _8330 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                if ceil32(_8330) <= _8330:
                    _10848 = mem[_5301]
                    mem[mem[64] + _8330 + 47 len ceil32(mem[_5301])] = mem[_5301 + 32 len ceil32(mem[_5301])]
                    if ceil32(_10848) <= _10848:
                        _12468 = mem[64]
                        mem[mem[64]] = _10848 + _8330 + 15
                        mem[64] = _10848 + mem[64] + _8330 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10848 + _8170 + _8330 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10848 + _8170 + _8330 + 51] = 32
                        _12934 = mem[_12468]
                        mem[_10848 + _8170 + _8330 + 83] = mem[_12468]
                        mem[_10848 + _8170 + _8330 + 115 len ceil32(_12934)] = mem[_12468 + 32 len ceil32(_12934)]
                        if ceil32(_12934) > _12934:
                            mem[_12934 + _10848 + _8170 + _8330 + 115] = 0
                        revert with 0, 32, mem[_10848 + _8170 + _8330 + 83 len ceil32(_12934) + 32]
                    mem[_10848 + mem[64] + _8330 + 47] = 0
                    _12469 = mem[64]
                    mem[mem[64]] = _10848 + _8330 + 15
                    mem[64] = _10848 + mem[64] + _8330 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10848 + _8170 + _8330 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10848 + _8170 + _8330 + 51] = 32
                    _12937 = mem[_12469]
                    mem[_10848 + _8170 + _8330 + 83] = mem[_12469]
                    mem[_10848 + _8170 + _8330 + 115 len ceil32(_12937)] = mem[_12469 + 32 len ceil32(_12937)]
                    if ceil32(_12937) > _12937:
                        mem[_12937 + _10848 + _8170 + _8330 + 115] = 0
                    revert with 0, 32, mem[_10848 + _8170 + _8330 + 83 len ceil32(_12937) + 32]
                _10849 = mem[_5301]
                mem[mem[64] + _8330 + 47 len ceil32(mem[_5301])] = mem[_5301 + 32 len ceil32(mem[_5301])]
                if ceil32(_10849) <= _10849:
                    _12470 = mem[64]
                    mem[mem[64]] = _10849 + _8330 + 15
                    mem[64] = _10849 + mem[64] + _8330 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10849 + _8170 + _8330 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10849 + _8170 + _8330 + 51] = 32
                    _12940 = mem[_12470]
                    mem[_10849 + _8170 + _8330 + 83] = mem[_12470]
                    mem[_10849 + _8170 + _8330 + 115 len ceil32(_12940)] = mem[_12470 + 32 len ceil32(_12940)]
                    if ceil32(_12940) > _12940:
                        mem[_12940 + _10849 + _8170 + _8330 + 115] = 0
                    revert with 0, 32, mem[_10849 + _8170 + _8330 + 83 len ceil32(_12940) + 32]
                mem[_10849 + mem[64] + _8330 + 47] = 0
                _12471 = mem[64]
                mem[mem[64]] = _10849 + _8330 + 15
                mem[64] = _10849 + mem[64] + _8330 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10849 + _8170 + _8330 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10849 + _8170 + _8330 + 51] = 32
                _12943 = mem[_12471]
                mem[_10849 + _8170 + _8330 + 83] = mem[_12471]
                mem[_10849 + _8170 + _8330 + 115 len ceil32(_12943)] = mem[_12471 + 32 len ceil32(_12943)]
                if ceil32(_12943) > _12943:
                    mem[_12943 + _10849 + _8170 + _8330 + 115] = 0
                revert with 0, 32, mem[_10849 + _8170 + _8330 + 83 len ceil32(_12943) + 32]
            mem[_5301 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
            if 0 >= mem[_5301]:
                revert with 0, 50
            mem[_5301 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= mem[_5301]:
                revert with 0, 50
            mem[_5301 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[_5301]:
                    revert with 0, 50
                mem[idx + _5301 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _8171 = mem[64]
            _8331 = mem[_1174 + _725 + _749 + 42]
            mem[mem[64] + 32 len ceil32(mem[_1174 + _725 + _749 + 42])] = mem[_1174 + _725 + _749 + 74 len ceil32(mem[_1174 + _725 + _749 + 42])]
            mem[mem[64] + _8331 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            if ceil32(_8331) <= _8331:
                _10850 = mem[_5301]
                mem[mem[64] + _8331 + 47 len ceil32(mem[_5301])] = mem[_5301 + 32 len ceil32(mem[_5301])]
                if ceil32(_10850) <= _10850:
                    _12472 = mem[64]
                    mem[mem[64]] = _10850 + _8331 + 15
                    mem[64] = _10850 + mem[64] + _8331 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10850 + _8171 + _8331 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10850 + _8171 + _8331 + 51] = 32
                    _12946 = mem[_12472]
                    mem[_10850 + _8171 + _8331 + 83] = mem[_12472]
                    mem[_10850 + _8171 + _8331 + 115 len ceil32(_12946)] = mem[_12472 + 32 len ceil32(_12946)]
                    if ceil32(_12946) > _12946:
                        mem[_12946 + _10850 + _8171 + _8331 + 115] = 0
                    revert with 0, 32, mem[_10850 + _8171 + _8331 + 83 len ceil32(_12946) + 32]
                mem[_10850 + mem[64] + _8331 + 47] = 0
                _12473 = mem[64]
                mem[mem[64]] = _10850 + _8171 + _8331 + -mem[64] + 15
                mem[64] = _10850 + _8171 + _8331 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10850 + _8171 + _8331 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10850 + _8171 + _8331 + 51] = 32
                _12949 = mem[_12473]
                mem[_10850 + _8171 + _8331 + 83] = mem[_12473]
                mem[_10850 + _8171 + _8331 + 115 len ceil32(_12949)] = mem[_12473 + 32 len ceil32(_12949)]
                if ceil32(_12949) > _12949:
                    mem[_12949 + _10850 + _8171 + _8331 + 115] = 0
                revert with 0, 32, mem[_10850 + _8171 + _8331 + 83 len ceil32(_12949) + 32]
            _10851 = mem[_5301]
            mem[mem[64] + _8331 + 47 len ceil32(mem[_5301])] = mem[_5301 + 32 len ceil32(mem[_5301])]
            if ceil32(_10851) <= _10851:
                _12474 = mem[64]
                mem[mem[64]] = _10851 + _8331 + 15
                mem[64] = _10851 + mem[64] + _8331 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10851 + _8171 + _8331 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10851 + _8171 + _8331 + 51] = 32
                _12952 = mem[_12474]
                mem[_10851 + _8171 + _8331 + 83] = mem[_12474]
                mem[_10851 + _8171 + _8331 + 115 len ceil32(_12952)] = mem[_12474 + 32 len ceil32(_12952)]
                if ceil32(_12952) > _12952:
                    mem[_12952 + _10851 + _8171 + _8331 + 115] = 0
                revert with 0, 32, mem[_10851 + _8171 + _8331 + 83 len ceil32(_12952) + 32]
            mem[_10851 + mem[64] + _8331 + 47] = 0
            _12475 = mem[64]
            mem[mem[64]] = _10851 + _8331 + 15
            mem[64] = _10851 + mem[64] + _8331 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10851 + _8171 + _8331 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10851 + _8171 + _8331 + 51] = 32
            _12955 = mem[_12475]
            mem[_10851 + _8171 + _8331 + 83] = mem[_12475]
            mem[_10851 + _8171 + _8331 + 115 len ceil32(_12955)] = mem[_12475 + 32 len ceil32(_12955)]
            if ceil32(_12955) > _12955:
                mem[_12955 + _10851 + _8171 + _8331 + 115] = 0
            revert with 0, 32, mem[_10851 + _8171 + _8331 + 83 len ceil32(_12955) + 32]
        _1175 = mem[192]
        mem[mem[64] + mem[96] + 42 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
        if ceil32(_1175) <= _1175:
            mem[mem[64]] = _1175 + mem[96] + 10
            mem[32] = 52
            if stor52[msg.sender] >= stor51.length:
                revert with 0, 50
            mem[0] = 51
            mem[_1175 + mem[64] + _749 + 42] = 42
            mem[64] = _1175 + mem[64] + _749 + 138
            mem[_1175 + _725 + _749 + 74 len 42] = call.data[calldata.size len 42]
            mem[_1175 + _725 + _749 + 74 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            mem[_1175 + _725 + _749 + 75 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            idx = 41
            s = stor51[stor52[msg.sender]].field_0
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + _1175 + _725 + _749 + 74 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if stor51[stor52[msg.sender]].field_0 + 10240:
                revert with 0, 'Strings: hex length insufficient'
            if not uint32(arg1):
                _3362 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3362] = 4
                mem[_3362 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                _3458 = mem[64]
                mem[mem[64] + 32 len 64] = 0, mem[_1175 + _725 + _749 + 75 len 63]
                var128001 = 64
                mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 93] = 0
                _8181 = mem[64]
                mem[mem[64]] = 61
                mem[64] = mem[64] + 93
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_3458 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3458 + 97] = 32
                _8671 = mem[_8181]
                mem[_3458 + 129] = mem[_8181]
                mem[_3458 + 161 len ceil32(_8671)] = mem[_8181 + 32 len ceil32(_8671)]
                if ceil32(_8671) > _8671:
                    mem[_8671 + _3458 + 161] = 0
                revert with 0, 32, mem[_3458 + 129 len ceil32(_8671) + 32]
            s = 0
            idx = uint32(arg1)
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = Mask(248, 0, idx) * 0.00390625
                continue 
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 > !(2 * s):
                revert with 0, 17
            if (2 * s) + 2 > test266151307():
                revert with 0, 65
            _5306 = mem[64]
            mem[mem[64]] = (2 * s) + 2
            mem[64] = mem[64] + floor32((2 * s) + 33) + 32
            if not (2 * s) + 2:
                if 0 >= mem[_5306]:
                    revert with 0, 50
                mem[_5306 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_5306]:
                    revert with 0, 50
                mem[_5306 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * s):
                    revert with 0, 17
                idx = (2 * s) + 1
                t = uint32(arg1)
                while idx > 1:
                    if t % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_5306]:
                        revert with 0, 50
                    mem[idx + _5306 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    t = Mask(252, 0, t) * 0.0625
                    continue 
                if t:
                    revert with 0, 'Strings: hex length insufficient'
                _8176 = mem[64]
                _8336 = mem[_1175 + _725 + _749 + 42]
                mem[mem[64] + 32 len ceil32(mem[_1175 + _725 + _749 + 42])] = mem[_1175 + _725 + _749 + 74 len ceil32(mem[_1175 + _725 + _749 + 42])]
                mem[mem[64] + _8336 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                if ceil32(_8336) <= _8336:
                    _10852 = mem[_5306]
                    mem[mem[64] + _8336 + 47 len ceil32(mem[_5306])] = mem[_5306 + 32 len ceil32(mem[_5306])]
                    if ceil32(_10852) <= _10852:
                        _12476 = mem[64]
                        mem[mem[64]] = _10852 + _8336 + 15
                        mem[64] = _10852 + mem[64] + _8336 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10852 + _8176 + _8336 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10852 + _8176 + _8336 + 51] = 32
                        _12958 = mem[_12476]
                        mem[_10852 + _8176 + _8336 + 83] = mem[_12476]
                        mem[_10852 + _8176 + _8336 + 115 len ceil32(_12958)] = mem[_12476 + 32 len ceil32(_12958)]
                        if ceil32(_12958) > _12958:
                            mem[_12958 + _10852 + _8176 + _8336 + 115] = 0
                        revert with 0, 32, mem[_10852 + _8176 + _8336 + 83 len ceil32(_12958) + 32]
                    mem[_10852 + mem[64] + _8336 + 47] = 0
                    _12477 = mem[64]
                    mem[mem[64]] = _10852 + _8336 + 15
                    mem[64] = _10852 + mem[64] + _8336 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10852 + _8176 + _8336 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10852 + _8176 + _8336 + 51] = 32
                    _12961 = mem[_12477]
                    mem[_10852 + _8176 + _8336 + 83] = mem[_12477]
                    mem[_10852 + _8176 + _8336 + 115 len ceil32(_12961)] = mem[_12477 + 32 len ceil32(_12961)]
                    if ceil32(_12961) > _12961:
                        mem[_12961 + _10852 + _8176 + _8336 + 115] = 0
                    revert with 0, 32, mem[_10852 + _8176 + _8336 + 83 len ceil32(_12961) + 32]
                _10853 = mem[_5306]
                mem[mem[64] + _8336 + 47 len ceil32(mem[_5306])] = mem[_5306 + 32 len ceil32(mem[_5306])]
                if ceil32(_10853) <= _10853:
                    _12478 = mem[64]
                    mem[mem[64]] = _10853 + _8336 + 15
                    mem[64] = _10853 + mem[64] + _8336 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10853 + _8176 + _8336 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10853 + _8176 + _8336 + 51] = 32
                    _12964 = mem[_12478]
                    mem[_10853 + _8176 + _8336 + 83] = mem[_12478]
                    mem[_10853 + _8176 + _8336 + 115 len ceil32(_12964)] = mem[_12478 + 32 len ceil32(_12964)]
                    if ceil32(_12964) > _12964:
                        mem[_12964 + _10853 + _8176 + _8336 + 115] = 0
                    revert with 0, 32, mem[_10853 + _8176 + _8336 + 83 len ceil32(_12964) + 32]
                mem[_10853 + mem[64] + _8336 + 47] = 0
                _12479 = mem[64]
                mem[mem[64]] = _10853 + _8336 + 15
                mem[64] = _10853 + mem[64] + _8336 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10853 + _8176 + _8336 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10853 + _8176 + _8336 + 51] = 32
                _12967 = mem[_12479]
                mem[_10853 + _8176 + _8336 + 83] = mem[_12479]
                mem[_10853 + _8176 + _8336 + 115 len ceil32(_12967)] = mem[_12479 + 32 len ceil32(_12967)]
                if ceil32(_12967) > _12967:
                    mem[_12967 + _10853 + _8176 + _8336 + 115] = 0
                revert with 0, 32, mem[_10853 + _8176 + _8336 + 83 len ceil32(_12967) + 32]
            mem[_5306 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
            if 0 >= mem[_5306]:
                revert with 0, 50
            mem[_5306 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= mem[_5306]:
                revert with 0, 50
            mem[_5306 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[_5306]:
                    revert with 0, 50
                mem[idx + _5306 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _8177 = mem[64]
            _8337 = mem[_1175 + _725 + _749 + 42]
            mem[mem[64] + 32 len ceil32(mem[_1175 + _725 + _749 + 42])] = mem[_1175 + _725 + _749 + 74 len ceil32(mem[_1175 + _725 + _749 + 42])]
            mem[mem[64] + _8337 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            if ceil32(_8337) <= _8337:
                _10854 = mem[_5306]
                mem[mem[64] + _8337 + 47 len ceil32(mem[_5306])] = mem[_5306 + 32 len ceil32(mem[_5306])]
                if ceil32(_10854) <= _10854:
                    _12480 = mem[64]
                    mem[mem[64]] = _10854 + _8337 + 15
                    mem[64] = _10854 + mem[64] + _8337 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10854 + _8177 + _8337 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10854 + _8177 + _8337 + 51] = 32
                    _12970 = mem[_12480]
                    mem[_10854 + _8177 + _8337 + 83] = mem[_12480]
                    mem[_10854 + _8177 + _8337 + 115 len ceil32(_12970)] = mem[_12480 + 32 len ceil32(_12970)]
                    if ceil32(_12970) > _12970:
                        mem[_12970 + _10854 + _8177 + _8337 + 115] = 0
                    revert with 0, 32, mem[_10854 + _8177 + _8337 + 83 len ceil32(_12970) + 32]
                mem[_10854 + mem[64] + _8337 + 47] = 0
                _12481 = mem[64]
                mem[mem[64]] = _10854 + _8337 + 15
                mem[64] = _10854 + mem[64] + _8337 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10854 + _8177 + _8337 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10854 + _8177 + _8337 + 51] = 32
                _12973 = mem[_12481]
                mem[_10854 + _8177 + _8337 + 83] = mem[_12481]
                mem[_10854 + _8177 + _8337 + 115 len ceil32(_12973)] = mem[_12481 + 32 len ceil32(_12973)]
                if ceil32(_12973) > _12973:
                    mem[_12973 + _10854 + _8177 + _8337 + 115] = 0
                revert with 0, 32, mem[_10854 + _8177 + _8337 + 83 len ceil32(_12973) + 32]
            _10855 = mem[_5306]
            mem[mem[64] + _8337 + 47 len ceil32(mem[_5306])] = mem[_5306 + 32 len ceil32(mem[_5306])]
            if ceil32(_10855) <= _10855:
                _12482 = mem[64]
                mem[mem[64]] = _10855 + _8337 + 15
                mem[64] = _10855 + mem[64] + _8337 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10855 + _8177 + _8337 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10855 + _8177 + _8337 + 51] = 32
                _12976 = mem[_12482]
                mem[_10855 + _8177 + _8337 + 83] = mem[_12482]
                mem[_10855 + _8177 + _8337 + 115 len ceil32(_12976)] = mem[_12482 + 32 len ceil32(_12976)]
                if ceil32(_12976) > _12976:
                    mem[_12976 + _10855 + _8177 + _8337 + 115] = 0
                revert with 0, 32, mem[_10855 + _8177 + _8337 + 83 len ceil32(_12976) + 32]
            mem[_10855 + mem[64] + _8337 + 47] = 0
            _12483 = mem[64]
            mem[mem[64]] = _10855 + _8337 + 15
            mem[64] = _10855 + mem[64] + _8337 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10855 + _8177 + _8337 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10855 + _8177 + _8337 + 51] = 32
            _12979 = mem[_12483]
            mem[_10855 + _8177 + _8337 + 83] = mem[_12483]
            mem[_10855 + _8177 + _8337 + 115 len ceil32(_12979)] = mem[_12483 + 32 len ceil32(_12979)]
            if ceil32(_12979) > _12979:
                mem[_12979 + _10855 + _8177 + _8337 + 115] = 0
            revert with 0, 32, mem[_10855 + _8177 + _8337 + 83 len ceil32(_12979) + 32]
        mem[_1175 + mem[64] + mem[96] + 42] = 0
        mem[mem[64]] = _1175 + mem[96] + 10
        mem[32] = 52
        if stor52[msg.sender] >= stor51.length:
            revert with 0, 50
        mem[0] = 51
        mem[_1175 + mem[64] + _749 + 42] = 42
        mem[64] = _1175 + mem[64] + _749 + 138
        mem[_1175 + _725 + _749 + 74 len 42] = call.data[calldata.size len 42]
        mem[_1175 + _725 + _749 + 74 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        mem[_1175 + _725 + _749 + 75 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        idx = 41
        s = stor51[stor52[msg.sender]].field_0
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + _1175 + _725 + _749 + 74 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if stor51[stor52[msg.sender]].field_0 + 10240:
            revert with 0, 'Strings: hex length insufficient'
        if not uint32(arg1):
            _3363 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3363] = 4
            mem[_3363 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
            _3459 = mem[64]
            mem[mem[64] + 32 len 64] = 0, mem[_1175 + _725 + _749 + 75 len 63]
            var128001 = 64
            mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 93] = 0
            _8187 = mem[64]
            mem[mem[64]] = 61
            mem[64] = mem[64] + 93
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_3459 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3459 + 97] = 32
            _8683 = mem[_8187]
            mem[_3459 + 129] = mem[_8187]
            mem[_3459 + 161 len ceil32(_8683)] = mem[_8187 + 32 len ceil32(_8683)]
            if ceil32(_8683) > _8683:
                mem[_8683 + _3459 + 161] = 0
            revert with 0, 32, mem[_3459 + 129 len ceil32(_8683) + 32]
        s = 0
        idx = uint32(arg1)
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = Mask(248, 0, idx) * 0.00390625
            continue 
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 2 > !(2 * s):
            revert with 0, 17
        if (2 * s) + 2 > test266151307():
            revert with 0, 65
        _5311 = mem[64]
        mem[mem[64]] = (2 * s) + 2
        mem[64] = mem[64] + floor32((2 * s) + 33) + 32
        if not (2 * s) + 2:
            if 0 >= mem[_5311]:
                revert with 0, 50
            mem[_5311 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= mem[_5311]:
                revert with 0, 50
            mem[_5311 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[_5311]:
                    revert with 0, 50
                mem[idx + _5311 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _8182 = mem[64]
            _8342 = mem[_1175 + _725 + _749 + 42]
            mem[mem[64] + 32 len ceil32(mem[_1175 + _725 + _749 + 42])] = mem[_1175 + _725 + _749 + 74 len ceil32(mem[_1175 + _725 + _749 + 42])]
            mem[mem[64] + _8342 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            if ceil32(_8342) <= _8342:
                _10856 = mem[_5311]
                mem[mem[64] + _8342 + 47 len ceil32(mem[_5311])] = mem[_5311 + 32 len ceil32(mem[_5311])]
                if ceil32(_10856) <= _10856:
                    _12484 = mem[64]
                    mem[mem[64]] = _10856 + _8342 + 15
                    mem[64] = _10856 + mem[64] + _8342 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10856 + _8182 + _8342 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10856 + _8182 + _8342 + 51] = 32
                    _12982 = mem[_12484]
                    mem[_10856 + _8182 + _8342 + 83] = mem[_12484]
                    mem[_10856 + _8182 + _8342 + 115 len ceil32(_12982)] = mem[_12484 + 32 len ceil32(_12982)]
                    if ceil32(_12982) > _12982:
                        mem[_12982 + _10856 + _8182 + _8342 + 115] = 0
                    revert with 0, 32, mem[_10856 + _8182 + _8342 + 83 len ceil32(_12982) + 32]
                mem[_10856 + mem[64] + _8342 + 47] = 0
                _12485 = mem[64]
                mem[mem[64]] = _10856 + _8342 + 15
                mem[64] = _10856 + mem[64] + _8342 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10856 + _8182 + _8342 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10856 + _8182 + _8342 + 51] = 32
                _12985 = mem[_12485]
                mem[_10856 + _8182 + _8342 + 83] = mem[_12485]
                mem[_10856 + _8182 + _8342 + 115 len ceil32(_12985)] = mem[_12485 + 32 len ceil32(_12985)]
                if ceil32(_12985) > _12985:
                    mem[_12985 + _10856 + _8182 + _8342 + 115] = 0
                revert with 0, 32, mem[_10856 + _8182 + _8342 + 83 len ceil32(_12985) + 32]
            _10857 = mem[_5311]
            mem[mem[64] + _8342 + 47 len ceil32(mem[_5311])] = mem[_5311 + 32 len ceil32(mem[_5311])]
            if ceil32(_10857) <= _10857:
                _12486 = mem[64]
                mem[mem[64]] = _10857 + _8342 + 15
                mem[64] = _10857 + mem[64] + _8342 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10857 + _8182 + _8342 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10857 + _8182 + _8342 + 51] = 32
                _12988 = mem[_12486]
                mem[_10857 + _8182 + _8342 + 83] = mem[_12486]
                mem[_10857 + _8182 + _8342 + 115 len ceil32(_12988)] = mem[_12486 + 32 len ceil32(_12988)]
                if ceil32(_12988) > _12988:
                    mem[_12988 + _10857 + _8182 + _8342 + 115] = 0
                revert with 0, 32, mem[_10857 + _8182 + _8342 + 83 len ceil32(_12988) + 32]
            mem[_10857 + mem[64] + _8342 + 47] = 0
            _12487 = mem[64]
            mem[mem[64]] = _10857 + _8342 + 15
            mem[64] = _10857 + mem[64] + _8342 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10857 + _8182 + _8342 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10857 + _8182 + _8342 + 51] = 32
            _12991 = mem[_12487]
            mem[_10857 + _8182 + _8342 + 83] = mem[_12487]
            mem[_10857 + _8182 + _8342 + 115 len ceil32(_12991)] = mem[_12487 + 32 len ceil32(_12991)]
            if ceil32(_12991) > _12991:
                mem[_12991 + _10857 + _8182 + _8342 + 115] = 0
            revert with 0, 32, mem[_10857 + _8182 + _8342 + 83 len ceil32(_12991) + 32]
        mem[_5311 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
        if 0 >= mem[_5311]:
            revert with 0, 50
        mem[_5311 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if 1 >= mem[_5311]:
            revert with 0, 50
        mem[_5311 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 1 > !(2 * s):
            revert with 0, 17
        idx = (2 * s) + 1
        t = uint32(arg1)
        while idx > 1:
            if t % 16 >= 16:
                revert with 0, 50
            if idx >= mem[_5311]:
                revert with 0, 50
            mem[idx + _5311 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            t = Mask(252, 0, t) * 0.0625
            continue 
        if t:
            revert with 0, 'Strings: hex length insufficient'
        _8183 = mem[64]
        _8343 = mem[_1175 + _725 + _749 + 42]
        mem[mem[64] + 32 len ceil32(mem[_1175 + _725 + _749 + 42])] = mem[_1175 + _725 + _749 + 74 len ceil32(mem[_1175 + _725 + _749 + 42])]
        mem[mem[64] + _8343 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
        if ceil32(_8343) <= _8343:
            _10858 = mem[_5311]
            mem[mem[64] + _8343 + 47 len ceil32(mem[_5311])] = mem[_5311 + 32 len ceil32(mem[_5311])]
            if ceil32(_10858) <= _10858:
                _12488 = mem[64]
                mem[mem[64]] = _10858 + _8343 + 15
                mem[64] = _10858 + mem[64] + _8343 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10858 + _8183 + _8343 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10858 + _8183 + _8343 + 51] = 32
                _12994 = mem[_12488]
                mem[_10858 + _8183 + _8343 + 83] = mem[_12488]
                mem[_10858 + _8183 + _8343 + 115 len ceil32(_12994)] = mem[_12488 + 32 len ceil32(_12994)]
                if ceil32(_12994) > _12994:
                    mem[_12994 + _10858 + _8183 + _8343 + 115] = 0
                revert with 0, 32, mem[_10858 + _8183 + _8343 + 83 len ceil32(_12994) + 32]
            mem[_10858 + mem[64] + _8343 + 47] = 0
            _12489 = mem[64]
            mem[mem[64]] = _10858 + _8343 + 15
            mem[64] = _10858 + mem[64] + _8343 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10858 + _8183 + _8343 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10858 + _8183 + _8343 + 51] = 32
            _12997 = mem[_12489]
            mem[_10858 + _8183 + _8343 + 83] = mem[_12489]
            mem[_10858 + _8183 + _8343 + 115 len ceil32(_12997)] = mem[_12489 + 32 len ceil32(_12997)]
            if ceil32(_12997) > _12997:
                mem[_12997 + _10858 + _8183 + _8343 + 115] = 0
            revert with 0, 32, mem[_10858 + _8183 + _8343 + 83 len ceil32(_12997) + 32]
        _10859 = mem[_5311]
        mem[mem[64] + _8343 + 47 len ceil32(mem[_5311])] = mem[_5311 + 32 len ceil32(mem[_5311])]
        if ceil32(_10859) <= _10859:
            _12490 = mem[64]
            mem[mem[64]] = _10859 + _8343 + 15
            mem[64] = _10859 + mem[64] + _8343 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10859 + _8183 + _8343 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10859 + _8183 + _8343 + 51] = 32
            _13000 = mem[_12490]
            mem[_10859 + _8183 + _8343 + 83] = mem[_12490]
            mem[_10859 + _8183 + _8343 + 115 len ceil32(_13000)] = mem[_12490 + 32 len ceil32(_13000)]
            if ceil32(_13000) > _13000:
                mem[_13000 + _10859 + _8183 + _8343 + 115] = 0
            revert with 0, 32, mem[_10859 + _8183 + _8343 + 83 len ceil32(_13000) + 32]
        mem[_10859 + mem[64] + _8343 + 47] = 0
        _12491 = mem[64]
        mem[mem[64]] = _10859 + _8343 + 15
        mem[64] = _10859 + mem[64] + _8343 + 47
        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
            if stor52[address(arg2)] >= stor51.length:
                revert with 0, 50
            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
        mem[_10859 + _8183 + _8343 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_10859 + _8183 + _8343 + 51] = 32
        _13003 = mem[_12491]
        mem[_10859 + _8183 + _8343 + 83] = mem[_12491]
        mem[_10859 + _8183 + _8343 + 115 len ceil32(_13003)] = mem[_12491 + 32 len ceil32(_13003)]
        if ceil32(_13003) > _13003:
            mem[_13003 + _10859 + _8183 + _8343 + 115] = 0
        revert with 0, 32, mem[_10859 + _8183 + _8343 + 83 len ceil32(_13003) + 32]
    stor52[address(arg2)] = uint32(stor51.length)
    mem[96] = address(arg2)
    mem[128] = uint32(stor51.length)
    mem[160] = 0
    stor51.length++
    stor82A7[stor51.length].field_0 = address(arg2)
    stor82A7[stor51.length].field_0 = uint32(stor51.length)
    stor82A7[stor51.length].field_32 = 0
    stor82A7[stor51.length].field_256 = 0
    mem[32] = 52
    if stor52[address(arg2)] >= stor51.length:
        revert with 0, 50
    if stor52[address(arg2)] >= stor51.length:
        revert with 0, 50
    if stor51[stor52[address(arg2)]].field_192 >= uint32(arg1):
        mem[0] = 51
        mem[192] = 42
        mem[224 len 42] = call.data[calldata.size len 42]
        mem[224 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        mem[225 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        idx = 41
        s = stor51[stor52[address(arg2)]].field_0
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if stor51[stor52[address(arg2)]].field_0 + 10240:
            revert with 0, 'Strings: hex length insufficient'
        if not uint32(arg1):
            mem[384 len 64] = 0, mem[225 len 63]
            var60001 = 64
            mem[426] = 0x2068617320726f6c652000000000000000000000000000000000000000000000
            mem[436] = 0x3078303000000000000000000000000000000000000000000000000000000000
            mem[440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[444] = 32
            mem[476] = mem[352]
            mem[508 len ceil32(mem[352])] = mem[384 len ceil32(mem[352])]
            if ceil32(mem[352]) > mem[352]:
                mem[mem[352] + 508] = 0
            revert with 0, 32, mem[352], mem[508 len ceil32(mem[352])]
        s = 0
        idx = uint32(arg1)
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = Mask(248, 0, idx) * 0.00390625
            continue 
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 2 > !(2 * s):
            revert with 0, 17
        if (2 * s) + 2 > test266151307():
            revert with 0, 65
        mem[288] = (2 * s) + 2
        mem[64] = floor32((2 * s) + 33) + 320
        if not (2 * s) + 2:
            if 0 >= (2 * s) + 2:
                revert with 0, 50
            mem[320 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= (2 * s) + 2:
                revert with 0, 50
            mem[321 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[288]:
                    revert with 0, 50
                mem[idx + 320 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _742 = mem[64]
            _766 = mem[192]
            mem[mem[64] + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            mem[mem[64] + _766 + 32] = 0x2068617320726f6c652000000000000000000000000000000000000000000000
            if ceil32(_766) <= _766:
                _1192 = mem[288]
                mem[mem[64] + _766 + 42 len ceil32(mem[288])] = mem[320 len ceil32(mem[288])]
                if ceil32(_1192) <= _1192:
                    _1892 = mem[64]
                    mem[64] = _1192 + mem[64] + _766 + 42
                    mem[_1192 + _742 + _766 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1192 + _742 + _766 + 46] = 32
                    _1996 = mem[_1892]
                    mem[_1192 + _742 + _766 + 78] = mem[_1892]
                    mem[_1192 + _742 + _766 + 110 len ceil32(_1996)] = mem[_1892 + 32 len ceil32(_1996)]
                    if ceil32(_1996) > _1996:
                        mem[_1996 + _1192 + _742 + _766 + 110] = 0
                    revert with 0, 32, mem[_1192 + _742 + _766 + 78 len ceil32(_1996) + 32]
                mem[_1192 + mem[64] + _766 + 42] = 0
                _1893 = mem[64]
                mem[64] = _1192 + mem[64] + _766 + 42
                mem[_1192 + _742 + _766 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1192 + _742 + _766 + 46] = 32
                _1997 = mem[_1893]
                mem[_1192 + _742 + _766 + 78] = mem[_1893]
                mem[_1192 + _742 + _766 + 110 len ceil32(_1997)] = mem[_1893 + 32 len ceil32(_1997)]
                if ceil32(_1997) > _1997:
                    mem[_1997 + _1192 + _742 + _766 + 110] = 0
                revert with 0, 32, mem[_1192 + _742 + _766 + 78 len ceil32(_1997) + 32]
            _1193 = mem[288]
            mem[mem[64] + _766 + 42 len ceil32(mem[288])] = mem[320 len ceil32(mem[288])]
            if ceil32(_1193) <= _1193:
                _1894 = mem[64]
                mem[64] = _1193 + mem[64] + _766 + 42
                mem[_1193 + _742 + _766 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1193 + _742 + _766 + 46] = 32
                _1998 = mem[_1894]
                mem[_1193 + _742 + _766 + 78] = mem[_1894]
                mem[_1193 + _742 + _766 + 110 len ceil32(_1998)] = mem[_1894 + 32 len ceil32(_1998)]
                if ceil32(_1998) > _1998:
                    mem[_1998 + _1193 + _742 + _766 + 110] = 0
                revert with 0, 32, mem[_1193 + _742 + _766 + 78 len ceil32(_1998) + 32]
            mem[_1193 + mem[64] + _766 + 42] = 0
            _1895 = mem[64]
            mem[64] = _1193 + _742 + _766 + 42
            mem[_1193 + _742 + _766 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_1193 + _742 + _766 + 46] = 32
            _1999 = mem[_1895]
            mem[_1193 + _742 + _766 + 78] = mem[_1895]
            mem[_1193 + _742 + _766 + 110 len ceil32(_1999)] = mem[_1895 + 32 len ceil32(_1999)]
            if ceil32(_1999) > _1999:
                mem[_1999 + _1193 + _742 + _766 + 110] = 0
            revert with 0, 32, mem[_1193 + _742 + _766 + 78 len ceil32(_1999) + 32]
        mem[320 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
        if 0 >= (2 * s) + 2:
            revert with 0, 50
        mem[320 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if 1 >= (2 * s) + 2:
            revert with 0, 50
        mem[321 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 1 > !(2 * s):
            revert with 0, 17
        idx = (2 * s) + 1
        t = uint32(arg1)
        while idx > 1:
            if t % 16 >= 16:
                revert with 0, 50
            if idx >= mem[288]:
                revert with 0, 50
            mem[idx + 320 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            t = Mask(252, 0, t) * 0.0625
            continue 
        if t:
            revert with 0, 'Strings: hex length insufficient'
        _743 = mem[64]
        _767 = mem[192]
        mem[mem[64] + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
        mem[mem[64] + _767 + 32] = 0x2068617320726f6c652000000000000000000000000000000000000000000000
        if ceil32(_767) <= _767:
            _1194 = mem[288]
            mem[mem[64] + _767 + 42 len ceil32(mem[288])] = mem[320 len ceil32(mem[288])]
            if ceil32(_1194) <= _1194:
                _1896 = mem[64]
                mem[64] = _1194 + mem[64] + _767 + 42
                mem[_1194 + _743 + _767 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1194 + _743 + _767 + 46] = 32
                _2000 = mem[_1896]
                mem[_1194 + _743 + _767 + 78] = mem[_1896]
                mem[_1194 + _743 + _767 + 110 len ceil32(_2000)] = mem[_1896 + 32 len ceil32(_2000)]
                if ceil32(_2000) > _2000:
                    mem[_2000 + _1194 + _743 + _767 + 110] = 0
                revert with 0, 32, mem[_1194 + _743 + _767 + 78 len ceil32(_2000) + 32]
            mem[_1194 + mem[64] + _767 + 42] = 0
            _1897 = mem[64]
            mem[64] = _1194 + mem[64] + _767 + 42
            mem[_1194 + _743 + _767 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_1194 + _743 + _767 + 46] = 32
            _2001 = mem[_1897]
            mem[_1194 + _743 + _767 + 78] = mem[_1897]
            mem[_1194 + _743 + _767 + 110 len ceil32(_2001)] = mem[_1897 + 32 len ceil32(_2001)]
            if ceil32(_2001) > _2001:
                mem[_2001 + _1194 + _743 + _767 + 110] = 0
            revert with 0, 32, mem[_1194 + _743 + _767 + 78 len ceil32(_2001) + 32]
        _1195 = mem[288]
        mem[mem[64] + _767 + 42 len ceil32(mem[288])] = mem[320 len ceil32(mem[288])]
        if ceil32(_1195) <= _1195:
            _1898 = mem[64]
            mem[64] = _1195 + mem[64] + _767 + 42
            mem[_1195 + _743 + _767 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_1195 + _743 + _767 + 46] = 32
            _2002 = mem[_1898]
            mem[_1195 + _743 + _767 + 78] = mem[_1898]
            mem[_1195 + _743 + _767 + 110 len ceil32(_2002)] = mem[_1898 + 32 len ceil32(_2002)]
            if ceil32(_2002) > _2002:
                mem[_2002 + _1195 + _743 + _767 + 110] = 0
            revert with 0, 32, mem[_1195 + _743 + _767 + 78 len ceil32(_2002) + 32]
        mem[_1195 + mem[64] + _767 + 42] = 0
        _1899 = mem[64]
        mem[64] = _1195 + mem[64] + _767 + 42
        mem[_1195 + _743 + _767 + 42] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_1195 + _743 + _767 + 46] = 32
        _2003 = mem[_1899]
        mem[_1195 + _743 + _767 + 78] = mem[_1899]
        mem[_1195 + _743 + _767 + 110 len ceil32(_2003)] = mem[_1899 + 32 len ceil32(_2003)]
        if ceil32(_2003) > _2003:
            mem[_2003 + _1195 + _743 + _767 + 110] = 0
        revert with 0, 32, mem[_1195 + _743 + _767 + 78 len ceil32(_2003) + 32]
    mem[192] = 42
    mem[224 len 42] = call.data[calldata.size len 42]
    mem[224 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    mem[225 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    idx = 41
    s = stor51[stor52[address(arg2)]].field_0
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if stor51[stor52[address(arg2)]].field_0 + 10240:
        revert with 0, 'Strings: hex length insufficient'
    if not uint32(arg1):
        mem[288] = 4
        mem[320] = 0x3078303000000000000000000000000000000000000000000000000000000000
        mem[384 len 64] = 0, mem[225 len 63]
        var59001 = 64
        mem[426] = 0x2068617320726f6c652000000000000000000000000000000000000000000000
        mem[436] = 0x3078303000000000000000000000000000000000000000000000000000000000
        mem[352] = 56
        mem[32] = 52
        if stor52[msg.sender] >= stor51.length:
            revert with 0, 50
        mem[0] = 51
        mem[440] = 42
        mem[472 len 42] = call.data[calldata.size len 42]
        mem[472 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        mem[473 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        idx = 41
        s = stor51[stor52[msg.sender]].field_0
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 472 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if stor51[stor52[msg.sender]].field_0 + 10240:
            revert with 0, 'Strings: hex length insufficient'
        if not uint32(arg1):
            var102001 = 64
            if uint32(arg1) > stor51[stor52[msg.sender]].field_192:
                revert with 0, 32, 61, mem[504 len 42], 0, 813183024, 0 >> 232, 0
            if stor52[address(arg2)] >= stor51.length:
                revert with 0, 50
            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
        s = 0
        idx = uint32(arg1)
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = Mask(248, 0, idx) * 0.00390625
            continue 
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 2 > !(2 * s):
            revert with 0, 17
        if (2 * s) + 2 > test266151307():
            revert with 0, 65
        mem[536] = (2 * s) + 2
        mem[64] = floor32((2 * s) + 33) + 568
        if not (2 * s) + 2:
            if 0 >= (2 * s) + 2:
                revert with 0, 50
            mem[568 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= (2 * s) + 2:
                revert with 0, 50
            mem[569 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[536]:
                    revert with 0, 50
                mem[idx + 568 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _3350 = mem[64]
            _3430 = mem[440]
            mem[mem[64] + 32 len ceil32(mem[440])] = mem[472 len ceil32(mem[440])]
            var127001 = ceil32(_3430)
            mem[mem[64] + _3430 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            if ceil32(_3430) <= _3430:
                _5144 = mem[536]
                mem[mem[64] + _3430 + 47 len ceil32(mem[536])] = mem[568 len ceil32(mem[536])]
                if ceil32(_5144) <= _5144:
                    _8292 = mem[64]
                    mem[mem[64]] = _5144 + _3430 + 15
                    mem[64] = _5144 + mem[64] + _3430 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_5144 + _3350 + _3430 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5144 + _3350 + _3430 + 51] = 32
                    _8950 = mem[_8292]
                    mem[_5144 + _3350 + _3430 + 83] = mem[_8292]
                    mem[_5144 + _3350 + _3430 + 115 len ceil32(_8950)] = mem[_8292 + 32 len ceil32(_8950)]
                    if ceil32(_8950) > _8950:
                        mem[_8950 + _5144 + _3350 + _3430 + 115] = 0
                    revert with 0, 32, mem[_5144 + _3350 + _3430 + 83 len ceil32(_8950) + 32]
                mem[_5144 + mem[64] + _3430 + 47] = 0
                _8293 = mem[64]
                mem[mem[64]] = _5144 + _3350 + _3430 + -mem[64] + 15
                mem[64] = _5144 + _3350 + _3430 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_5144 + _3350 + _3430 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_5144 + _3350 + _3430 + 51] = 32
                _8953 = mem[_8293]
                mem[_5144 + _3350 + _3430 + 83] = mem[_8293]
                mem[_5144 + _3350 + _3430 + 115 len ceil32(_8953)] = mem[_8293 + 32 len ceil32(_8953)]
                if ceil32(_8953) > _8953:
                    mem[_8953 + _5144 + _3350 + _3430 + 115] = 0
                revert with 0, 32, mem[_5144 + _3350 + _3430 + 83 len ceil32(_8953) + 32]
            _5145 = mem[536]
            mem[mem[64] + _3430 + 47 len ceil32(mem[536])] = mem[568 len ceil32(mem[536])]
            if ceil32(_5145) <= _5145:
                _8294 = mem[64]
                mem[mem[64]] = _5145 + _3430 + 15
                mem[64] = _5145 + mem[64] + _3430 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_5145 + _3350 + _3430 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_5145 + _3350 + _3430 + 51] = 32
                _8956 = mem[_8294]
                mem[_5145 + _3350 + _3430 + 83] = mem[_8294]
                mem[_5145 + _3350 + _3430 + 115 len ceil32(_8956)] = mem[_8294 + 32 len ceil32(_8956)]
                if ceil32(_8956) > _8956:
                    mem[_8956 + _5145 + _3350 + _3430 + 115] = 0
                revert with 0, 32, mem[_5145 + _3350 + _3430 + 83 len ceil32(_8956) + 32]
            mem[_5145 + mem[64] + _3430 + 47] = 0
            _8295 = mem[64]
            mem[mem[64]] = _5145 + _3430 + 15
            mem[64] = _5145 + mem[64] + _3430 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_5145 + _3350 + _3430 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_5145 + _3350 + _3430 + 51] = 32
            _8959 = mem[_8295]
            mem[_5145 + _3350 + _3430 + 83] = mem[_8295]
            mem[_5145 + _3350 + _3430 + 115 len ceil32(_8959)] = mem[_8295 + 32 len ceil32(_8959)]
            if ceil32(_8959) > _8959:
                mem[_8959 + _5145 + _3350 + _3430 + 115] = 0
            revert with 0, 32, mem[_5145 + _3350 + _3430 + 83 len ceil32(_8959) + 32]
        mem[568 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
        if 0 >= (2 * s) + 2:
            revert with 0, 50
        mem[568 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if 1 >= (2 * s) + 2:
            revert with 0, 50
        mem[569 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 1 > !(2 * s):
            revert with 0, 17
        idx = (2 * s) + 1
        t = uint32(arg1)
        while idx > 1:
            if t % 16 >= 16:
                revert with 0, 50
            if idx >= mem[536]:
                revert with 0, 50
            mem[idx + 568 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            t = Mask(252, 0, t) * 0.0625
            continue 
        if t:
            revert with 0, 'Strings: hex length insufficient'
        _3351 = mem[64]
        _3431 = mem[440]
        mem[mem[64] + 32 len ceil32(mem[440])] = mem[472 len ceil32(mem[440])]
        var128001 = ceil32(_3431)
        mem[mem[64] + _3431 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
        if ceil32(_3431) <= _3431:
            _5146 = mem[536]
            mem[mem[64] + _3431 + 47 len ceil32(mem[536])] = mem[568 len ceil32(mem[536])]
            if ceil32(_5146) <= _5146:
                _8296 = mem[64]
                mem[mem[64]] = _5146 + _3431 + 15
                mem[64] = _5146 + mem[64] + _3431 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_5146 + _3351 + _3431 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_5146 + _3351 + _3431 + 51] = 32
                _8962 = mem[_8296]
                mem[_5146 + _3351 + _3431 + 83] = mem[_8296]
                mem[_5146 + _3351 + _3431 + 115 len ceil32(_8962)] = mem[_8296 + 32 len ceil32(_8962)]
                if ceil32(_8962) > _8962:
                    mem[_8962 + _5146 + _3351 + _3431 + 115] = 0
                revert with 0, 32, mem[_5146 + _3351 + _3431 + 83 len ceil32(_8962) + 32]
            mem[_5146 + mem[64] + _3431 + 47] = 0
            _8297 = mem[64]
            mem[mem[64]] = _5146 + _3431 + 15
            mem[64] = _5146 + mem[64] + _3431 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_5146 + _3351 + _3431 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_5146 + _3351 + _3431 + 51] = 32
            _8965 = mem[_8297]
            mem[_5146 + _3351 + _3431 + 83] = mem[_8297]
            mem[_5146 + _3351 + _3431 + 115 len ceil32(_8965)] = mem[_8297 + 32 len ceil32(_8965)]
            if ceil32(_8965) > _8965:
                mem[_8965 + _5146 + _3351 + _3431 + 115] = 0
            revert with 0, 32, mem[_5146 + _3351 + _3431 + 83 len ceil32(_8965) + 32]
        _5147 = mem[536]
        mem[mem[64] + _3431 + 47 len ceil32(mem[536])] = mem[568 len ceil32(mem[536])]
        if ceil32(_5147) <= _5147:
            _8298 = mem[64]
            mem[mem[64]] = _5147 + _3431 + 15
            mem[64] = _5147 + mem[64] + _3431 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_5147 + _3351 + _3431 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_5147 + _3351 + _3431 + 51] = 32
            _8968 = mem[_8298]
            mem[_5147 + _3351 + _3431 + 83] = mem[_8298]
            mem[_5147 + _3351 + _3431 + 115 len ceil32(_8968)] = mem[_8298 + 32 len ceil32(_8968)]
            if ceil32(_8968) > _8968:
                mem[_8968 + _5147 + _3351 + _3431 + 115] = 0
            revert with 0, 32, mem[_5147 + _3351 + _3431 + 83 len ceil32(_8968) + 32]
        mem[_5147 + mem[64] + _3431 + 47] = 0
        _8299 = mem[64]
        mem[mem[64]] = _5147 + _3431 + 15
        mem[64] = _5147 + mem[64] + _3431 + 47
        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
            if stor52[address(arg2)] >= stor51.length:
                revert with 0, 50
            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
        mem[_5147 + _3351 + _3431 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_5147 + _3351 + _3431 + 51] = 32
        _8971 = mem[_8299]
        mem[_5147 + _3351 + _3431 + 83] = mem[_8299]
        mem[_5147 + _3351 + _3431 + 115 len ceil32(_8971)] = mem[_8299 + 32 len ceil32(_8971)]
        if ceil32(_8971) > _8971:
            mem[_8971 + _5147 + _3351 + _3431 + 115] = 0
        revert with 0, 32, mem[_5147 + _3351 + _3431 + 83 len ceil32(_8971) + 32]
    s = 0
    idx = uint32(arg1)
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = Mask(248, 0, idx) * 0.00390625
        continue 
    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 2 > !(2 * s):
        revert with 0, 17
    if (2 * s) + 2 > test266151307():
        revert with 0, 65
    mem[288] = (2 * s) + 2
    mem[64] = floor32((2 * s) + 33) + 320
    if not (2 * s) + 2:
        if 0 >= (2 * s) + 2:
            revert with 0, 50
        mem[320 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if 1 >= (2 * s) + 2:
            revert with 0, 50
        mem[321 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 1 > !(2 * s):
            revert with 0, 17
        idx = (2 * s) + 1
        t = uint32(arg1)
        while idx > 1:
            if t % 16 >= 16:
                revert with 0, 50
            if idx >= mem[288]:
                revert with 0, 50
            mem[idx + 320 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            t = Mask(252, 0, t) * 0.0625
            continue 
        if t:
            revert with 0, 'Strings: hex length insufficient'
        _736 = mem[64]
        _760 = mem[192]
        mem[mem[64] + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
        mem[mem[64] + _760 + 32] = 0x2068617320726f6c652000000000000000000000000000000000000000000000
        if ceil32(_760) <= _760:
            _1184 = mem[288]
            mem[_736 + _760 + 42 len ceil32(mem[288])] = mem[320 len ceil32(mem[288])]
            if ceil32(_1184) <= _1184:
                mem[mem[64]] = _1184 + _736 + _760 + -mem[64] + 10
                mem[32] = 52
                if stor52[msg.sender] >= stor51.length:
                    revert with 0, 50
                mem[0] = 51
                mem[_1184 + _736 + _760 + 42] = 42
                mem[64] = _1184 + _736 + _760 + 138
                mem[_1184 + _736 + _760 + 74 len 42] = call.data[calldata.size len 42]
                mem[_1184 + _736 + _760 + 74 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                mem[_1184 + _736 + _760 + 75 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                idx = 41
                s = stor51[stor52[msg.sender]].field_0
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 42:
                        revert with 0, 50
                    mem[idx + _1184 + _736 + _760 + 74 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if stor51[stor52[msg.sender]].field_0 + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                if not uint32(arg1):
                    _3404 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3404] = 4
                    mem[_3404 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                    _3476 = mem[64]
                    mem[mem[64] + 32 len 64] = 0, mem[_1184 + _736 + _760 + 75 len 63]
                    var127001 = 64
                    mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                    mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 93] = 0
                    _8225 = mem[64]
                    mem[mem[64]] = 61
                    mem[64] = mem[64] + 93
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_3476 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3476 + 97] = 32
                    _8791 = mem[_8225]
                    mem[_3476 + 129] = mem[_8225]
                    mem[_3476 + 161 len ceil32(_8791)] = mem[_8225 + 32 len ceil32(_8791)]
                    if ceil32(_8791) > _8791:
                        mem[_8791 + _3476 + 161] = 0
                    revert with 0, 32, mem[_3476 + 129 len ceil32(_8791) + 32]
                s = 0
                idx = uint32(arg1)
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = Mask(248, 0, idx) * 0.00390625
                    continue 
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 > !(2 * s):
                    revert with 0, 17
                if (2 * s) + 2 > test266151307():
                    revert with 0, 65
                _5348 = mem[64]
                mem[mem[64]] = (2 * s) + 2
                mem[64] = mem[64] + floor32((2 * s) + 33) + 32
                if not (2 * s) + 2:
                    if 0 >= mem[_5348]:
                        revert with 0, 50
                    mem[_5348 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_5348]:
                        revert with 0, 50
                    mem[_5348 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 1 > !(2 * s):
                        revert with 0, 17
                    idx = (2 * s) + 1
                    t = uint32(arg1)
                    while idx > 1:
                        if t % 16 >= 16:
                            revert with 0, 50
                        if idx >= mem[_5348]:
                            revert with 0, 50
                        mem[idx + _5348 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        t = Mask(252, 0, t) * 0.0625
                        continue 
                    if t:
                        revert with 0, 'Strings: hex length insufficient'
                    _8220 = mem[64]
                    _8380 = mem[_1184 + _736 + _760 + 42]
                    mem[mem[64] + 32 len ceil32(mem[_1184 + _736 + _760 + 42])] = mem[_1184 + _736 + _760 + 74 len ceil32(mem[_1184 + _736 + _760 + 42])]
                    mem[mem[64] + _8380 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                    if ceil32(_8380) <= _8380:
                        _10860 = mem[_5348]
                        mem[mem[64] + _8380 + 47 len ceil32(mem[_5348])] = mem[_5348 + 32 len ceil32(mem[_5348])]
                        if ceil32(_10860) <= _10860:
                            _12492 = mem[64]
                            mem[mem[64]] = _10860 + _8380 + 15
                            mem[64] = _10860 + mem[64] + _8380 + 47
                            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                                if stor52[address(arg2)] >= stor51.length:
                                    revert with 0, 50
                                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                            mem[_10860 + _8220 + _8380 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_10860 + _8220 + _8380 + 51] = 32
                            _13006 = mem[_12492]
                            mem[_10860 + _8220 + _8380 + 83] = mem[_12492]
                            mem[_10860 + _8220 + _8380 + 115 len ceil32(_13006)] = mem[_12492 + 32 len ceil32(_13006)]
                            if ceil32(_13006) > _13006:
                                mem[_13006 + _10860 + _8220 + _8380 + 115] = 0
                            revert with 0, 32, mem[_10860 + _8220 + _8380 + 83 len ceil32(_13006) + 32]
                        mem[_10860 + mem[64] + _8380 + 47] = 0
                        _12493 = mem[64]
                        mem[mem[64]] = _10860 + _8220 + _8380 + -mem[64] + 15
                        mem[64] = _10860 + _8220 + _8380 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10860 + _8220 + _8380 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10860 + _8220 + _8380 + 51] = 32
                        _13009 = mem[_12493]
                        mem[_10860 + _8220 + _8380 + 83] = mem[_12493]
                        mem[_10860 + _8220 + _8380 + 115 len ceil32(_13009)] = mem[_12493 + 32 len ceil32(_13009)]
                        if ceil32(_13009) > _13009:
                            mem[_13009 + _10860 + _8220 + _8380 + 115] = 0
                        revert with 0, 32, mem[_10860 + _8220 + _8380 + 83 len ceil32(_13009) + 32]
                    _10861 = mem[_5348]
                    mem[mem[64] + _8380 + 47 len ceil32(mem[_5348])] = mem[_5348 + 32 len ceil32(mem[_5348])]
                    if ceil32(_10861) <= _10861:
                        _12494 = mem[64]
                        mem[mem[64]] = _10861 + _8380 + 15
                        mem[64] = _10861 + mem[64] + _8380 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10861 + _8220 + _8380 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10861 + _8220 + _8380 + 51] = 32
                        _13012 = mem[_12494]
                        mem[_10861 + _8220 + _8380 + 83] = mem[_12494]
                        mem[_10861 + _8220 + _8380 + 115 len ceil32(_13012)] = mem[_12494 + 32 len ceil32(_13012)]
                        if ceil32(_13012) > _13012:
                            mem[_13012 + _10861 + _8220 + _8380 + 115] = 0
                        revert with 0, 32, mem[_10861 + _8220 + _8380 + 83 len ceil32(_13012) + 32]
                    mem[_10861 + mem[64] + _8380 + 47] = 0
                    _12495 = mem[64]
                    mem[mem[64]] = _10861 + _8380 + 15
                    mem[64] = _10861 + mem[64] + _8380 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10861 + _8220 + _8380 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10861 + _8220 + _8380 + 51] = 32
                    _13015 = mem[_12495]
                    mem[_10861 + _8220 + _8380 + 83] = mem[_12495]
                    mem[_10861 + _8220 + _8380 + 115 len ceil32(_13015)] = mem[_12495 + 32 len ceil32(_13015)]
                    if ceil32(_13015) > _13015:
                        mem[_13015 + _10861 + _8220 + _8380 + 115] = 0
                    revert with 0, 32, mem[_10861 + _8220 + _8380 + 83 len ceil32(_13015) + 32]
                mem[_5348 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
                if 0 >= mem[_5348]:
                    revert with 0, 50
                mem[_5348 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_5348]:
                    revert with 0, 50
                mem[_5348 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * s):
                    revert with 0, 17
                idx = (2 * s) + 1
                t = uint32(arg1)
                while idx > 1:
                    if t % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_5348]:
                        revert with 0, 50
                    mem[idx + _5348 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    t = Mask(252, 0, t) * 0.0625
                    continue 
                if t:
                    revert with 0, 'Strings: hex length insufficient'
                _8221 = mem[64]
                _8381 = mem[_1184 + _736 + _760 + 42]
                mem[mem[64] + 32 len ceil32(mem[_1184 + _736 + _760 + 42])] = mem[_1184 + _736 + _760 + 74 len ceil32(mem[_1184 + _736 + _760 + 42])]
                mem[mem[64] + _8381 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                if ceil32(_8381) <= _8381:
                    _10862 = mem[_5348]
                    mem[mem[64] + _8381 + 47 len ceil32(mem[_5348])] = mem[_5348 + 32 len ceil32(mem[_5348])]
                    if ceil32(_10862) <= _10862:
                        _12496 = mem[64]
                        mem[mem[64]] = _10862 + _8381 + 15
                        mem[64] = _10862 + mem[64] + _8381 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10862 + _8221 + _8381 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10862 + _8221 + _8381 + 51] = 32
                        _13018 = mem[_12496]
                        mem[_10862 + _8221 + _8381 + 83] = mem[_12496]
                        mem[_10862 + _8221 + _8381 + 115 len ceil32(_13018)] = mem[_12496 + 32 len ceil32(_13018)]
                        if ceil32(_13018) > _13018:
                            mem[_13018 + _10862 + _8221 + _8381 + 115] = 0
                        revert with 0, 32, mem[_10862 + _8221 + _8381 + 83 len ceil32(_13018) + 32]
                    mem[_10862 + mem[64] + _8381 + 47] = 0
                    _12497 = mem[64]
                    mem[mem[64]] = _10862 + _8381 + 15
                    mem[64] = _10862 + mem[64] + _8381 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10862 + _8221 + _8381 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10862 + _8221 + _8381 + 51] = 32
                    _13021 = mem[_12497]
                    mem[_10862 + _8221 + _8381 + 83] = mem[_12497]
                    mem[_10862 + _8221 + _8381 + 115 len ceil32(_13021)] = mem[_12497 + 32 len ceil32(_13021)]
                    if ceil32(_13021) > _13021:
                        mem[_13021 + _10862 + _8221 + _8381 + 115] = 0
                    revert with 0, 32, mem[_10862 + _8221 + _8381 + 83 len ceil32(_13021) + 32]
                _10863 = mem[_5348]
                mem[mem[64] + _8381 + 47 len ceil32(mem[_5348])] = mem[_5348 + 32 len ceil32(mem[_5348])]
                if ceil32(_10863) <= _10863:
                    _12498 = mem[64]
                    mem[mem[64]] = _10863 + _8381 + 15
                    mem[64] = _10863 + mem[64] + _8381 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10863 + _8221 + _8381 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10863 + _8221 + _8381 + 51] = 32
                    _13024 = mem[_12498]
                    mem[_10863 + _8221 + _8381 + 83] = mem[_12498]
                    mem[_10863 + _8221 + _8381 + 115 len ceil32(_13024)] = mem[_12498 + 32 len ceil32(_13024)]
                    if ceil32(_13024) > _13024:
                        mem[_13024 + _10863 + _8221 + _8381 + 115] = 0
                    revert with 0, 32, mem[_10863 + _8221 + _8381 + 83 len ceil32(_13024) + 32]
                mem[_10863 + mem[64] + _8381 + 47] = 0
                _12499 = mem[64]
                mem[mem[64]] = _10863 + _8381 + 15
                mem[64] = _10863 + mem[64] + _8381 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10863 + _8221 + _8381 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10863 + _8221 + _8381 + 51] = 32
                _13027 = mem[_12499]
                mem[_10863 + _8221 + _8381 + 83] = mem[_12499]
                mem[_10863 + _8221 + _8381 + 115 len ceil32(_13027)] = mem[_12499 + 32 len ceil32(_13027)]
                if ceil32(_13027) > _13027:
                    mem[_13027 + _10863 + _8221 + _8381 + 115] = 0
                revert with 0, 32, mem[_10863 + _8221 + _8381 + 83 len ceil32(_13027) + 32]
            mem[_1184 + _736 + _760 + 42] = 0
            mem[mem[64]] = _1184 + _736 + _760 + -mem[64] + 10
            mem[32] = 52
            if stor52[msg.sender] >= stor51.length:
                revert with 0, 50
            mem[0] = 51
            mem[_1184 + _736 + _760 + 42] = 42
            mem[64] = _1184 + _736 + _760 + 138
            mem[_1184 + _736 + _760 + 74 len 42] = call.data[calldata.size len 42]
            mem[_1184 + _736 + _760 + 74 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            mem[_1184 + _736 + _760 + 75 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            idx = 41
            s = stor51[stor52[msg.sender]].field_0
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + _1184 + _736 + _760 + 74 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if stor51[stor52[msg.sender]].field_0 + 10240:
                revert with 0, 'Strings: hex length insufficient'
            if not uint32(arg1):
                _3405 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3405] = 4
                mem[_3405 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                _3477 = mem[64]
                mem[mem[64] + 32 len 64] = 0, mem[_1184 + _736 + _760 + 75 len 63]
                var127001 = 64
                mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 93] = 0
                _8231 = mem[64]
                mem[mem[64]] = 61
                mem[64] = mem[64] + 93
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_3477 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3477 + 97] = 32
                _8803 = mem[_8231]
                mem[_3477 + 129] = mem[_8231]
                mem[_3477 + 161 len ceil32(_8803)] = mem[_8231 + 32 len ceil32(_8803)]
                if ceil32(_8803) > _8803:
                    mem[_8803 + _3477 + 161] = 0
                revert with 0, 32, mem[_3477 + 129 len ceil32(_8803) + 32]
            s = 0
            idx = uint32(arg1)
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = Mask(248, 0, idx) * 0.00390625
                continue 
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 > !(2 * s):
                revert with 0, 17
            if (2 * s) + 2 > test266151307():
                revert with 0, 65
            _5353 = mem[64]
            mem[mem[64]] = (2 * s) + 2
            mem[64] = mem[64] + floor32((2 * s) + 33) + 32
            if not (2 * s) + 2:
                if 0 >= mem[_5353]:
                    revert with 0, 50
                mem[_5353 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_5353]:
                    revert with 0, 50
                mem[_5353 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * s):
                    revert with 0, 17
                idx = (2 * s) + 1
                t = uint32(arg1)
                while idx > 1:
                    if t % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_5353]:
                        revert with 0, 50
                    mem[idx + _5353 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    t = Mask(252, 0, t) * 0.0625
                    continue 
                if t:
                    revert with 0, 'Strings: hex length insufficient'
                _8226 = mem[64]
                _8386 = mem[_1184 + _736 + _760 + 42]
                mem[mem[64] + 32 len ceil32(mem[_1184 + _736 + _760 + 42])] = mem[_1184 + _736 + _760 + 74 len ceil32(mem[_1184 + _736 + _760 + 42])]
                mem[mem[64] + _8386 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                if ceil32(_8386) <= _8386:
                    _10864 = mem[_5353]
                    mem[mem[64] + _8386 + 47 len ceil32(mem[_5353])] = mem[_5353 + 32 len ceil32(mem[_5353])]
                    if ceil32(_10864) <= _10864:
                        _12500 = mem[64]
                        mem[mem[64]] = _10864 + _8386 + 15
                        mem[64] = _10864 + mem[64] + _8386 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10864 + _8226 + _8386 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10864 + _8226 + _8386 + 51] = 32
                        _13030 = mem[_12500]
                        mem[_10864 + _8226 + _8386 + 83] = mem[_12500]
                        mem[_10864 + _8226 + _8386 + 115 len ceil32(_13030)] = mem[_12500 + 32 len ceil32(_13030)]
                        if ceil32(_13030) > _13030:
                            mem[_13030 + _10864 + _8226 + _8386 + 115] = 0
                        revert with 0, 32, mem[_10864 + _8226 + _8386 + 83 len ceil32(_13030) + 32]
                    mem[_10864 + mem[64] + _8386 + 47] = 0
                    _12501 = mem[64]
                    mem[mem[64]] = _10864 + _8386 + 15
                    mem[64] = _10864 + mem[64] + _8386 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10864 + _8226 + _8386 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10864 + _8226 + _8386 + 51] = 32
                    _13033 = mem[_12501]
                    mem[_10864 + _8226 + _8386 + 83] = mem[_12501]
                    mem[_10864 + _8226 + _8386 + 115 len ceil32(_13033)] = mem[_12501 + 32 len ceil32(_13033)]
                    if ceil32(_13033) > _13033:
                        mem[_13033 + _10864 + _8226 + _8386 + 115] = 0
                    revert with 0, 32, mem[_10864 + _8226 + _8386 + 83 len ceil32(_13033) + 32]
                _10865 = mem[_5353]
                mem[mem[64] + _8386 + 47 len ceil32(mem[_5353])] = mem[_5353 + 32 len ceil32(mem[_5353])]
                if ceil32(_10865) <= _10865:
                    _12502 = mem[64]
                    mem[mem[64]] = _10865 + _8386 + 15
                    mem[64] = _10865 + mem[64] + _8386 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10865 + _8226 + _8386 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10865 + _8226 + _8386 + 51] = 32
                    _13036 = mem[_12502]
                    mem[_10865 + _8226 + _8386 + 83] = mem[_12502]
                    mem[_10865 + _8226 + _8386 + 115 len ceil32(_13036)] = mem[_12502 + 32 len ceil32(_13036)]
                    if ceil32(_13036) > _13036:
                        mem[_13036 + _10865 + _8226 + _8386 + 115] = 0
                    revert with 0, 32, mem[_10865 + _8226 + _8386 + 83 len ceil32(_13036) + 32]
                mem[_10865 + mem[64] + _8386 + 47] = 0
                _12503 = mem[64]
                mem[mem[64]] = _10865 + _8386 + 15
                mem[64] = _10865 + mem[64] + _8386 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10865 + _8226 + _8386 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10865 + _8226 + _8386 + 51] = 32
                _13039 = mem[_12503]
                mem[_10865 + _8226 + _8386 + 83] = mem[_12503]
                mem[_10865 + _8226 + _8386 + 115 len ceil32(_13039)] = mem[_12503 + 32 len ceil32(_13039)]
                if ceil32(_13039) > _13039:
                    mem[_13039 + _10865 + _8226 + _8386 + 115] = 0
                revert with 0, 32, mem[_10865 + _8226 + _8386 + 83 len ceil32(_13039) + 32]
            mem[_5353 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
            if 0 >= mem[_5353]:
                revert with 0, 50
            mem[_5353 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= mem[_5353]:
                revert with 0, 50
            mem[_5353 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[_5353]:
                    revert with 0, 50
                mem[idx + _5353 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _8227 = mem[64]
            _8387 = mem[_1184 + _736 + _760 + 42]
            mem[mem[64] + 32 len ceil32(mem[_1184 + _736 + _760 + 42])] = mem[_1184 + _736 + _760 + 74 len ceil32(mem[_1184 + _736 + _760 + 42])]
            mem[mem[64] + _8387 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            if ceil32(_8387) <= _8387:
                _10866 = mem[_5353]
                mem[mem[64] + _8387 + 47 len ceil32(mem[_5353])] = mem[_5353 + 32 len ceil32(mem[_5353])]
                if ceil32(_10866) <= _10866:
                    _12504 = mem[64]
                    mem[mem[64]] = _10866 + _8387 + 15
                    mem[64] = _10866 + mem[64] + _8387 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10866 + _8227 + _8387 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10866 + _8227 + _8387 + 51] = 32
                    _13042 = mem[_12504]
                    mem[_10866 + _8227 + _8387 + 83] = mem[_12504]
                    mem[_10866 + _8227 + _8387 + 115 len ceil32(_13042)] = mem[_12504 + 32 len ceil32(_13042)]
                    if ceil32(_13042) > _13042:
                        mem[_13042 + _10866 + _8227 + _8387 + 115] = 0
                    revert with 0, 32, mem[_10866 + _8227 + _8387 + 83 len ceil32(_13042) + 32]
                mem[_10866 + mem[64] + _8387 + 47] = 0
                _12505 = mem[64]
                mem[mem[64]] = _10866 + _8387 + 15
                mem[64] = _10866 + mem[64] + _8387 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10866 + _8227 + _8387 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10866 + _8227 + _8387 + 51] = 32
                _13045 = mem[_12505]
                mem[_10866 + _8227 + _8387 + 83] = mem[_12505]
                mem[_10866 + _8227 + _8387 + 115 len ceil32(_13045)] = mem[_12505 + 32 len ceil32(_13045)]
                if ceil32(_13045) > _13045:
                    mem[_13045 + _10866 + _8227 + _8387 + 115] = 0
                revert with 0, 32, mem[_10866 + _8227 + _8387 + 83 len ceil32(_13045) + 32]
            _10867 = mem[_5353]
            mem[mem[64] + _8387 + 47 len ceil32(mem[_5353])] = mem[_5353 + 32 len ceil32(mem[_5353])]
            if ceil32(_10867) <= _10867:
                _12506 = mem[64]
                mem[mem[64]] = _10867 + _8387 + 15
                mem[64] = _10867 + mem[64] + _8387 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10867 + _8227 + _8387 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10867 + _8227 + _8387 + 51] = 32
                _13048 = mem[_12506]
                mem[_10867 + _8227 + _8387 + 83] = mem[_12506]
                mem[_10867 + _8227 + _8387 + 115 len ceil32(_13048)] = mem[_12506 + 32 len ceil32(_13048)]
                if ceil32(_13048) > _13048:
                    mem[_13048 + _10867 + _8227 + _8387 + 115] = 0
                revert with 0, 32, mem[_10867 + _8227 + _8387 + 83 len ceil32(_13048) + 32]
            mem[_10867 + mem[64] + _8387 + 47] = 0
            _12507 = mem[64]
            mem[mem[64]] = _10867 + _8387 + 15
            mem[64] = _10867 + mem[64] + _8387 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10867 + _8227 + _8387 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10867 + _8227 + _8387 + 51] = 32
            _13051 = mem[_12507]
            mem[_10867 + _8227 + _8387 + 83] = mem[_12507]
            mem[_10867 + _8227 + _8387 + 115 len ceil32(_13051)] = mem[_12507 + 32 len ceil32(_13051)]
            if ceil32(_13051) > _13051:
                mem[_13051 + _10867 + _8227 + _8387 + 115] = 0
            revert with 0, 32, mem[_10867 + _8227 + _8387 + 83 len ceil32(_13051) + 32]
        _1185 = mem[288]
        mem[_736 + _760 + 42 len ceil32(mem[288])] = mem[320 len ceil32(mem[288])]
        if ceil32(_1185) <= _1185:
            mem[mem[64]] = _1185 + _736 + _760 + -mem[64] + 10
            mem[32] = 52
            if stor52[msg.sender] >= stor51.length:
                revert with 0, 50
            mem[0] = 51
            mem[_1185 + _736 + _760 + 42] = 42
            mem[64] = _1185 + _736 + _760 + 138
            mem[_1185 + _736 + _760 + 74 len 42] = call.data[calldata.size len 42]
            mem[_1185 + _736 + _760 + 74 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            mem[_1185 + _736 + _760 + 75 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            idx = 41
            s = stor51[stor52[msg.sender]].field_0
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + _1185 + _736 + _760 + 74 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if stor51[stor52[msg.sender]].field_0 + 10240:
                revert with 0, 'Strings: hex length insufficient'
            if not uint32(arg1):
                _3406 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3406] = 4
                mem[_3406 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                _3478 = mem[64]
                mem[mem[64] + 32 len 64] = 0, mem[_1185 + _736 + _760 + 75 len 63]
                var127001 = 64
                mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 93] = 0
                _8237 = mem[64]
                mem[mem[64]] = 61
                mem[64] = mem[64] + 93
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_3478 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3478 + 97] = 32
                _8815 = mem[_8237]
                mem[_3478 + 129] = mem[_8237]
                mem[_3478 + 161 len ceil32(_8815)] = mem[_8237 + 32 len ceil32(_8815)]
                if ceil32(_8815) > _8815:
                    mem[_8815 + _3478 + 161] = 0
                revert with 0, 32, mem[_3478 + 129 len ceil32(_8815) + 32]
            s = 0
            idx = uint32(arg1)
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = Mask(248, 0, idx) * 0.00390625
                continue 
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 > !(2 * s):
                revert with 0, 17
            if (2 * s) + 2 > test266151307():
                revert with 0, 65
            _5358 = mem[64]
            mem[mem[64]] = (2 * s) + 2
            mem[64] = mem[64] + floor32((2 * s) + 33) + 32
            if not (2 * s) + 2:
                if 0 >= mem[_5358]:
                    revert with 0, 50
                mem[_5358 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_5358]:
                    revert with 0, 50
                mem[_5358 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * s):
                    revert with 0, 17
                idx = (2 * s) + 1
                t = uint32(arg1)
                while idx > 1:
                    if t % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_5358]:
                        revert with 0, 50
                    mem[idx + _5358 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    t = Mask(252, 0, t) * 0.0625
                    continue 
                if t:
                    revert with 0, 'Strings: hex length insufficient'
                _8232 = mem[64]
                _8392 = mem[_1185 + _736 + _760 + 42]
                mem[mem[64] + 32 len ceil32(mem[_1185 + _736 + _760 + 42])] = mem[_1185 + _736 + _760 + 74 len ceil32(mem[_1185 + _736 + _760 + 42])]
                mem[mem[64] + _8392 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                if ceil32(_8392) <= _8392:
                    _10868 = mem[_5358]
                    mem[mem[64] + _8392 + 47 len ceil32(mem[_5358])] = mem[_5358 + 32 len ceil32(mem[_5358])]
                    if ceil32(_10868) <= _10868:
                        _12508 = mem[64]
                        mem[mem[64]] = _10868 + _8392 + 15
                        mem[64] = _10868 + mem[64] + _8392 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10868 + _8232 + _8392 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10868 + _8232 + _8392 + 51] = 32
                        _13054 = mem[_12508]
                        mem[_10868 + _8232 + _8392 + 83] = mem[_12508]
                        mem[_10868 + _8232 + _8392 + 115 len ceil32(_13054)] = mem[_12508 + 32 len ceil32(_13054)]
                        if ceil32(_13054) > _13054:
                            mem[_13054 + _10868 + _8232 + _8392 + 115] = 0
                        revert with 0, 32, mem[_10868 + _8232 + _8392 + 83 len ceil32(_13054) + 32]
                    mem[_10868 + mem[64] + _8392 + 47] = 0
                    _12509 = mem[64]
                    mem[mem[64]] = _10868 + _8392 + 15
                    mem[64] = _10868 + mem[64] + _8392 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10868 + _8232 + _8392 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10868 + _8232 + _8392 + 51] = 32
                    _13057 = mem[_12509]
                    mem[_10868 + _8232 + _8392 + 83] = mem[_12509]
                    mem[_10868 + _8232 + _8392 + 115 len ceil32(_13057)] = mem[_12509 + 32 len ceil32(_13057)]
                    if ceil32(_13057) > _13057:
                        mem[_13057 + _10868 + _8232 + _8392 + 115] = 0
                    revert with 0, 32, mem[_10868 + _8232 + _8392 + 83 len ceil32(_13057) + 32]
                _10869 = mem[_5358]
                mem[mem[64] + _8392 + 47 len ceil32(mem[_5358])] = mem[_5358 + 32 len ceil32(mem[_5358])]
                if ceil32(_10869) <= _10869:
                    _12510 = mem[64]
                    mem[mem[64]] = _10869 + _8392 + 15
                    mem[64] = _10869 + mem[64] + _8392 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10869 + _8232 + _8392 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10869 + _8232 + _8392 + 51] = 32
                    _13060 = mem[_12510]
                    mem[_10869 + _8232 + _8392 + 83] = mem[_12510]
                    mem[_10869 + _8232 + _8392 + 115 len ceil32(_13060)] = mem[_12510 + 32 len ceil32(_13060)]
                    if ceil32(_13060) > _13060:
                        mem[_13060 + _10869 + _8232 + _8392 + 115] = 0
                    revert with 0, 32, mem[_10869 + _8232 + _8392 + 83 len ceil32(_13060) + 32]
                mem[_10869 + mem[64] + _8392 + 47] = 0
                _12511 = mem[64]
                mem[mem[64]] = _10869 + _8392 + 15
                mem[64] = _10869 + mem[64] + _8392 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10869 + _8232 + _8392 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10869 + _8232 + _8392 + 51] = 32
                _13063 = mem[_12511]
                mem[_10869 + _8232 + _8392 + 83] = mem[_12511]
                mem[_10869 + _8232 + _8392 + 115 len ceil32(_13063)] = mem[_12511 + 32 len ceil32(_13063)]
                if ceil32(_13063) > _13063:
                    mem[_13063 + _10869 + _8232 + _8392 + 115] = 0
                revert with 0, 32, mem[_10869 + _8232 + _8392 + 83 len ceil32(_13063) + 32]
            mem[_5358 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
            if 0 >= mem[_5358]:
                revert with 0, 50
            mem[_5358 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= mem[_5358]:
                revert with 0, 50
            mem[_5358 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[_5358]:
                    revert with 0, 50
                mem[idx + _5358 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _8233 = mem[64]
            _8393 = mem[_1185 + _736 + _760 + 42]
            mem[mem[64] + 32 len ceil32(mem[_1185 + _736 + _760 + 42])] = mem[_1185 + _736 + _760 + 74 len ceil32(mem[_1185 + _736 + _760 + 42])]
            mem[mem[64] + _8393 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            if ceil32(_8393) <= _8393:
                _10870 = mem[_5358]
                mem[mem[64] + _8393 + 47 len ceil32(mem[_5358])] = mem[_5358 + 32 len ceil32(mem[_5358])]
                if ceil32(_10870) <= _10870:
                    _12512 = mem[64]
                    mem[mem[64]] = _10870 + _8393 + 15
                    mem[64] = _10870 + mem[64] + _8393 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10870 + _8233 + _8393 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10870 + _8233 + _8393 + 51] = 32
                    _13066 = mem[_12512]
                    mem[_10870 + _8233 + _8393 + 83] = mem[_12512]
                    mem[_10870 + _8233 + _8393 + 115 len ceil32(_13066)] = mem[_12512 + 32 len ceil32(_13066)]
                    if ceil32(_13066) > _13066:
                        mem[_13066 + _10870 + _8233 + _8393 + 115] = 0
                    revert with 0, 32, mem[_10870 + _8233 + _8393 + 83 len ceil32(_13066) + 32]
                mem[_10870 + mem[64] + _8393 + 47] = 0
                _12513 = mem[64]
                mem[mem[64]] = _10870 + _8233 + _8393 + -mem[64] + 15
                mem[64] = _10870 + _8233 + _8393 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10870 + _8233 + _8393 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10870 + _8233 + _8393 + 51] = 32
                _13069 = mem[_12513]
                mem[_10870 + _8233 + _8393 + 83] = mem[_12513]
                mem[_10870 + _8233 + _8393 + 115 len ceil32(_13069)] = mem[_12513 + 32 len ceil32(_13069)]
                if ceil32(_13069) > _13069:
                    mem[_13069 + _10870 + _8233 + _8393 + 115] = 0
                revert with 0, 32, mem[_10870 + _8233 + _8393 + 83 len ceil32(_13069) + 32]
            _10871 = mem[_5358]
            mem[mem[64] + _8393 + 47 len ceil32(mem[_5358])] = mem[_5358 + 32 len ceil32(mem[_5358])]
            if ceil32(_10871) <= _10871:
                _12514 = mem[64]
                mem[mem[64]] = _10871 + _8393 + 15
                mem[64] = _10871 + mem[64] + _8393 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10871 + _8233 + _8393 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10871 + _8233 + _8393 + 51] = 32
                _13072 = mem[_12514]
                mem[_10871 + _8233 + _8393 + 83] = mem[_12514]
                mem[_10871 + _8233 + _8393 + 115 len ceil32(_13072)] = mem[_12514 + 32 len ceil32(_13072)]
                if ceil32(_13072) > _13072:
                    mem[_13072 + _10871 + _8233 + _8393 + 115] = 0
                revert with 0, 32, mem[_10871 + _8233 + _8393 + 83 len ceil32(_13072) + 32]
            mem[_10871 + mem[64] + _8393 + 47] = 0
            _12515 = mem[64]
            mem[mem[64]] = _10871 + _8233 + _8393 + -mem[64] + 15
            mem[64] = _10871 + _8233 + _8393 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10871 + _8233 + _8393 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10871 + _8233 + _8393 + 51] = 32
            _13075 = mem[_12515]
            mem[_10871 + _8233 + _8393 + 83] = mem[_12515]
            mem[_10871 + _8233 + _8393 + 115 len ceil32(_13075)] = mem[_12515 + 32 len ceil32(_13075)]
            if ceil32(_13075) > _13075:
                mem[_13075 + _10871 + _8233 + _8393 + 115] = 0
            revert with 0, 32, mem[_10871 + _8233 + _8393 + 83 len ceil32(_13075) + 32]
        mem[_1185 + _736 + _760 + 42] = 0
        mem[mem[64]] = _1185 + _736 + _760 + -mem[64] + 10
        mem[32] = 52
        if stor52[msg.sender] >= stor51.length:
            revert with 0, 50
        mem[0] = 51
        mem[_1185 + _736 + _760 + 42] = 42
        mem[64] = _1185 + _736 + _760 + 138
        mem[_1185 + _736 + _760 + 74 len 42] = call.data[calldata.size len 42]
        mem[_1185 + _736 + _760 + 74 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        mem[_1185 + _736 + _760 + 75 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        idx = 41
        s = stor51[stor52[msg.sender]].field_0
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + _1185 + _736 + _760 + 74 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if stor51[stor52[msg.sender]].field_0 + 10240:
            revert with 0, 'Strings: hex length insufficient'
        if not uint32(arg1):
            _3407 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3407] = 4
            mem[_3407 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
            _3479 = mem[64]
            mem[mem[64] + 32 len 64] = 0, mem[_1185 + _736 + _760 + 75 len 63]
            var127001 = 64
            mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 93] = 0
            _8243 = mem[64]
            mem[mem[64]] = 61
            mem[64] = mem[64] + 93
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_3479 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3479 + 97] = 32
            _8827 = mem[_8243]
            mem[_3479 + 129] = mem[_8243]
            mem[_3479 + 161 len ceil32(_8827)] = mem[_8243 + 32 len ceil32(_8827)]
            if ceil32(_8827) > _8827:
                mem[_8827 + _3479 + 161] = 0
            revert with 0, 32, mem[_3479 + 129 len ceil32(_8827) + 32]
        s = 0
        idx = uint32(arg1)
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = Mask(248, 0, idx) * 0.00390625
            continue 
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 2 > !(2 * s):
            revert with 0, 17
        if (2 * s) + 2 > test266151307():
            revert with 0, 65
        _5363 = mem[64]
        mem[mem[64]] = (2 * s) + 2
        mem[64] = mem[64] + floor32((2 * s) + 33) + 32
        if not (2 * s) + 2:
            if 0 >= mem[_5363]:
                revert with 0, 50
            mem[_5363 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= mem[_5363]:
                revert with 0, 50
            mem[_5363 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[_5363]:
                    revert with 0, 50
                mem[idx + _5363 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _8238 = mem[64]
            _8398 = mem[_1185 + _736 + _760 + 42]
            mem[mem[64] + 32 len ceil32(mem[_1185 + _736 + _760 + 42])] = mem[_1185 + _736 + _760 + 74 len ceil32(mem[_1185 + _736 + _760 + 42])]
            mem[mem[64] + _8398 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            if ceil32(_8398) <= _8398:
                _10872 = mem[_5363]
                mem[mem[64] + _8398 + 47 len ceil32(mem[_5363])] = mem[_5363 + 32 len ceil32(mem[_5363])]
                if ceil32(_10872) <= _10872:
                    _12516 = mem[64]
                    mem[mem[64]] = _10872 + _8398 + 15
                    mem[64] = _10872 + mem[64] + _8398 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10872 + _8238 + _8398 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10872 + _8238 + _8398 + 51] = 32
                    _13078 = mem[_12516]
                    mem[_10872 + _8238 + _8398 + 83] = mem[_12516]
                    mem[_10872 + _8238 + _8398 + 115 len ceil32(_13078)] = mem[_12516 + 32 len ceil32(_13078)]
                    if ceil32(_13078) > _13078:
                        mem[_13078 + _10872 + _8238 + _8398 + 115] = 0
                    revert with 0, 32, mem[_10872 + _8238 + _8398 + 83 len ceil32(_13078) + 32]
                mem[_10872 + mem[64] + _8398 + 47] = 0
                _12517 = mem[64]
                mem[mem[64]] = _10872 + _8398 + 15
                mem[64] = _10872 + mem[64] + _8398 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10872 + _8238 + _8398 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10872 + _8238 + _8398 + 51] = 32
                _13081 = mem[_12517]
                mem[_10872 + _8238 + _8398 + 83] = mem[_12517]
                mem[_10872 + _8238 + _8398 + 115 len ceil32(_13081)] = mem[_12517 + 32 len ceil32(_13081)]
                if ceil32(_13081) > _13081:
                    mem[_13081 + _10872 + _8238 + _8398 + 115] = 0
                revert with 0, 32, mem[_10872 + _8238 + _8398 + 83 len ceil32(_13081) + 32]
            _10873 = mem[_5363]
            mem[mem[64] + _8398 + 47 len ceil32(mem[_5363])] = mem[_5363 + 32 len ceil32(mem[_5363])]
            if ceil32(_10873) <= _10873:
                _12518 = mem[64]
                mem[mem[64]] = _10873 + _8398 + 15
                mem[64] = _10873 + mem[64] + _8398 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10873 + _8238 + _8398 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10873 + _8238 + _8398 + 51] = 32
                _13084 = mem[_12518]
                mem[_10873 + _8238 + _8398 + 83] = mem[_12518]
                mem[_10873 + _8238 + _8398 + 115 len ceil32(_13084)] = mem[_12518 + 32 len ceil32(_13084)]
                if ceil32(_13084) > _13084:
                    mem[_13084 + _10873 + _8238 + _8398 + 115] = 0
                revert with 0, 32, mem[_10873 + _8238 + _8398 + 83 len ceil32(_13084) + 32]
            mem[_10873 + mem[64] + _8398 + 47] = 0
            _12519 = mem[64]
            mem[mem[64]] = _10873 + _8238 + _8398 + -mem[64] + 15
            mem[64] = _10873 + _8238 + _8398 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10873 + _8238 + _8398 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10873 + _8238 + _8398 + 51] = 32
            _13087 = mem[_12519]
            mem[_10873 + _8238 + _8398 + 83] = mem[_12519]
            mem[_10873 + _8238 + _8398 + 115 len ceil32(_13087)] = mem[_12519 + 32 len ceil32(_13087)]
            if ceil32(_13087) > _13087:
                mem[_13087 + _10873 + _8238 + _8398 + 115] = 0
            revert with 0, 32, mem[_10873 + _8238 + _8398 + 83 len ceil32(_13087) + 32]
        mem[_5363 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
        if 0 >= mem[_5363]:
            revert with 0, 50
        mem[_5363 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if 1 >= mem[_5363]:
            revert with 0, 50
        mem[_5363 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 1 > !(2 * s):
            revert with 0, 17
        idx = (2 * s) + 1
        t = uint32(arg1)
        while idx > 1:
            if t % 16 >= 16:
                revert with 0, 50
            if idx >= mem[_5363]:
                revert with 0, 50
            mem[idx + _5363 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            t = Mask(252, 0, t) * 0.0625
            continue 
        if t:
            revert with 0, 'Strings: hex length insufficient'
        _8239 = mem[64]
        _8399 = mem[_1185 + _736 + _760 + 42]
        mem[mem[64] + 32 len ceil32(mem[_1185 + _736 + _760 + 42])] = mem[_1185 + _736 + _760 + 74 len ceil32(mem[_1185 + _736 + _760 + 42])]
        mem[mem[64] + _8399 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
        if ceil32(_8399) <= _8399:
            _10874 = mem[_5363]
            mem[mem[64] + _8399 + 47 len ceil32(mem[_5363])] = mem[_5363 + 32 len ceil32(mem[_5363])]
            if ceil32(_10874) <= _10874:
                _12520 = mem[64]
                mem[mem[64]] = _10874 + _8399 + 15
                mem[64] = _10874 + mem[64] + _8399 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10874 + _8239 + _8399 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10874 + _8239 + _8399 + 51] = 32
                _13090 = mem[_12520]
                mem[_10874 + _8239 + _8399 + 83] = mem[_12520]
                mem[_10874 + _8239 + _8399 + 115 len ceil32(_13090)] = mem[_12520 + 32 len ceil32(_13090)]
                if ceil32(_13090) > _13090:
                    mem[_13090 + _10874 + _8239 + _8399 + 115] = 0
                revert with 0, 32, mem[_10874 + _8239 + _8399 + 83 len ceil32(_13090) + 32]
            mem[_10874 + mem[64] + _8399 + 47] = 0
            _12521 = mem[64]
            mem[mem[64]] = _10874 + _8399 + 15
            mem[64] = _10874 + mem[64] + _8399 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10874 + _8239 + _8399 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10874 + _8239 + _8399 + 51] = 32
            _13093 = mem[_12521]
            mem[_10874 + _8239 + _8399 + 83] = mem[_12521]
            mem[_10874 + _8239 + _8399 + 115 len ceil32(_13093)] = mem[_12521 + 32 len ceil32(_13093)]
            if ceil32(_13093) > _13093:
                mem[_13093 + _10874 + _8239 + _8399 + 115] = 0
            revert with 0, 32, mem[_10874 + _8239 + _8399 + 83 len ceil32(_13093) + 32]
        _10875 = mem[_5363]
        mem[mem[64] + _8399 + 47 len ceil32(mem[_5363])] = mem[_5363 + 32 len ceil32(mem[_5363])]
        if ceil32(_10875) <= _10875:
            _12522 = mem[64]
            mem[mem[64]] = _10875 + _8399 + 15
            mem[64] = _10875 + mem[64] + _8399 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10875 + _8239 + _8399 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10875 + _8239 + _8399 + 51] = 32
            _13096 = mem[_12522]
            mem[_10875 + _8239 + _8399 + 83] = mem[_12522]
            mem[_10875 + _8239 + _8399 + 115 len ceil32(_13096)] = mem[_12522 + 32 len ceil32(_13096)]
            if ceil32(_13096) > _13096:
                mem[_13096 + _10875 + _8239 + _8399 + 115] = 0
            revert with 0, 32, mem[_10875 + _8239 + _8399 + 83 len ceil32(_13096) + 32]
        mem[_10875 + mem[64] + _8399 + 47] = 0
        _12523 = mem[64]
        mem[mem[64]] = _10875 + _8399 + 15
        mem[64] = _10875 + mem[64] + _8399 + 47
        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
            if stor52[address(arg2)] >= stor51.length:
                revert with 0, 50
            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
        mem[_10875 + _8239 + _8399 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_10875 + _8239 + _8399 + 51] = 32
        _13099 = mem[_12523]
        mem[_10875 + _8239 + _8399 + 83] = mem[_12523]
        mem[_10875 + _8239 + _8399 + 115 len ceil32(_13099)] = mem[_12523 + 32 len ceil32(_13099)]
        if ceil32(_13099) > _13099:
            mem[_13099 + _10875 + _8239 + _8399 + 115] = 0
        revert with 0, 32, mem[_10875 + _8239 + _8399 + 83 len ceil32(_13099) + 32]
    mem[320 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
    if 0 >= (2 * s) + 2:
        revert with 0, 50
    mem[320 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    if 1 >= (2 * s) + 2:
        revert with 0, 50
    mem[321 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 1 > !(2 * s):
        revert with 0, 17
    idx = (2 * s) + 1
    t = uint32(arg1)
    while idx > 1:
        if t % 16 >= 16:
            revert with 0, 50
        if idx >= mem[288]:
            revert with 0, 50
        mem[idx + 320 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        t = Mask(252, 0, t) * 0.0625
        continue 
    if t:
        revert with 0, 'Strings: hex length insufficient'
    _737 = mem[64]
    _761 = mem[192]
    mem[mem[64] + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
    mem[mem[64] + _761 + 32] = 0x2068617320726f6c652000000000000000000000000000000000000000000000
    if ceil32(_761) > _761:
        _1187 = mem[288]
        mem[mem[64] + _761 + 42 len ceil32(mem[288])] = mem[320 len ceil32(mem[288])]
        mem[mem[64]] = _1187 + _761 + 10
        mem[32] = 52
        if stor52[msg.sender] >= stor51.length:
            revert with 0, 50
        mem[0] = 51
        mem[_1187 + mem[64] + _761 + 42] = 42
        mem[64] = _1187 + mem[64] + _761 + 138
        mem[_1187 + _737 + _761 + 74 len 42] = call.data[calldata.size len 42]
        mem[_1187 + _737 + _761 + 74 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        mem[_1187 + _737 + _761 + 75 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        idx = 41
        s = stor51[stor52[msg.sender]].field_0
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + _1187 + _737 + _761 + 74 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if stor51[stor52[msg.sender]].field_0 + 10240:
            revert with 0, 'Strings: hex length insufficient'
        if ceil32(_1187) <= _1187:
            if not uint32(arg1):
                _3410 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3410] = 4
                mem[_3410 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
                _3482 = mem[64]
                mem[mem[64] + 32 len 64] = 0, mem[_1187 + _737 + _761 + 75 len 63]
                var128001 = 64
                mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 93] = 0
                _8261 = mem[64]
                mem[mem[64]] = 61
                mem[64] = mem[64] + 93
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_3482 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3482 + 97] = 32
                _8863 = mem[_8261]
                mem[_3482 + 129] = mem[_8261]
                mem[_3482 + 161 len ceil32(_8863)] = mem[_8261 + 32 len ceil32(_8863)]
                if ceil32(_8863) > _8863:
                    mem[_8863 + _3482 + 161] = 0
                revert with 0, 32, mem[_3482 + 129 len ceil32(_8863) + 32]
            s = 0
            idx = uint32(arg1)
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = Mask(248, 0, idx) * 0.00390625
                continue 
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 > !(2 * s):
                revert with 0, 17
            if (2 * s) + 2 > test266151307():
                revert with 0, 65
            _5378 = mem[64]
            mem[mem[64]] = (2 * s) + 2
            mem[64] = mem[64] + floor32((2 * s) + 33) + 32
            if not (2 * s) + 2:
                if 0 >= mem[_5378]:
                    revert with 0, 50
                mem[_5378 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_5378]:
                    revert with 0, 50
                mem[_5378 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * s):
                    revert with 0, 17
                idx = (2 * s) + 1
                t = uint32(arg1)
                while idx > 1:
                    if t % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_5378]:
                        revert with 0, 50
                    mem[idx + _5378 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    t = Mask(252, 0, t) * 0.0625
                    continue 
                if t:
                    revert with 0, 'Strings: hex length insufficient'
                _8256 = mem[64]
                _8416 = mem[_1187 + _737 + _761 + 42]
                mem[mem[64] + 32 len ceil32(mem[_1187 + _737 + _761 + 42])] = mem[_1187 + _737 + _761 + 74 len ceil32(mem[_1187 + _737 + _761 + 42])]
                mem[mem[64] + _8416 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
                if ceil32(_8416) <= _8416:
                    _10884 = mem[_5378]
                    mem[mem[64] + _8416 + 47 len ceil32(mem[_5378])] = mem[_5378 + 32 len ceil32(mem[_5378])]
                    if ceil32(_10884) <= _10884:
                        _12540 = mem[64]
                        mem[mem[64]] = _10884 + _8416 + 15
                        mem[64] = _10884 + mem[64] + _8416 + 47
                        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                            if stor52[address(arg2)] >= stor51.length:
                                revert with 0, 50
                            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                        mem[_10884 + _8256 + _8416 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_10884 + _8256 + _8416 + 51] = 32
                        _13150 = mem[_12540]
                        mem[_10884 + _8256 + _8416 + 83] = mem[_12540]
                        mem[_10884 + _8256 + _8416 + 115 len ceil32(_13150)] = mem[_12540 + 32 len ceil32(_13150)]
                        if ceil32(_13150) > _13150:
                            mem[_13150 + _10884 + _8256 + _8416 + 115] = 0
                        revert with 0, 32, mem[_10884 + _8256 + _8416 + 83 len ceil32(_13150) + 32]
                    mem[_10884 + mem[64] + _8416 + 47] = 0
                    _12541 = mem[64]
                    mem[mem[64]] = _10884 + _8416 + 15
                    mem[64] = _10884 + mem[64] + _8416 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10884 + _8256 + _8416 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10884 + _8256 + _8416 + 51] = 32
                    _13153 = mem[_12541]
                    mem[_10884 + _8256 + _8416 + 83] = mem[_12541]
                    mem[_10884 + _8256 + _8416 + 115 len ceil32(_13153)] = mem[_12541 + 32 len ceil32(_13153)]
                    if ceil32(_13153) > _13153:
                        mem[_13153 + _10884 + _8256 + _8416 + 115] = 0
                    revert with 0, 32, mem[_10884 + _8256 + _8416 + 83 len ceil32(_13153) + 32]
                _10885 = mem[_5378]
                mem[mem[64] + _8416 + 47 len ceil32(mem[_5378])] = mem[_5378 + 32 len ceil32(mem[_5378])]
                if ceil32(_10885) <= _10885:
                    _12542 = mem[64]
                    mem[mem[64]] = _10885 + _8416 + 15
                    mem[64] = _10885 + mem[64] + _8416 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10885 + _8256 + _8416 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10885 + _8256 + _8416 + 51] = 32
                    _13156 = mem[_12542]
                    mem[_10885 + _8256 + _8416 + 83] = mem[_12542]
                    mem[_10885 + _8256 + _8416 + 115 len ceil32(_13156)] = mem[_12542 + 32 len ceil32(_13156)]
                    if ceil32(_13156) > _13156:
                        mem[_13156 + _10885 + _8256 + _8416 + 115] = 0
                    revert with 0, 32, mem[_10885 + _8256 + _8416 + 83 len ceil32(_13156) + 32]
                mem[_10885 + mem[64] + _8416 + 47] = 0
                _12543 = mem[64]
                mem[mem[64]] = _10885 + _8256 + _8416 + -mem[64] + 15
                mem[64] = _10885 + _8256 + _8416 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10885 + _8256 + _8416 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10885 + _8256 + _8416 + 51] = 32
                _13159 = mem[_12543]
                mem[_10885 + _8256 + _8416 + 83] = mem[_12543]
                mem[_10885 + _8256 + _8416 + 115 len ceil32(_13159)] = mem[_12543 + 32 len ceil32(_13159)]
                if ceil32(_13159) > _13159:
                    mem[_13159 + _10885 + _8256 + _8416 + 115] = 0
                revert with 0, 32, mem[_10885 + _8256 + _8416 + 83 len ceil32(_13159) + 32]
            mem[_5378 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
            if 0 >= mem[_5378]:
                revert with 0, 50
            mem[_5378 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= mem[_5378]:
                revert with 0, 50
            mem[_5378 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[_5378]:
                    revert with 0, 50
                mem[idx + _5378 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _8257 = mem[64]
            _8417 = mem[_1187 + _737 + _761 + 42]
            mem[mem[64] + 32 len ceil32(mem[_1187 + _737 + _761 + 42])] = mem[_1187 + _737 + _761 + 74 len ceil32(mem[_1187 + _737 + _761 + 42])]
            mem[mem[64] + _8417 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            if ceil32(_8417) <= _8417:
                _10886 = mem[_5378]
                mem[mem[64] + _8417 + 47 len ceil32(mem[_5378])] = mem[_5378 + 32 len ceil32(mem[_5378])]
                if ceil32(_10886) <= _10886:
                    _12544 = mem[64]
                    mem[mem[64]] = _10886 + _8417 + 15
                    mem[64] = _10886 + mem[64] + _8417 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10886 + _8257 + _8417 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10886 + _8257 + _8417 + 51] = 32
                    _13162 = mem[_12544]
                    mem[_10886 + _8257 + _8417 + 83] = mem[_12544]
                    mem[_10886 + _8257 + _8417 + 115 len ceil32(_13162)] = mem[_12544 + 32 len ceil32(_13162)]
                    if ceil32(_13162) > _13162:
                        mem[_13162 + _10886 + _8257 + _8417 + 115] = 0
                    revert with 0, 32, mem[_10886 + _8257 + _8417 + 83 len ceil32(_13162) + 32]
                mem[_10886 + mem[64] + _8417 + 47] = 0
                _12545 = mem[64]
                mem[mem[64]] = _10886 + _8257 + _8417 + -mem[64] + 15
                mem[64] = _10886 + _8257 + _8417 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10886 + _8257 + _8417 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10886 + _8257 + _8417 + 51] = 32
                _13165 = mem[_12545]
                mem[_10886 + _8257 + _8417 + 83] = mem[_12545]
                mem[_10886 + _8257 + _8417 + 115 len ceil32(_13165)] = mem[_12545 + 32 len ceil32(_13165)]
                if ceil32(_13165) > _13165:
                    mem[_13165 + _10886 + _8257 + _8417 + 115] = 0
                revert with 0, 32, mem[_10886 + _8257 + _8417 + 83 len ceil32(_13165) + 32]
            _10887 = mem[_5378]
            mem[mem[64] + _8417 + 47 len ceil32(mem[_5378])] = mem[_5378 + 32 len ceil32(mem[_5378])]
            if ceil32(_10887) <= _10887:
                _12546 = mem[64]
                mem[mem[64]] = _10887 + _8417 + 15
                mem[64] = _10887 + mem[64] + _8417 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10887 + _8257 + _8417 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10887 + _8257 + _8417 + 51] = 32
                _13168 = mem[_12546]
                mem[_10887 + _8257 + _8417 + 83] = mem[_12546]
                mem[_10887 + _8257 + _8417 + 115 len ceil32(_13168)] = mem[_12546 + 32 len ceil32(_13168)]
                if ceil32(_13168) > _13168:
                    mem[_13168 + _10887 + _8257 + _8417 + 115] = 0
                revert with 0, 32, mem[_10887 + _8257 + _8417 + 83 len ceil32(_13168) + 32]
            mem[_10887 + mem[64] + _8417 + 47] = 0
            _12547 = mem[64]
            mem[mem[64]] = _10887 + _8257 + _8417 + -mem[64] + 15
            mem[64] = _10887 + _8257 + _8417 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10887 + _8257 + _8417 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10887 + _8257 + _8417 + 51] = 32
            _13171 = mem[_12547]
            mem[_10887 + _8257 + _8417 + 83] = mem[_12547]
            mem[_10887 + _8257 + _8417 + 115 len ceil32(_13171)] = mem[_12547 + 32 len ceil32(_13171)]
            if ceil32(_13171) > _13171:
                mem[_13171 + _10887 + _8257 + _8417 + 115] = 0
            revert with 0, 32, mem[_10887 + _8257 + _8417 + 83 len ceil32(_13171) + 32]
        if not uint32(arg1):
            _3411 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3411] = 4
            mem[_3411 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
            _3483 = mem[64]
            mem[mem[64] + 32 len 64] = 0, mem[_1187 + _737 + _761 + 75 len 63]
            var128001 = 64
            mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 93] = 0
            _8267 = mem[64]
            mem[mem[64]] = 61
            mem[64] = mem[64] + 93
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_3483 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3483 + 97] = 32
            _8875 = mem[_8267]
            mem[_3483 + 129] = mem[_8267]
            mem[_3483 + 161 len ceil32(_8875)] = mem[_8267 + 32 len ceil32(_8875)]
            if ceil32(_8875) > _8875:
                mem[_8875 + _3483 + 161] = 0
            revert with 0, 32, mem[_3483 + 129 len ceil32(_8875) + 32]
        s = 0
        idx = uint32(arg1)
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = Mask(248, 0, idx) * 0.00390625
            continue 
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 2 > !(2 * s):
            revert with 0, 17
        if (2 * s) + 2 > test266151307():
            revert with 0, 65
        _5383 = mem[64]
        mem[mem[64]] = (2 * s) + 2
        mem[64] = mem[64] + floor32((2 * s) + 33) + 32
        if not (2 * s) + 2:
            if 0 >= mem[_5383]:
                revert with 0, 50
            mem[_5383 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= mem[_5383]:
                revert with 0, 50
            mem[_5383 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[_5383]:
                    revert with 0, 50
                mem[idx + _5383 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _8262 = mem[64]
            _8422 = mem[_1187 + _737 + _761 + 42]
            mem[mem[64] + 32 len ceil32(mem[_1187 + _737 + _761 + 42])] = mem[_1187 + _737 + _761 + 74 len ceil32(mem[_1187 + _737 + _761 + 42])]
            mem[mem[64] + _8422 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            if ceil32(_8422) <= _8422:
                _10888 = mem[_5383]
                mem[mem[64] + _8422 + 47 len ceil32(mem[_5383])] = mem[_5383 + 32 len ceil32(mem[_5383])]
                if ceil32(_10888) <= _10888:
                    _12548 = mem[64]
                    mem[mem[64]] = _10888 + _8422 + 15
                    mem[64] = _10888 + mem[64] + _8422 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10888 + _8262 + _8422 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10888 + _8262 + _8422 + 51] = 32
                    _13174 = mem[_12548]
                    mem[_10888 + _8262 + _8422 + 83] = mem[_12548]
                    mem[_10888 + _8262 + _8422 + 115 len ceil32(_13174)] = mem[_12548 + 32 len ceil32(_13174)]
                    if ceil32(_13174) > _13174:
                        mem[_13174 + _10888 + _8262 + _8422 + 115] = 0
                    revert with 0, 32, mem[_10888 + _8262 + _8422 + 83 len ceil32(_13174) + 32]
                mem[_10888 + mem[64] + _8422 + 47] = 0
                _12549 = mem[64]
                mem[mem[64]] = _10888 + _8262 + _8422 + -mem[64] + 15
                mem[64] = _10888 + _8262 + _8422 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10888 + _8262 + _8422 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10888 + _8262 + _8422 + 51] = 32
                _13177 = mem[_12549]
                mem[_10888 + _8262 + _8422 + 83] = mem[_12549]
                mem[_10888 + _8262 + _8422 + 115 len ceil32(_13177)] = mem[_12549 + 32 len ceil32(_13177)]
                if ceil32(_13177) > _13177:
                    mem[_13177 + _10888 + _8262 + _8422 + 115] = 0
                revert with 0, 32, mem[_10888 + _8262 + _8422 + 83 len ceil32(_13177) + 32]
            _10889 = mem[_5383]
            mem[mem[64] + _8422 + 47 len ceil32(mem[_5383])] = mem[_5383 + 32 len ceil32(mem[_5383])]
            if ceil32(_10889) <= _10889:
                _12550 = mem[64]
                mem[mem[64]] = _10889 + _8422 + 15
                mem[64] = _10889 + mem[64] + _8422 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10889 + _8262 + _8422 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10889 + _8262 + _8422 + 51] = 32
                _13180 = mem[_12550]
                mem[_10889 + _8262 + _8422 + 83] = mem[_12550]
                mem[_10889 + _8262 + _8422 + 115 len ceil32(_13180)] = mem[_12550 + 32 len ceil32(_13180)]
                if ceil32(_13180) > _13180:
                    mem[_13180 + _10889 + _8262 + _8422 + 115] = 0
                revert with 0, 32, mem[_10889 + _8262 + _8422 + 83 len ceil32(_13180) + 32]
            mem[_10889 + mem[64] + _8422 + 47] = 0
            _12551 = mem[64]
            mem[mem[64]] = _10889 + _8262 + _8422 + -mem[64] + 15
            mem[64] = _10889 + _8262 + _8422 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10889 + _8262 + _8422 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10889 + _8262 + _8422 + 51] = 32
            _13183 = mem[_12551]
            mem[_10889 + _8262 + _8422 + 83] = mem[_12551]
            mem[_10889 + _8262 + _8422 + 115 len ceil32(_13183)] = mem[_12551 + 32 len ceil32(_13183)]
            if ceil32(_13183) > _13183:
                mem[_13183 + _10889 + _8262 + _8422 + 115] = 0
            revert with 0, 32, mem[_10889 + _8262 + _8422 + 83 len ceil32(_13183) + 32]
        mem[_5383 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
        if 0 >= mem[_5383]:
            revert with 0, 50
        mem[_5383 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if 1 >= mem[_5383]:
            revert with 0, 50
        mem[_5383 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 1 > !(2 * s):
            revert with 0, 17
        idx = (2 * s) + 1
        t = uint32(arg1)
        while idx > 1:
            if t % 16 >= 16:
                revert with 0, 50
            if idx >= mem[_5383]:
                revert with 0, 50
            mem[idx + _5383 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            t = Mask(252, 0, t) * 0.0625
            continue 
        if t:
            revert with 0, 'Strings: hex length insufficient'
        _8263 = mem[64]
        _8423 = mem[_1187 + _737 + _761 + 42]
        mem[mem[64] + 32 len ceil32(mem[_1187 + _737 + _761 + 42])] = mem[_1187 + _737 + _761 + 74 len ceil32(mem[_1187 + _737 + _761 + 42])]
        mem[mem[64] + _8423 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
        if ceil32(_8423) <= _8423:
            _10890 = mem[_5383]
            mem[mem[64] + _8423 + 47 len ceil32(mem[_5383])] = mem[_5383 + 32 len ceil32(mem[_5383])]
            if ceil32(_10890) <= _10890:
                _12552 = mem[64]
                mem[mem[64]] = _10890 + _8423 + 15
                mem[64] = _10890 + mem[64] + _8423 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10890 + _8263 + _8423 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10890 + _8263 + _8423 + 51] = 32
                _13186 = mem[_12552]
                mem[_10890 + _8263 + _8423 + 83] = mem[_12552]
                mem[_10890 + _8263 + _8423 + 115 len ceil32(_13186)] = mem[_12552 + 32 len ceil32(_13186)]
                if ceil32(_13186) > _13186:
                    mem[_13186 + _10890 + _8263 + _8423 + 115] = 0
                revert with 0, 32, mem[_10890 + _8263 + _8423 + 83 len ceil32(_13186) + 32]
            mem[_10890 + mem[64] + _8423 + 47] = 0
            _12553 = mem[64]
            mem[mem[64]] = _10890 + _8423 + 15
            mem[64] = _10890 + mem[64] + _8423 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10890 + _8263 + _8423 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10890 + _8263 + _8423 + 51] = 32
            _13189 = mem[_12553]
            mem[_10890 + _8263 + _8423 + 83] = mem[_12553]
            mem[_10890 + _8263 + _8423 + 115 len ceil32(_13189)] = mem[_12553 + 32 len ceil32(_13189)]
            if ceil32(_13189) > _13189:
                mem[_13189 + _10890 + _8263 + _8423 + 115] = 0
            revert with 0, 32, mem[_10890 + _8263 + _8423 + 83 len ceil32(_13189) + 32]
        _10891 = mem[_5383]
        mem[mem[64] + _8423 + 47 len ceil32(mem[_5383])] = mem[_5383 + 32 len ceil32(mem[_5383])]
        if ceil32(_10891) <= _10891:
            _12554 = mem[64]
            mem[mem[64]] = _10891 + _8423 + 15
            mem[64] = _10891 + mem[64] + _8423 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10891 + _8263 + _8423 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10891 + _8263 + _8423 + 51] = 32
            _13192 = mem[_12554]
            mem[_10891 + _8263 + _8423 + 83] = mem[_12554]
            mem[_10891 + _8263 + _8423 + 115 len ceil32(_13192)] = mem[_12554 + 32 len ceil32(_13192)]
            if ceil32(_13192) > _13192:
                mem[_13192 + _10891 + _8263 + _8423 + 115] = 0
            revert with 0, 32, mem[_10891 + _8263 + _8423 + 83 len ceil32(_13192) + 32]
        mem[_10891 + mem[64] + _8423 + 47] = 0
        _12555 = mem[64]
        mem[mem[64]] = _10891 + _8423 + 15
        mem[64] = _10891 + mem[64] + _8423 + 47
        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
            if stor52[address(arg2)] >= stor51.length:
                revert with 0, 50
            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
        mem[_10891 + _8263 + _8423 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_10891 + _8263 + _8423 + 51] = 32
        _13195 = mem[_12555]
        mem[_10891 + _8263 + _8423 + 83] = mem[_12555]
        mem[_10891 + _8263 + _8423 + 115 len ceil32(_13195)] = mem[_12555 + 32 len ceil32(_13195)]
        if ceil32(_13195) > _13195:
            mem[_13195 + _10891 + _8263 + _8423 + 115] = 0
        revert with 0, 32, mem[_10891 + _8263 + _8423 + 83 len ceil32(_13195) + 32]
    _1186 = mem[288]
    mem[mem[64] + _761 + 42 len ceil32(mem[288])] = mem[320 len ceil32(mem[288])]
    if ceil32(_1186) <= _1186:
        mem[mem[64]] = _1186 + _761 + 10
        mem[32] = 52
        if stor52[msg.sender] >= stor51.length:
            revert with 0, 50
        mem[0] = 51
        mem[_1186 + mem[64] + _761 + 42] = 42
        mem[64] = _1186 + _737 + _761 + 138
        mem[_1186 + _737 + _761 + 74 len 42] = call.data[calldata.size len 42]
        mem[_1186 + _737 + _761 + 74 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        mem[_1186 + _737 + _761 + 75 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        idx = 41
        s = stor51[stor52[msg.sender]].field_0
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + _1186 + _737 + _761 + 74 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if stor51[stor52[msg.sender]].field_0 + 10240:
            revert with 0, 'Strings: hex length insufficient'
        if not uint32(arg1):
            _3408 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3408] = 4
            mem[_3408 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
            _3480 = mem[64]
            mem[mem[64] + 32 len 64] = 0, mem[_1186 + _737 + _761 + 75 len 63]
            var128001 = 64
            mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 93] = 0
            _8249 = mem[64]
            mem[mem[64]] = 61
            mem[64] = mem[64] + 93
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_3480 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3480 + 97] = 32
            _8839 = mem[_8249]
            mem[_3480 + 129] = mem[_8249]
            mem[_3480 + 161 len ceil32(_8839)] = mem[_8249 + 32 len ceil32(_8839)]
            if ceil32(_8839) > _8839:
                mem[_8839 + _3480 + 161] = 0
            revert with 0, 32, mem[_3480 + 129 len ceil32(_8839) + 32]
        s = 0
        idx = uint32(arg1)
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = Mask(248, 0, idx) * 0.00390625
            continue 
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 2 > !(2 * s):
            revert with 0, 17
        if (2 * s) + 2 > test266151307():
            revert with 0, 65
        _5368 = mem[64]
        mem[mem[64]] = (2 * s) + 2
        mem[64] = mem[64] + floor32((2 * s) + 33) + 32
        if not (2 * s) + 2:
            if 0 >= mem[_5368]:
                revert with 0, 50
            mem[_5368 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= mem[_5368]:
                revert with 0, 50
            mem[_5368 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * s):
                revert with 0, 17
            idx = (2 * s) + 1
            t = uint32(arg1)
            while idx > 1:
                if t % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[_5368]:
                    revert with 0, 50
                mem[idx + _5368 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                t = Mask(252, 0, t) * 0.0625
                continue 
            if t:
                revert with 0, 'Strings: hex length insufficient'
            _8244 = mem[64]
            _8404 = mem[_1186 + _737 + _761 + 42]
            mem[mem[64] + 32 len ceil32(mem[_1186 + _737 + _761 + 42])] = mem[_1186 + _737 + _761 + 74 len ceil32(mem[_1186 + _737 + _761 + 42])]
            mem[mem[64] + _8404 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
            if ceil32(_8404) <= _8404:
                _10876 = mem[_5368]
                mem[mem[64] + _8404 + 47 len ceil32(mem[_5368])] = mem[_5368 + 32 len ceil32(mem[_5368])]
                if ceil32(_10876) <= _10876:
                    _12524 = mem[64]
                    mem[mem[64]] = _10876 + _8404 + 15
                    mem[64] = _10876 + mem[64] + _8404 + 47
                    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                        if stor52[address(arg2)] >= stor51.length:
                            revert with 0, 50
                        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                    mem[_10876 + _8244 + _8404 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_10876 + _8244 + _8404 + 51] = 32
                    _13102 = mem[_12524]
                    mem[_10876 + _8244 + _8404 + 83] = mem[_12524]
                    mem[_10876 + _8244 + _8404 + 115 len ceil32(_13102)] = mem[_12524 + 32 len ceil32(_13102)]
                    if ceil32(_13102) > _13102:
                        mem[_13102 + _10876 + _8244 + _8404 + 115] = 0
                    revert with 0, 32, mem[_10876 + _8244 + _8404 + 83 len ceil32(_13102) + 32]
                mem[_10876 + mem[64] + _8404 + 47] = 0
                _12525 = mem[64]
                mem[mem[64]] = _10876 + _8404 + 15
                mem[64] = _10876 + mem[64] + _8404 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10876 + _8244 + _8404 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10876 + _8244 + _8404 + 51] = 32
                _13105 = mem[_12525]
                mem[_10876 + _8244 + _8404 + 83] = mem[_12525]
                mem[_10876 + _8244 + _8404 + 115 len ceil32(_13105)] = mem[_12525 + 32 len ceil32(_13105)]
                if ceil32(_13105) > _13105:
                    mem[_13105 + _10876 + _8244 + _8404 + 115] = 0
                revert with 0, 32, mem[_10876 + _8244 + _8404 + 83 len ceil32(_13105) + 32]
            _10877 = mem[_5368]
            mem[mem[64] + _8404 + 47 len ceil32(mem[_5368])] = mem[_5368 + 32 len ceil32(mem[_5368])]
            if ceil32(_10877) <= _10877:
                _12526 = mem[64]
                mem[mem[64]] = _10877 + _8404 + 15
                mem[64] = _10877 + mem[64] + _8404 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10877 + _8244 + _8404 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10877 + _8244 + _8404 + 51] = 32
                _13108 = mem[_12526]
                mem[_10877 + _8244 + _8404 + 83] = mem[_12526]
                mem[_10877 + _8244 + _8404 + 115 len ceil32(_13108)] = mem[_12526 + 32 len ceil32(_13108)]
                if ceil32(_13108) > _13108:
                    mem[_13108 + _10877 + _8244 + _8404 + 115] = 0
                revert with 0, 32, mem[_10877 + _8244 + _8404 + 83 len ceil32(_13108) + 32]
            mem[_10877 + mem[64] + _8404 + 47] = 0
            _12527 = mem[64]
            mem[mem[64]] = _10877 + _8244 + _8404 + -mem[64] + 15
            mem[64] = _10877 + _8244 + _8404 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10877 + _8244 + _8404 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10877 + _8244 + _8404 + 51] = 32
            _13111 = mem[_12527]
            mem[_10877 + _8244 + _8404 + 83] = mem[_12527]
            mem[_10877 + _8244 + _8404 + 115 len ceil32(_13111)] = mem[_12527 + 32 len ceil32(_13111)]
            if ceil32(_13111) > _13111:
                mem[_13111 + _10877 + _8244 + _8404 + 115] = 0
            revert with 0, 32, mem[_10877 + _8244 + _8404 + 83 len ceil32(_13111) + 32]
        mem[_5368 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
        if 0 >= mem[_5368]:
            revert with 0, 50
        mem[_5368 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if 1 >= mem[_5368]:
            revert with 0, 50
        mem[_5368 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 1 > !(2 * s):
            revert with 0, 17
        idx = (2 * s) + 1
        t = uint32(arg1)
        while idx > 1:
            if t % 16 >= 16:
                revert with 0, 50
            if idx >= mem[_5368]:
                revert with 0, 50
            mem[idx + _5368 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            t = Mask(252, 0, t) * 0.0625
            continue 
        if t:
            revert with 0, 'Strings: hex length insufficient'
        _8245 = mem[64]
        _8405 = mem[_1186 + _737 + _761 + 42]
        mem[mem[64] + 32 len ceil32(mem[_1186 + _737 + _761 + 42])] = mem[_1186 + _737 + _761 + 74 len ceil32(mem[_1186 + _737 + _761 + 42])]
        mem[mem[64] + _8405 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
        if ceil32(_8405) <= _8405:
            _10878 = mem[_5368]
            mem[mem[64] + _8405 + 47 len ceil32(mem[_5368])] = mem[_5368 + 32 len ceil32(mem[_5368])]
            if ceil32(_10878) <= _10878:
                _12528 = mem[64]
                mem[mem[64]] = _10878 + _8405 + 15
                mem[64] = _10878 + mem[64] + _8405 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10878 + _8245 + _8405 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10878 + _8245 + _8405 + 51] = 32
                _13114 = mem[_12528]
                mem[_10878 + _8245 + _8405 + 83] = mem[_12528]
                mem[_10878 + _8245 + _8405 + 115 len ceil32(_13114)] = mem[_12528 + 32 len ceil32(_13114)]
                if ceil32(_13114) > _13114:
                    mem[_13114 + _10878 + _8245 + _8405 + 115] = 0
                revert with 0, 32, mem[_10878 + _8245 + _8405 + 83 len ceil32(_13114) + 32]
            mem[_10878 + mem[64] + _8405 + 47] = 0
            _12529 = mem[64]
            mem[mem[64]] = _10878 + _8405 + 15
            mem[64] = _10878 + mem[64] + _8405 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10878 + _8245 + _8405 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10878 + _8245 + _8405 + 51] = 32
            _13117 = mem[_12529]
            mem[_10878 + _8245 + _8405 + 83] = mem[_12529]
            mem[_10878 + _8245 + _8405 + 115 len ceil32(_13117)] = mem[_12529 + 32 len ceil32(_13117)]
            if ceil32(_13117) > _13117:
                mem[_13117 + _10878 + _8245 + _8405 + 115] = 0
            revert with 0, 32, mem[_10878 + _8245 + _8405 + 83 len ceil32(_13117) + 32]
        _10879 = mem[_5368]
        mem[mem[64] + _8405 + 47 len ceil32(mem[_5368])] = mem[_5368 + 32 len ceil32(mem[_5368])]
        if ceil32(_10879) <= _10879:
            _12530 = mem[64]
            mem[mem[64]] = _10879 + _8405 + 15
            mem[64] = _10879 + mem[64] + _8405 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10879 + _8245 + _8405 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10879 + _8245 + _8405 + 51] = 32
            _13120 = mem[_12530]
            mem[_10879 + _8245 + _8405 + 83] = mem[_12530]
            mem[_10879 + _8245 + _8405 + 115 len ceil32(_13120)] = mem[_12530 + 32 len ceil32(_13120)]
            if ceil32(_13120) > _13120:
                mem[_13120 + _10879 + _8245 + _8405 + 115] = 0
            revert with 0, 32, mem[_10879 + _8245 + _8405 + 83 len ceil32(_13120) + 32]
        mem[_10879 + mem[64] + _8405 + 47] = 0
        _12531 = mem[64]
        mem[mem[64]] = _10879 + _8245 + _8405 + -mem[64] + 15
        mem[64] = _10879 + _8245 + _8405 + 47
        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
            if stor52[address(arg2)] >= stor51.length:
                revert with 0, 50
            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
        mem[_10879 + _8245 + _8405 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_10879 + _8245 + _8405 + 51] = 32
        _13123 = mem[_12531]
        mem[_10879 + _8245 + _8405 + 83] = mem[_12531]
        mem[_10879 + _8245 + _8405 + 115 len ceil32(_13123)] = mem[_12531 + 32 len ceil32(_13123)]
        if ceil32(_13123) > _13123:
            mem[_13123 + _10879 + _8245 + _8405 + 115] = 0
        revert with 0, 32, mem[_10879 + _8245 + _8405 + 83 len ceil32(_13123) + 32]
    mem[_1186 + mem[64] + _761 + 42] = 0
    mem[mem[64]] = _1186 + _737 + _761 + -mem[64] + 10
    mem[32] = 52
    if stor52[msg.sender] >= stor51.length:
        revert with 0, 50
    mem[0] = 51
    mem[_1186 + _737 + _761 + 42] = 42
    mem[64] = _1186 + _737 + _761 + 138
    mem[_1186 + _737 + _761 + 74 len 42] = call.data[calldata.size len 42]
    mem[_1186 + _737 + _761 + 74 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    mem[_1186 + _737 + _761 + 75 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    idx = 41
    s = stor51[stor52[msg.sender]].field_0
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + _1186 + _737 + _761 + 74 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if stor51[stor52[msg.sender]].field_0 + 10240:
        revert with 0, 'Strings: hex length insufficient'
    if not uint32(arg1):
        _3409 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3409] = 4
        mem[_3409 + 32] = 0x3078303000000000000000000000000000000000000000000000000000000000
        _3481 = mem[64]
        mem[mem[64] + 32 len 64] = 0, mem[_1186 + _737 + _761 + 75 len 63]
        var128001 = 64
        mem[mem[64] + 74] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
        mem[mem[64] + 89] = 0x3078303000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 93] = 0
        _8255 = mem[64]
        mem[mem[64]] = 61
        mem[64] = mem[64] + 93
        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
            if stor52[address(arg2)] >= stor51.length:
                revert with 0, 50
            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
        mem[_3481 + 93] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_3481 + 97] = 32
        _8851 = mem[_8255]
        mem[_3481 + 129] = mem[_8255]
        mem[_3481 + 161 len ceil32(_8851)] = mem[_8255 + 32 len ceil32(_8851)]
        if ceil32(_8851) > _8851:
            mem[_8851 + _3481 + 161] = 0
        revert with 0, 32, mem[_3481 + 129 len ceil32(_8851) + 32]
    s = 0
    idx = uint32(arg1)
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = Mask(248, 0, idx) * 0.00390625
        continue 
    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 2 > !(2 * s):
        revert with 0, 17
    if (2 * s) + 2 > test266151307():
        revert with 0, 65
    _5373 = mem[64]
    mem[mem[64]] = (2 * s) + 2
    mem[64] = mem[64] + floor32((2 * s) + 33) + 32
    if not (2 * s) + 2:
        if 0 >= mem[_5373]:
            revert with 0, 50
        mem[_5373 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if 1 >= mem[_5373]:
            revert with 0, 50
        mem[_5373 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
        if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 1 > !(2 * s):
            revert with 0, 17
        idx = (2 * s) + 1
        t = uint32(arg1)
        while idx > 1:
            if t % 16 >= 16:
                revert with 0, 50
            if idx >= mem[_5373]:
                revert with 0, 50
            mem[idx + _5373 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            t = Mask(252, 0, t) * 0.0625
            continue 
        if t:
            revert with 0, 'Strings: hex length insufficient'
        _8250 = mem[64]
        _8410 = mem[_1186 + _737 + _761 + 42]
        mem[mem[64] + 32 len ceil32(mem[_1186 + _737 + _761 + 42])] = mem[_1186 + _737 + _761 + 74 len ceil32(mem[_1186 + _737 + _761 + 42])]
        mem[mem[64] + _8410 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
        if ceil32(_8410) <= _8410:
            _10880 = mem[_5373]
            mem[mem[64] + _8410 + 47 len ceil32(mem[_5373])] = mem[_5373 + 32 len ceil32(mem[_5373])]
            if ceil32(_10880) <= _10880:
                _12532 = mem[64]
                mem[mem[64]] = _10880 + _8410 + 15
                mem[64] = _10880 + mem[64] + _8410 + 47
                if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                    if stor52[address(arg2)] >= stor51.length:
                        revert with 0, 50
                    stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                    emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
                mem[_10880 + _8250 + _8410 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_10880 + _8250 + _8410 + 51] = 32
                _13126 = mem[_12532]
                mem[_10880 + _8250 + _8410 + 83] = mem[_12532]
                mem[_10880 + _8250 + _8410 + 115 len ceil32(_13126)] = mem[_12532 + 32 len ceil32(_13126)]
                if ceil32(_13126) > _13126:
                    mem[_13126 + _10880 + _8250 + _8410 + 115] = 0
                revert with 0, 32, mem[_10880 + _8250 + _8410 + 83 len ceil32(_13126) + 32]
            mem[_10880 + mem[64] + _8410 + 47] = 0
            _12533 = mem[64]
            mem[mem[64]] = _10880 + _8410 + 15
            mem[64] = _10880 + mem[64] + _8410 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10880 + _8250 + _8410 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10880 + _8250 + _8410 + 51] = 32
            _13129 = mem[_12533]
            mem[_10880 + _8250 + _8410 + 83] = mem[_12533]
            mem[_10880 + _8250 + _8410 + 115 len ceil32(_13129)] = mem[_12533 + 32 len ceil32(_13129)]
            if ceil32(_13129) > _13129:
                mem[_13129 + _10880 + _8250 + _8410 + 115] = 0
            revert with 0, 32, mem[_10880 + _8250 + _8410 + 83 len ceil32(_13129) + 32]
        _10881 = mem[_5373]
        mem[mem[64] + _8410 + 47 len ceil32(mem[_5373])] = mem[_5373 + 32 len ceil32(mem[_5373])]
        if ceil32(_10881) <= _10881:
            _12534 = mem[64]
            mem[mem[64]] = _10881 + _8410 + 15
            mem[64] = _10881 + mem[64] + _8410 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10881 + _8250 + _8410 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10881 + _8250 + _8410 + 51] = 32
            _13132 = mem[_12534]
            mem[_10881 + _8250 + _8410 + 83] = mem[_12534]
            mem[_10881 + _8250 + _8410 + 115 len ceil32(_13132)] = mem[_12534 + 32 len ceil32(_13132)]
            if ceil32(_13132) > _13132:
                mem[_13132 + _10881 + _8250 + _8410 + 115] = 0
            revert with 0, 32, mem[_10881 + _8250 + _8410 + 83 len ceil32(_13132) + 32]
        mem[_10881 + mem[64] + _8410 + 47] = 0
        _12535 = mem[64]
        mem[mem[64]] = _10881 + _8410 + 15
        mem[64] = _10881 + mem[64] + _8410 + 47
        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
            if stor52[address(arg2)] >= stor51.length:
                revert with 0, 50
            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
        mem[_10881 + _8250 + _8410 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_10881 + _8250 + _8410 + 51] = 32
        _13135 = mem[_12535]
        mem[_10881 + _8250 + _8410 + 83] = mem[_12535]
        mem[_10881 + _8250 + _8410 + 115 len ceil32(_13135)] = mem[_12535 + 32 len ceil32(_13135)]
        if ceil32(_13135) > _13135:
            mem[_13135 + _10881 + _8250 + _8410 + 115] = 0
        revert with 0, 32, mem[_10881 + _8250 + _8410 + 83 len ceil32(_13135) + 32]
    mem[_5373 + 32 len (2 * s) + 2] = call.data[calldata.size len (2 * s) + 2]
    if 0 >= mem[_5373]:
        revert with 0, 50
    mem[_5373 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    if 1 >= mem[_5373]:
        revert with 0, 50
    mem[_5373 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 1 > !(2 * s):
        revert with 0, 17
    idx = (2 * s) + 1
    t = uint32(arg1)
    while idx > 1:
        if t % 16 >= 16:
            revert with 0, 50
        if idx >= mem[_5373]:
            revert with 0, 50
        mem[idx + _5373 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        t = Mask(252, 0, t) * 0.0625
        continue 
    if t:
        revert with 0, 'Strings: hex length insufficient'
    _8251 = mem[64]
    _8411 = mem[_1186 + _737 + _761 + 42]
    mem[mem[64] + 32 len ceil32(mem[_1186 + _737 + _761 + 42])] = mem[_1186 + _737 + _761 + 74 len ceil32(mem[_1186 + _737 + _761 + 42])]
    mem[mem[64] + _8411 + 32] = 0x2069732062656c6f7720726f6c65200000000000000000000000000000000000
    if ceil32(_8411) <= _8411:
        _10882 = mem[_5373]
        mem[mem[64] + _8411 + 47 len ceil32(mem[_5373])] = mem[_5373 + 32 len ceil32(mem[_5373])]
        if ceil32(_10882) <= _10882:
            _12536 = mem[64]
            mem[mem[64]] = _10882 + _8411 + 15
            mem[64] = _10882 + mem[64] + _8411 + 47
            if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
                if stor52[address(arg2)] >= stor51.length:
                    revert with 0, 50
                stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
                emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
            mem[_10882 + _8251 + _8411 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_10882 + _8251 + _8411 + 51] = 32
            _13138 = mem[_12536]
            mem[_10882 + _8251 + _8411 + 83] = mem[_12536]
            mem[_10882 + _8251 + _8411 + 115 len ceil32(_13138)] = mem[_12536 + 32 len ceil32(_13138)]
            if ceil32(_13138) > _13138:
                mem[_13138 + _10882 + _8251 + _8411 + 115] = 0
            revert with 0, 32, mem[_10882 + _8251 + _8411 + 83 len ceil32(_13138) + 32]
        mem[_10882 + mem[64] + _8411 + 47] = 0
        _12537 = mem[64]
        mem[mem[64]] = _10882 + _8251 + _8411 + -mem[64] + 15
        mem[64] = _10882 + _8251 + _8411 + 47
        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
            if stor52[address(arg2)] >= stor51.length:
                revert with 0, 50
            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
        mem[_10882 + _8251 + _8411 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_10882 + _8251 + _8411 + 51] = 32
        _13141 = mem[_12537]
        mem[_10882 + _8251 + _8411 + 83] = mem[_12537]
        mem[_10882 + _8251 + _8411 + 115 len ceil32(_13141)] = mem[_12537 + 32 len ceil32(_13141)]
        if ceil32(_13141) > _13141:
            mem[_13141 + _10882 + _8251 + _8411 + 115] = 0
        revert with 0, 32, mem[_10882 + _8251 + _8411 + 83 len ceil32(_13141) + 32]
    _10883 = mem[_5373]
    mem[mem[64] + _8411 + 47 len ceil32(mem[_5373])] = mem[_5373 + 32 len ceil32(mem[_5373])]
    if ceil32(_10883) <= _10883:
        _12538 = mem[64]
        mem[mem[64]] = _10883 + _8411 + 15
        mem[64] = _10883 + mem[64] + _8411 + 47
        if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
            if stor52[address(arg2)] >= stor51.length:
                revert with 0, 50
            stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
            emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
        mem[_10883 + _8251 + _8411 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_10883 + _8251 + _8411 + 51] = 32
        _13144 = mem[_12538]
        mem[_10883 + _8251 + _8411 + 83] = mem[_12538]
        mem[_10883 + _8251 + _8411 + 115 len ceil32(_13144)] = mem[_12538 + 32 len ceil32(_13144)]
        if ceil32(_13144) > _13144:
            mem[_13144 + _10883 + _8251 + _8411 + 115] = 0
        revert with 0, 32, mem[_10883 + _8251 + _8411 + 83 len ceil32(_13144) + 32]
    mem[_10883 + mem[64] + _8411 + 47] = 0
    _12539 = mem[64]
    mem[mem[64]] = _10883 + _8411 + 15
    mem[64] = _10883 + mem[64] + _8411 + 47
    if uint32(arg1) <= stor51[stor52[msg.sender]].field_192:
        if stor52[address(arg2)] >= stor51.length:
            revert with 0, 50
        stor51[stor52[address(arg2)]].field_192 = uint32(arg1)
        emit 0x8b5a40e1: uint32(arg1), stor51[stor52[address(arg2)]].field_0, msg.sender
    mem[_10883 + _8251 + _8411 + 47] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_10883 + _8251 + _8411 + 51] = 32
    _13147 = mem[_12539]
    mem[_10883 + _8251 + _8411 + 83] = mem[_12539]
    mem[_10883 + _8251 + _8411 + 115 len ceil32(_13147)] = mem[_12539 + 32 len ceil32(_13147)]
    if ceil32(_13147) > _13147:
        mem[_13147 + _10883 + _8251 + _8411 + 115] = 0
    revert with 0, 32, mem[_10883 + _8251 + _8411 + 83 len ceil32(_13147) + 32]
}



}
