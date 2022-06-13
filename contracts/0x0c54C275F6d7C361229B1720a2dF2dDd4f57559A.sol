contract main {




// =====================  Runtime code  =====================


#
#  - sub_64b772f2(?)
#  - initialize()
#  - tokenURI(uint256 arg1)
#  - buy(uint256 arg1)
#
const sub_5d1a42a1(?) = 500

const sub_72c69e8b(?) = 1000

const sub_e4bc7f98(?) = 0

const sub_ff677c7b(?) = 100


mapping of struct stor51;
array of address stor52;
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
address sub_955ed16cAddress;
address sub_a5bd5235Address;
address sub_fb32c508Address;
uint256 chainId;
uint256 maxSupply;
uint256 price;
uint256 sub_850b76a1;
uint256 sub_a6cb55bd;
uint256 sub_ef5bcb87;
uint256 sub_f99345d0;
uint256 sub_22e89557;
uint256 sub_f0038217;
array of struct stor375;
uint32 stor3608;
address stor3608;
uint256 stor3608;
array of address stor31997345449574252472561286867836691613551392380036115619611668045310140188353;
uint8 stor4910;
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

function sub_22e89557(?) {
    return sub_22e89557
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

function sub_850b76a1(?) {
    return sub_850b76a1
}

function sub_955ed16c(?) {
    return sub_955ed16cAddress
}

function price() {
    return price
}

function sub_a40e5784(?) {
    require calldata.size - 4 >= 64
    return sub_a40e5784[arg1][arg2]
}

function sub_a5bd5235(?) {
    return sub_a5bd5235Address
}

function sub_a6cb55bd(?) {
    return sub_a6cb55bd
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

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor108[address(arg1)][address(arg2)])
}

function sub_ef5bcb87(?) {
    return sub_ef5bcb87
}

function sub_f0038217(?) {
    return sub_f0038217
}

function sub_f99345d0(?) {
    return sub_f99345d0
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
    if arg2 and sub_f0038217 > -1 / arg2:
        revert with 0, 17
    return sub_a5bd5235Address, arg2 * sub_f0038217 / 1000
}

function sub_f466fe5a(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    if stor51[address(arg2)].field_160 < uint32(arg1):
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

function sub_78e3f414(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    if address(arg2) != msg.sender:
        revert with 0, 'Address is not sender'
    if stor51[address(arg2)].field_160 < uint32(arg1):
        revert with 0, 'Missing role'
    if uint32(arg1) > stor51[msg.sender].field_160:
        revert with 0, 'Account is below role'
    stor51[address(arg2)].field_160 = 0
    emit 0x45a0aeb9: uint32(arg1), address(arg2), msg.sender
}

function sub_0c4844aa(?) {
    require calldata.size - 4 >= 32
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    stor360[arg1] = 0
}

function sub_73a9ceca(?) {
    require calldata.size - 4 >= 32
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    sub_ef5bcb87 = arg1
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    price = arg1
}

function sub_cd8b18f9(?) {
    require calldata.size - 4 >= 32
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    sub_22e89557 = arg1
}

function sub_f0f6b296(?) {
    require calldata.size - 4 >= 32
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    sub_850b76a1 = arg1
}

function sub_fccd021b(?) {
    require calldata.size - 4 >= 32
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    sub_f99345d0 = arg1
}

function setChainId(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    chainId = arg1
}

function setMaxSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    maxSupply = arg1
}

function addSupportedChain(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    stor360[arg1] = 1
}

function setRoyaltyAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    sub_f0038217 = arg1
}

function setPriceIncrease(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    sub_a6cb55bd = arg1
}

function pause() {
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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

function whitelistAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    stor362[address(arg1)] = 0
}

function setBridgeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    sub_fb32c508Address = arg1
}

function blacklistAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    stor362[address(arg1)] = 1
}

function sub_9acea9ef(?) {
    require calldata.size - 4 >= 96
    if stor51[address(msg.sender)].field_160 < 100:
        idx = 65
        s = 100
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    sub_d4a61aca[arg1][arg2] = arg3
    emit 0xd36e1a84: arg2, arg3, arg1
}

function sub_25be1fdc(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    sub_c092cb6b[address(arg1)] = arg2
}

function setRoyaltyReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    sub_a5bd5235Address = arg1
}

function sub_64fac37e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    sub_955ed16cAddress = address(arg1)
}

function sub_bcb85b24(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor51[address(msg.sender)].field_160 < 100:
        idx = 65
        s = 100
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    stor51[address(arg1)].field_192 = uint64(bool(arg2))
}

function sub_4fb5c1b1(?) {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    if stor51[address(msg.sender)].field_160 < 100:
        idx = 65
        s = 100
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    sub_a40e5784[arg1][arg2] = address(arg3)
    emit 0x4b83a86b: arg2, address(arg3), arg1
}

function withdraw() {
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_073bf67e(?) {
    require calldata.size - 4 >= 96
    require arg2 == uint32(arg2)
    require arg3 == uint32(arg3)
    if stor51[address(msg.sender)].field_160 < 100:
        idx = 65
        s = 100
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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
    if 0x7e6483b100000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x8fd85c3f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function sub_2c3eafc1(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    if stor51[address(msg.sender)].field_160 < 100:
        idx = 65
        s = 100
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    if stor51[address(arg2)].field_160 < uint32(arg1):
        revert with 0, 'Missing role'
    if uint32(arg1) > stor51[msg.sender].field_160:
        revert with 0, 'Account is below role'
    stor51[address(arg2)].field_160 = 0
    emit 0x45a0aeb9: uint32(arg1), address(arg2), msg.sender
}

function sub_8b9b3b63(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == address(arg2)
    if stor51[address(msg.sender)].field_160 < 100:
        idx = 65
        s = 100
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    if stor51[address(arg2)].field_0 != address(arg2):
        stor52.length++
        stor46BD[stor52.length] = address(arg2)
    if stor51[address(arg2)].field_160 >= uint32(arg1):
        revert with 0, 'Account has role already'
    if uint32(arg1) > stor51[msg.sender].field_160:
        revert with 0, 'Account is below required role'
    stor51[address(arg2)].field_0 = address(arg2)
    stor51[address(arg2)].field_160 = uint32(arg1)
    stor51[address(arg2)].field_192 = 1
    emit 0x8b5a40e1: uint32(arg1), address(arg2), msg.sender
}

function sub_82db99ff(?) {
    require calldata.size - 4 >= 256
    require calldata.size - 36 >= 224
    require arg5 == uint32(arg5)
    require arg6 == uint32(arg6)
    require arg7 == bool(arg7)
    if stor51[address(msg.sender)].field_160 < 100:
        idx = 65
        s = 100
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 352 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg1.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    if bool(stor375.length):
        if bool(stor375.length) == uint255(stor375.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor375[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor375.length = 0
            idx = 0
            while (uint255(stor375.length) * 0.5) + 31 / 32 > idx:
                stor375[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor375.length) == stor375.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor375[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor375.length = 0
            idx = 0
            while stor375.length.field_1 + 31 / 32 > idx:
                stor375[idx].field_0 = 0
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
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg2.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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

function getAllMembers() {
    if stor52.length > test266151307():
        revert with 0, 65
    mem[96] = stor52.length
    mem[64] = (32 * stor52.length) + 128
    if not stor52.length:
        idx = 0
        while idx < stor52.length:
            mem[0] = stor52[idx]
            mem[32] = 51
            if stor51[stor52[idx]].field_192:
                if idx >= stor52.length:
                    revert with 0, 50
                mem[0] = stor52[idx]
                mem[32] = 51
                _36 = mem[64]
                mem[64] = mem[64] + 96
                mem[_36] = stor51[stor52[idx]].field_0
                mem[_36 + 32] = stor51[stor52[idx]].field_160
                mem[_36 + 64] = bool(stor51[stor52[idx]].field_192)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _36
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _30 = mem[64]
        mem[mem[64]] = 32
        _33 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _33:
            _56 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_56 + 60 len 4]
            mem[t + 64] = bool(mem[_56 + 64])
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _30 + (96 * _33) + -mem[64] + 64
    mem[64] = (32 * stor52.length) + 224
    mem[(32 * stor52.length) + 128] = 0
    mem[(32 * stor52.length) + 160] = 0
    mem[(32 * stor52.length) + 192] = 0
    mem[128] = (32 * stor52.length) + 128
    s = 128
    idx = stor52.length
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * stor52.length) + 128] = 0
        mem[(32 * stor52.length) + 160] = 0
        mem[(32 * stor52.length) + 192] = 0
        mem[s + 32] = (32 * stor52.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < stor52.length:
        mem[0] = stor52[idx]
        mem[32] = 51
        if stor51[stor52[idx]].field_192:
            if idx >= stor52.length:
                revert with 0, 50
            mem[0] = stor52[idx]
            mem[32] = 51
            _67 = mem[64]
            mem[64] = mem[64] + 96
            mem[_67] = stor51[stor52[idx]].field_0
            mem[_67 + 32] = stor51[stor52[idx]].field_160
            mem[_67 + 64] = bool(stor51[stor52[idx]].field_192)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _67
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _61 = mem[64]
    mem[mem[64]] = 32
    _64 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _64:
        _74 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_74 + 60 len 4]
        mem[t + 64] = bool(mem[_74 + 64])
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _61 + (96 * _64) + -mem[64] + 64
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
    if bool(stor375.length):
        if bool(stor375.length) == uint255(stor375.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor375.length):
            if bool(stor375.length) == uint255(stor375.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor375.length):
                if 31 < uint255(stor375.length) * 0.5:
                    mem[128] = uint256(stor375.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor375.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor375[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor375.length), data=mem[128 len ceil32(uint255(stor375.length) * 0.5)])
                mem[128] = 256 * stor375.length.field_8
        else:
            if bool(stor375.length) == stor375.length.field_1 < 32:
                revert with 0, 34
            if stor375.length.field_1:
                if 31 < stor375.length.field_1:
                    mem[128] = uint256(stor375.field_0)
                    idx = 128
                    s = 0
                    while stor375.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor375[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor375.length), data=mem[128 len ceil32(uint255(stor375.length) * 0.5)])
                mem[128] = 256 * stor375.length.field_8
        mem[ceil32(uint255(stor375.length) * 0.5) + 192 len ceil32(uint255(stor375.length) * 0.5)] = mem[128 len ceil32(uint255(stor375.length) * 0.5)]
        if ceil32(uint255(stor375.length) * 0.5) > uint255(stor375.length) * 0.5:
            mem[(uint255(stor375.length) * 0.5) + ceil32(uint255(stor375.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor375.length), data=mem[128 len ceil32(uint255(stor375.length) * 0.5)], mem[(2 * ceil32(uint255(stor375.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor375.length) * 0.5)]), 
    if bool(stor375.length) == stor375.length.field_1 < 32:
        revert with 0, 34
    if bool(stor375.length):
        if bool(stor375.length) == uint255(stor375.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor375.length):
            if 31 < uint255(stor375.length) * 0.5:
                mem[128] = uint256(stor375.field_0)
                idx = 128
                s = 0
                while (uint255(stor375.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor375[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor375.length % 128, data=mem[128 len ceil32(stor375.length.field_1)])
            mem[128] = 256 * stor375.length.field_8
    else:
        if bool(stor375.length) == stor375.length.field_1 < 32:
            revert with 0, 34
        if stor375.length.field_1:
            if 31 < stor375.length.field_1:
                mem[128] = uint256(stor375.field_0)
                idx = 128
                s = 0
                while stor375.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor375[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor375.length % 128, data=mem[128 len ceil32(stor375.length.field_1)])
            mem[128] = 256 * stor375.length.field_8
    mem[ceil32(stor375.length.field_1) + 192 len ceil32(stor375.length.field_1)] = mem[128 len ceil32(stor375.length.field_1)]
    if ceil32(stor375.length.field_1) > stor375.length.field_1:
        mem[stor375.length.field_1 + ceil32(stor375.length.field_1) + 192] = 0
    return Array(len=stor375.length % 128, data=mem[128 len ceil32(stor375.length.field_1)], mem[(2 * ceil32(stor375.length.field_1)) + 192 len 2 * ceil32(stor375.length.field_1)]), 
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
    if stor51[address(msg.sender)].field_160 < 100:
        idx = 65
        s = 100
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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

function sub_eb31d619(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if stor51[address(msg.sender)].field_160 < 100:
        idx = 65
        s = 100
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] == sub_fb32c508Address:
        revert with 0, 'Exists in bridge'
    if block[arg2].field_1088:
        revert with 0, 'Locked'
    stor360[arg3] = 1
    if stor362[address(arg1)]:
        revert with 0, 'Blacklisted'
    block[arg2].field_1088 = 1
    block[arg2].field_256 = arg3
    if not ownerOf[arg2]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg2]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] != msg.sender:
        if not ownerOf[arg2]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg2] != msg.sender:
            if not stor108[stor105[arg2]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg2]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] != address(arg1):
        revert with 0, 'ERC721: transfer of token that is not own'
    if not sub_fb32c508Address:
        revert with 0, 'ERC721: transfer to the zero address'
    if stor362[stor365]:
        revert with 0, 'Blacklisted'
    if not address(arg1):
        stor156[arg2] = tokenByIndex.length
        tokenByIndex.length++
        storBBA9[stor155.length] = arg2
    else:
        if address(arg1) != sub_fb32c508Address:
            if not address(arg1):
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor154[arg2]:
                tokenOfOwnerByIndex[address(arg1)][stor154[arg2]] = tokenOfOwnerByIndex[address(arg1)][stor106[address(arg1)] - 1]
                stor154[stor153[address(arg1)][stor106[address(arg1)] - 1]] = stor154[arg2]
            stor154[arg2] = 0
            tokenOfOwnerByIndex[address(arg1)][stor106[address(arg1)] - 1] = 0
    if sub_fb32c508Address:
        if sub_fb32c508Address != address(arg1):
            if not sub_fb32c508Address:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[stor365][stor106[stor365]] = arg2
            stor154[arg2] = balanceOf[stor365]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor156[arg2] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor156[arg2]] = tokenByIndex[tokenByIndex.length]
        stor156[stor155[stor155.length]] = stor156[arg2]
        stor156[arg2] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg2] = 0
    if not ownerOf[arg2]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], 0, arg2);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[stor365] > -2:
        revert with 0, 17
    balanceOf[stor365]++
    ownerOf[arg2] = sub_fb32c508Address
    emit Transfer(address(arg1), sub_fb32c508Address, arg2);
    if ext_code.size(sub_fb32c508Address):
        require ext_code.size(sub_fb32c508Address)
        call sub_fb32c508Address.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg2, 128, 0
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
    emit 0xee304f38: arg3, address(arg1), arg2
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
    if stor51[address(msg.sender)].field_160 < 1000:
        idx = 65
        s = 1000
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg2.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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

function freeMint(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 51
    if stor51[address(msg.sender)].field_160 < 500:
        idx = 65
        s = 500
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 'Strings: hex length insufficient'
    idx = 0
    while idx < arg2:
        if tokenByIndex.length > maxSupply:
            revert with 0, 'Insufficient supply'
        _1048 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1048] = 0
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor353]:
            revert with 0, 'ERC721: token already minted'
        if stor362[address(arg1)]:
            revert with 0, 'Blacklisted'
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
                    _1092 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1092 + 128] = 0
                    mem[_1092 + 160] = 0
                    mem[_1092 + 192] = 0
                    mem[_1092] = stor353
                    mem[_1092 + 32] = chainId
                    mem[_1092 + 64] = chainId
                    mem[_1092 + 96] = stor354
                    if not block[stor353].field_1024:
                        if not block[stor353].field_1056:
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = 0
                            block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                            block[stor353].field_1280 = 0
                            sub_fbb06418[stor366][stor354] = stor353
                            stor353++
                            stor354++
                            mem[0] = msg.sender
                            mem[32] = 51
                            if stor51[address(msg.sender)].field_160 < 100:
                                _1408 = mem[64]
                                mem[mem[64]] = 66
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_1408]:
                                    revert with 0, 50
                                if 1 >= mem[_1408]:
                                    revert with 0, 50
                                idx = 65
                                s = 100
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= mem[_1408]:
                                        revert with 0, 50
                                    mem[idx + _1408 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                revert with 0, 'Strings: hex length insufficient'
                        else:
                            mem[_1092 + 160] = block[stor353].field_1056
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = 0
                            block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                            sub_fbb06418[stor366][stor354] = stor353
                            stor353++
                            stor354++
                            mem[0] = msg.sender
                            mem[32] = 51
                            if stor51[address(msg.sender)].field_160 < 100:
                                _1419 = mem[64]
                                mem[mem[64]] = 66
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_1419]:
                                    revert with 0, 50
                                if 1 >= mem[_1419]:
                                    revert with 0, 50
                                idx = 65
                                s = 100
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= mem[_1419]:
                                        revert with 0, 50
                                    mem[idx + _1419 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                revert with 0, 'Strings: hex length insufficient'
                    else:
                        mem[_1092 + 128] = block[stor353].field_1024
                        if block[stor353].field_1056:
                            mem[_1092 + 160] = block[stor353].field_1056
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = block[stor353].field_1024
                            block[stor353].field_1088 = 0
                            sub_fbb06418[stor366][stor354] = stor353
                            stor353++
                            stor354++
                            mem[0] = msg.sender
                            mem[32] = 51
                            if stor51[address(msg.sender)].field_160 < 100:
                                _1434 = mem[64]
                                mem[mem[64]] = 66
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_1434]:
                                    revert with 0, 50
                                if 1 >= mem[_1434]:
                                    revert with 0, 50
                                idx = 65
                                s = 100
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= mem[_1434]:
                                        revert with 0, 50
                                    mem[idx + _1434 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                revert with 0, 'Strings: hex length insufficient'
                        else:
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = block[stor353].field_1024
                            block[stor353].field_1056 = 0
                            block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                            sub_fbb06418[stor366][stor354] = stor353
                            stor353++
                            stor354++
                            mem[0] = msg.sender
                            mem[32] = 51
                            if stor51[address(msg.sender)].field_160 < 100:
                                _1420 = mem[64]
                                mem[mem[64]] = 66
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_1420]:
                                    revert with 0, 50
                                if 1 >= mem[_1420]:
                                    revert with 0, 50
                                idx = 65
                                s = 100
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= mem[_1420]:
                                        revert with 0, 50
                                    mem[idx + _1420 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                revert with 0, 'Strings: hex length insufficient'
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor353
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _1048 + 32]
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
                    _2170 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2170] == Mask(32, 224, mem[_2170])
                    if Mask(32, 224, mem[_2170]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    _2382 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2382 + 128] = 0
                    mem[_2382 + 160] = 0
                    mem[_2382 + 192] = 0
                    mem[_2382] = stor353
                    mem[_2382 + 32] = chainId
                    mem[_2382 + 64] = chainId
                    mem[_2382 + 96] = stor354
                    if not block[stor353].field_1024:
                        if not block[stor353].field_1056:
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = 0
                            block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                            block[stor353].field_1280 = 0
                            sub_fbb06418[stor366][stor354] = stor353
                            stor353++
                            stor354++
                            mem[0] = msg.sender
                            mem[32] = 51
                            if stor51[address(msg.sender)].field_160 < 100:
                                _2892 = mem[64]
                                mem[mem[64]] = 66
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_2892]:
                                    revert with 0, 50
                                if 1 >= mem[_2892]:
                                    revert with 0, 50
                                idx = 65
                                s = 100
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= mem[_2892]:
                                        revert with 0, 50
                                    mem[idx + _2892 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                revert with 0, 'Strings: hex length insufficient'
                        else:
                            mem[_2382 + 160] = block[stor353].field_1056
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = 0
                            block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                            sub_fbb06418[stor366][stor354] = stor353
                            stor353++
                            stor354++
                            mem[0] = msg.sender
                            mem[32] = 51
                            if stor51[address(msg.sender)].field_160 < 100:
                                _2898 = mem[64]
                                mem[mem[64]] = 66
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_2898]:
                                    revert with 0, 50
                                if 1 >= mem[_2898]:
                                    revert with 0, 50
                                idx = 65
                                s = 100
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= mem[_2898]:
                                        revert with 0, 50
                                    mem[idx + _2898 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                revert with 0, 'Strings: hex length insufficient'
                    else:
                        mem[_2382 + 128] = block[stor353].field_1024
                        if block[stor353].field_1056:
                            mem[_2382 + 160] = block[stor353].field_1056
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = block[stor353].field_1024
                            block[stor353].field_1088 = 0
                            sub_fbb06418[stor366][stor354] = stor353
                            stor353++
                            stor354++
                            mem[0] = msg.sender
                            mem[32] = 51
                            if stor51[address(msg.sender)].field_160 < 100:
                                _2911 = mem[64]
                                mem[mem[64]] = 66
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_2911]:
                                    revert with 0, 50
                                if 1 >= mem[_2911]:
                                    revert with 0, 50
                                idx = 65
                                s = 100
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= mem[_2911]:
                                        revert with 0, 50
                                    mem[idx + _2911 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                revert with 0, 'Strings: hex length insufficient'
                        else:
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = block[stor353].field_1024
                            block[stor353].field_1056 = 0
                            block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                            sub_fbb06418[stor366][stor354] = stor353
                            stor353++
                            stor354++
                            mem[0] = msg.sender
                            mem[32] = 51
                            if stor51[address(msg.sender)].field_160 < 100:
                                _2899 = mem[64]
                                mem[mem[64]] = 66
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_2899]:
                                    revert with 0, 50
                                if 1 >= mem[_2899]:
                                    revert with 0, 50
                                idx = 65
                                s = 100
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= mem[_2899]:
                                        revert with 0, 50
                                    mem[idx + _2899 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                revert with 0, 'Strings: hex length insufficient'
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
                    _1142 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1142 + 128] = 0
                    mem[_1142 + 160] = 0
                    mem[_1142 + 192] = 0
                    mem[_1142] = stor353
                    mem[_1142 + 32] = chainId
                    mem[_1142 + 64] = chainId
                    mem[_1142 + 96] = stor354
                    if not block[stor353].field_1024:
                        if not block[stor353].field_1056:
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = 0
                            block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                            block[stor353].field_1280 = 0
                            sub_fbb06418[stor366][stor354] = stor353
                            stor353++
                            stor354++
                            mem[0] = msg.sender
                            mem[32] = 51
                            if stor51[address(msg.sender)].field_160 < 100:
                                _1534 = mem[64]
                                mem[mem[64]] = 66
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_1534]:
                                    revert with 0, 50
                                if 1 >= mem[_1534]:
                                    revert with 0, 50
                                idx = 65
                                s = 100
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= mem[_1534]:
                                        revert with 0, 50
                                    mem[idx + _1534 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                revert with 0, 'Strings: hex length insufficient'
                        else:
                            mem[_1142 + 160] = block[stor353].field_1056
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = 0
                            block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                            sub_fbb06418[stor366][stor354] = stor353
                            stor353++
                            stor354++
                            mem[0] = msg.sender
                            mem[32] = 51
                            if stor51[address(msg.sender)].field_160 < 100:
                                _1567 = mem[64]
                                mem[mem[64]] = 66
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_1567]:
                                    revert with 0, 50
                                if 1 >= mem[_1567]:
                                    revert with 0, 50
                                idx = 65
                                s = 100
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= mem[_1567]:
                                        revert with 0, 50
                                    mem[idx + _1567 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                revert with 0, 'Strings: hex length insufficient'
                    else:
                        mem[_1142 + 128] = block[stor353].field_1024
                        if block[stor353].field_1056:
                            mem[_1142 + 160] = block[stor353].field_1056
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = block[stor353].field_1024
                            block[stor353].field_1088 = 0
                            sub_fbb06418[stor366][stor354] = stor353
                            stor353++
                            stor354++
                            mem[0] = msg.sender
                            mem[32] = 51
                            if stor51[address(msg.sender)].field_160 < 100:
                                _1584 = mem[64]
                                mem[mem[64]] = 66
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_1584]:
                                    revert with 0, 50
                                if 1 >= mem[_1584]:
                                    revert with 0, 50
                                idx = 65
                                s = 100
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= mem[_1584]:
                                        revert with 0, 50
                                    mem[idx + _1584 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                revert with 0, 'Strings: hex length insufficient'
                        else:
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = block[stor353].field_1024
                            block[stor353].field_1056 = 0
                            block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                            sub_fbb06418[stor366][stor354] = stor353
                            stor353++
                            stor354++
                            mem[0] = msg.sender
                            mem[32] = 51
                            if stor51[address(msg.sender)].field_160 < 100:
                                _1568 = mem[64]
                                mem[mem[64]] = 66
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_1568]:
                                    revert with 0, 50
                                if 1 >= mem[_1568]:
                                    revert with 0, 50
                                idx = 65
                                s = 100
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= mem[_1568]:
                                        revert with 0, 50
                                    mem[idx + _1568 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                revert with 0, 'Strings: hex length insufficient'
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor353
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _1048 + 32]
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
                    _2176 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2176] == Mask(32, 224, mem[_2176])
                    if Mask(32, 224, mem[_2176]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    _2384 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_2384 + 128] = 0
                    mem[_2384 + 160] = 0
                    mem[_2384 + 192] = 0
                    mem[_2384] = stor353
                    mem[_2384 + 32] = chainId
                    mem[_2384 + 64] = chainId
                    mem[_2384 + 96] = stor354
                    if not block[stor353].field_1024:
                        if not block[stor353].field_1056:
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = 0
                            block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                            block[stor353].field_1280 = 0
                            sub_fbb06418[stor366][stor354] = stor353
                            stor353++
                            stor354++
                            mem[0] = msg.sender
                            mem[32] = 51
                            if stor51[address(msg.sender)].field_160 < 100:
                                _2894 = mem[64]
                                mem[mem[64]] = 66
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_2894]:
                                    revert with 0, 50
                                if 1 >= mem[_2894]:
                                    revert with 0, 50
                                idx = 65
                                s = 100
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= mem[_2894]:
                                        revert with 0, 50
                                    mem[idx + _2894 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                revert with 0, 'Strings: hex length insufficient'
                        else:
                            mem[_2384 + 160] = block[stor353].field_1056
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = 0
                            block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                            sub_fbb06418[stor366][stor354] = stor353
                            stor353++
                            stor354++
                            mem[0] = msg.sender
                            mem[32] = 51
                            if stor51[address(msg.sender)].field_160 < 100:
                                _2902 = mem[64]
                                mem[mem[64]] = 66
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_2902]:
                                    revert with 0, 50
                                if 1 >= mem[_2902]:
                                    revert with 0, 50
                                idx = 65
                                s = 100
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= mem[_2902]:
                                        revert with 0, 50
                                    mem[idx + _2902 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                revert with 0, 'Strings: hex length insufficient'
                    else:
                        mem[_2384 + 128] = block[stor353].field_1024
                        if block[stor353].field_1056:
                            mem[_2384 + 160] = block[stor353].field_1056
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = block[stor353].field_1024
                            block[stor353].field_1088 = 0
                            sub_fbb06418[stor366][stor354] = stor353
                            stor353++
                            stor354++
                            mem[0] = msg.sender
                            mem[32] = 51
                            if stor51[address(msg.sender)].field_160 < 100:
                                _2915 = mem[64]
                                mem[mem[64]] = 66
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_2915]:
                                    revert with 0, 50
                                if 1 >= mem[_2915]:
                                    revert with 0, 50
                                idx = 65
                                s = 100
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= mem[_2915]:
                                        revert with 0, 50
                                    mem[idx + _2915 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                revert with 0, 'Strings: hex length insufficient'
                        else:
                            block[stor353].field_0 = stor353
                            block[stor353].field_256 = chainId
                            block[stor353].field_512 = chainId
                            block[stor353].field_768 = stor354
                            block[stor353].field_1024 = block[stor353].field_1024
                            block[stor353].field_1056 = 0
                            block[stor353].field_1088 = 0
                            block[stor353].field_1280 = 0
                            sub_fbb06418[stor366][stor354] = stor353
                            stor353++
                            stor354++
                            mem[0] = msg.sender
                            mem[32] = 51
                            if stor51[address(msg.sender)].field_160 < 100:
                                _2903 = mem[64]
                                mem[mem[64]] = 66
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_2903]:
                                    revert with 0, 50
                                if 1 >= mem[_2903]:
                                    revert with 0, 50
                                idx = 65
                                s = 100
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= mem[_2903]:
                                        revert with 0, 50
                                    mem[idx + _2903 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                revert with 0, 'Strings: hex length insufficient'
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
                _1171 = mem[64]
                mem[64] = mem[64] + 224
                mem[_1171 + 128] = 0
                mem[_1171 + 160] = 0
                mem[_1171 + 192] = 0
                mem[_1171] = stor353
                mem[_1171 + 32] = chainId
                mem[_1171 + 64] = chainId
                mem[_1171 + 96] = stor354
                if not block[stor353].field_1024:
                    if not block[stor353].field_1056:
                        block[stor353].field_0 = stor353
                        block[stor353].field_256 = chainId
                        block[stor353].field_512 = chainId
                        block[stor353].field_768 = stor354
                        block[stor353].field_1024 = 0
                        block[stor353].field_1088 = 0
                        block[stor353].field_1280 = 0
                        block[stor353].field_1280 = 0
                        sub_fbb06418[stor366][stor354] = stor353
                        stor353++
                        stor354++
                        mem[0] = msg.sender
                        mem[32] = 51
                        if stor51[address(msg.sender)].field_160 < 100:
                            _1593 = mem[64]
                            mem[mem[64]] = 66
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_1593]:
                                revert with 0, 50
                            if 1 >= mem[_1593]:
                                revert with 0, 50
                            idx = 65
                            s = 100
                            while idx > 1:
                                if s % 16 >= 16:
                                    revert with 0, 50
                                if idx >= mem[_1593]:
                                    revert with 0, 50
                                mem[idx + _1593 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                if not idx:
                                    revert with 0, 17
                                idx = idx - 1
                                s = Mask(252, 0, s) * 0.0625
                                continue 
                            revert with 0, 'Strings: hex length insufficient'
                    else:
                        mem[_1171 + 160] = block[stor353].field_1056
                        block[stor353].field_0 = stor353
                        block[stor353].field_256 = chainId
                        block[stor353].field_512 = chainId
                        block[stor353].field_768 = stor354
                        block[stor353].field_1024 = 0
                        block[stor353].field_1088 = 0
                        block[stor353].field_1280 = 0
                        sub_fbb06418[stor366][stor354] = stor353
                        stor353++
                        stor354++
                        mem[0] = msg.sender
                        mem[32] = 51
                        if stor51[address(msg.sender)].field_160 < 100:
                            _1611 = mem[64]
                            mem[mem[64]] = 66
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_1611]:
                                revert with 0, 50
                            if 1 >= mem[_1611]:
                                revert with 0, 50
                            idx = 65
                            s = 100
                            while idx > 1:
                                if s % 16 >= 16:
                                    revert with 0, 50
                                if idx >= mem[_1611]:
                                    revert with 0, 50
                                mem[idx + _1611 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                if not idx:
                                    revert with 0, 17
                                idx = idx - 1
                                s = Mask(252, 0, s) * 0.0625
                                continue 
                            revert with 0, 'Strings: hex length insufficient'
                else:
                    mem[_1171 + 128] = block[stor353].field_1024
                    if block[stor353].field_1056:
                        mem[_1171 + 160] = block[stor353].field_1056
                        block[stor353].field_0 = stor353
                        block[stor353].field_256 = chainId
                        block[stor353].field_512 = chainId
                        block[stor353].field_768 = stor354
                        block[stor353].field_1024 = block[stor353].field_1024
                        block[stor353].field_1088 = 0
                        sub_fbb06418[stor366][stor354] = stor353
                        stor353++
                        stor354++
                        mem[0] = msg.sender
                        mem[32] = 51
                        if stor51[address(msg.sender)].field_160 < 100:
                            _1647 = mem[64]
                            mem[mem[64]] = 66
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_1647]:
                                revert with 0, 50
                            if 1 >= mem[_1647]:
                                revert with 0, 50
                            idx = 65
                            s = 100
                            while idx > 1:
                                if s % 16 >= 16:
                                    revert with 0, 50
                                if idx >= mem[_1647]:
                                    revert with 0, 50
                                mem[idx + _1647 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                if not idx:
                                    revert with 0, 17
                                idx = idx - 1
                                s = Mask(252, 0, s) * 0.0625
                                continue 
                            revert with 0, 'Strings: hex length insufficient'
                    else:
                        block[stor353].field_0 = stor353
                        block[stor353].field_256 = chainId
                        block[stor353].field_512 = chainId
                        block[stor353].field_768 = stor354
                        block[stor353].field_1024 = block[stor353].field_1024
                        block[stor353].field_1056 = 0
                        block[stor353].field_1088 = 0
                        block[stor353].field_1280 = 0
                        sub_fbb06418[stor366][stor354] = stor353
                        stor353++
                        stor354++
                        mem[0] = msg.sender
                        mem[32] = 51
                        if stor51[address(msg.sender)].field_160 < 100:
                            _1612 = mem[64]
                            mem[mem[64]] = 66
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_1612]:
                                revert with 0, 50
                            if 1 >= mem[_1612]:
                                revert with 0, 50
                            idx = 65
                            s = 100
                            while idx > 1:
                                if s % 16 >= 16:
                                    revert with 0, 50
                                if idx >= mem[_1612]:
                                    revert with 0, 50
                                mem[idx + _1612 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                if not idx:
                                    revert with 0, 17
                                idx = idx - 1
                                s = Mask(252, 0, s) * 0.0625
                                continue 
                            revert with 0, 'Strings: hex length insufficient'
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor353
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _1048 + 32]
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
                _2182 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2182] == Mask(32, 224, mem[_2182])
                if Mask(32, 224, mem[_2182]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                _2386 = mem[64]
                mem[64] = mem[64] + 224
                mem[_2386 + 128] = 0
                mem[_2386 + 160] = 0
                mem[_2386 + 192] = 0
                mem[_2386] = stor353
                mem[_2386 + 32] = chainId
                mem[_2386 + 64] = chainId
                mem[_2386 + 96] = stor354
                if not block[stor353].field_1024:
                    if not block[stor353].field_1056:
                        block[stor353].field_0 = stor353
                        block[stor353].field_256 = chainId
                        block[stor353].field_512 = chainId
                        block[stor353].field_768 = stor354
                        block[stor353].field_1024 = 0
                        block[stor353].field_1088 = 0
                        block[stor353].field_1280 = 0
                        block[stor353].field_1280 = 0
                        sub_fbb06418[stor366][stor354] = stor353
                        stor353++
                        stor354++
                        mem[0] = msg.sender
                        mem[32] = 51
                        if stor51[address(msg.sender)].field_160 < 100:
                            _2896 = mem[64]
                            mem[mem[64]] = 66
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_2896]:
                                revert with 0, 50
                            if 1 >= mem[_2896]:
                                revert with 0, 50
                            idx = 65
                            s = 100
                            while idx > 1:
                                if s % 16 >= 16:
                                    revert with 0, 50
                                if idx >= mem[_2896]:
                                    revert with 0, 50
                                mem[idx + _2896 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                if not idx:
                                    revert with 0, 17
                                idx = idx - 1
                                s = Mask(252, 0, s) * 0.0625
                                continue 
                            revert with 0, 'Strings: hex length insufficient'
                    else:
                        mem[_2386 + 160] = block[stor353].field_1056
                        block[stor353].field_0 = stor353
                        block[stor353].field_256 = chainId
                        block[stor353].field_512 = chainId
                        block[stor353].field_768 = stor354
                        block[stor353].field_1024 = 0
                        block[stor353].field_1088 = 0
                        block[stor353].field_1280 = 0
                        sub_fbb06418[stor366][stor354] = stor353
                        stor353++
                        stor354++
                        mem[0] = msg.sender
                        mem[32] = 51
                        if stor51[address(msg.sender)].field_160 < 100:
                            _2906 = mem[64]
                            mem[mem[64]] = 66
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_2906]:
                                revert with 0, 50
                            if 1 >= mem[_2906]:
                                revert with 0, 50
                            idx = 65
                            s = 100
                            while idx > 1:
                                if s % 16 >= 16:
                                    revert with 0, 50
                                if idx >= mem[_2906]:
                                    revert with 0, 50
                                mem[idx + _2906 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                if not idx:
                                    revert with 0, 17
                                idx = idx - 1
                                s = Mask(252, 0, s) * 0.0625
                                continue 
                            revert with 0, 'Strings: hex length insufficient'
                else:
                    mem[_2386 + 128] = block[stor353].field_1024
                    if block[stor353].field_1056:
                        mem[_2386 + 160] = block[stor353].field_1056
                        block[stor353].field_0 = stor353
                        block[stor353].field_256 = chainId
                        block[stor353].field_512 = chainId
                        block[stor353].field_768 = stor354
                        block[stor353].field_1024 = block[stor353].field_1024
                        block[stor353].field_1088 = 0
                        sub_fbb06418[stor366][stor354] = stor353
                        stor353++
                        stor354++
                        mem[0] = msg.sender
                        mem[32] = 51
                        if stor51[address(msg.sender)].field_160 < 100:
                            _2919 = mem[64]
                            mem[mem[64]] = 66
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_2919]:
                                revert with 0, 50
                            if 1 >= mem[_2919]:
                                revert with 0, 50
                            idx = 65
                            s = 100
                            while idx > 1:
                                if s % 16 >= 16:
                                    revert with 0, 50
                                if idx >= mem[_2919]:
                                    revert with 0, 50
                                mem[idx + _2919 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                if not idx:
                                    revert with 0, 17
                                idx = idx - 1
                                s = Mask(252, 0, s) * 0.0625
                                continue 
                            revert with 0, 'Strings: hex length insufficient'
                    else:
                        block[stor353].field_0 = stor353
                        block[stor353].field_256 = chainId
                        block[stor353].field_512 = chainId
                        block[stor353].field_768 = stor354
                        block[stor353].field_1024 = block[stor353].field_1024
                        block[stor353].field_1056 = 0
                        block[stor353].field_1088 = 0
                        block[stor353].field_1280 = 0
                        sub_fbb06418[stor366][stor354] = stor353
                        stor353++
                        stor354++
                        mem[0] = msg.sender
                        mem[32] = 51
                        if stor51[address(msg.sender)].field_160 < 100:
                            _2907 = mem[64]
                            mem[mem[64]] = 66
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_2907]:
                                revert with 0, 50
                            if 1 >= mem[_2907]:
                                revert with 0, 50
                            idx = 65
                            s = 100
                            while idx > 1:
                                if s % 16 >= 16:
                                    revert with 0, 50
                                if idx >= mem[_2907]:
                                    revert with 0, 50
                                mem[idx + _2907 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                if not idx:
                                    revert with 0, 17
                                idx = idx - 1
                                s = Mask(252, 0, s) * 0.0625
                                continue 
                            revert with 0, 'Strings: hex length insufficient'
        ('ge', ('field', 160, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor51', 51)))), 100)
        mem[0] = 1
        mem[32] = sha3(stor353, 358)
        sub_a40e5784[stor353][1] = arg1
        mem[mem[64]] = 1
        mem[mem[64] + 32] = arg1
        emit 0x4b83a86b: 1, arg1, stor353
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
    require calldata.size >= cd[260] + (32 * ('cd', 260).length) + 36
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
    require calldata.size >= cd[292] + (32 * ('cd', 292).length) + 36
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
    require calldata.size >= cd[324] + (32 * ('cd', 324).length) + 36
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
    require calldata.size >= cd[356] + (32 * ('cd', 356).length) + 36
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
    if stor51[address(msg.sender)].field_160 < 500:
        idx = 65
        s = 500
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(32 * ('cd', 260).length) + ceil32(32 * ('cd', 292).length) + ceil32(32 * ('cd', 324).length) + ceil32(32 * ('cd', 356).length) + 356 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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
                var126001 = 0
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
                    var127001 = 0
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
                        if balanceOf[stor365] < 1:
                            revert with 0, 17
                        balanceOf[stor365]--
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
                            var129001 = 0
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
                        if balanceOf[stor365] < 1:
                            revert with 0, 17
                        balanceOf[stor365]--
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
                            var134001 = 0
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
                    if balanceOf[stor365] < 1:
                        revert with 0, 17
                    balanceOf[stor365]--
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
                if sub_fb32c508Address == address(cd[4]):
                    if address(cd[4]):
                        if address(cd[4]) == sub_fb32c508Address:
                            approved[stor359[cd[100]][cd[132]]] = 0
                            if not ownerOf[stor359[cd[100]][cd[132]]]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[stor359[cd[100]][cd[132]]], 0, sub_fbb06418[cd[100]][cd[132]]);
                            if balanceOf[stor365] < 1:
                                revert with 0, 17
                            balanceOf[stor365]--
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
                            if balanceOf[stor365] < 1:
                                revert with 0, 17
                            balanceOf[stor365]--
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
                                var133001 = 0
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
                        if balanceOf[stor365] < 1:
                            revert with 0, 17
                        balanceOf[stor365]--
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
                            var135001 = 0
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
                    if balanceOf[stor365] < 1:
                        revert with 0, 17
                    if balanceOf[stor365] - 1 == stor154[stor359[cd[100]][cd[132]]]:
                        stor154[stor359[cd[100]][cd[132]]] = 0
                        tokenOfOwnerByIndex[stor365][stor106[stor365] - 1] = 0
                        if address(cd[4]):
                            if address(cd[4]) == sub_fb32c508Address:
                                approved[stor359[cd[100]][cd[132]]] = 0
                                if not ownerOf[stor359[cd[100]][cd[132]]]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                emit Approval(ownerOf[stor359[cd[100]][cd[132]]], 0, sub_fbb06418[cd[100]][cd[132]]);
                                if balanceOf[stor365] < 1:
                                    revert with 0, 17
                                balanceOf[stor365]--
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
                                    var137001 = 0
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
                                if balanceOf[stor365] < 1:
                                    revert with 0, 17
                                balanceOf[stor365]--
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
                            if balanceOf[stor365] < 1:
                                revert with 0, 17
                            balanceOf[stor365]--
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
                        tokenOfOwnerByIndex[stor365][stor154[stor359[cd[100]][cd[132]]]] = tokenOfOwnerByIndex[stor365][stor106[stor365] - 1]
                        stor154[stor153[stor365][stor106[stor365] - 1]] = stor154[stor359[cd[100]][cd[132]]]
                        stor154[stor359[cd[100]][cd[132]]] = 0
                        tokenOfOwnerByIndex[stor365][stor106[stor365] - 1] = 0
                        if address(cd[4]):
                            if address(cd[4]) == sub_fb32c508Address:
                                approved[stor359[cd[100]][cd[132]]] = 0
                                if not ownerOf[stor359[cd[100]][cd[132]]]:
                                    revert with 0, 'ERC721: owner query for nonexistent token'
                                emit Approval(ownerOf[stor359[cd[100]][cd[132]]], 0, sub_fbb06418[cd[100]][cd[132]]);
                                if balanceOf[stor365] < 1:
                                    revert with 0, 17
                                balanceOf[stor365]--
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
                                    var138001 = 0
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
                                if balanceOf[stor365] < 1:
                                    revert with 0, 17
                                balanceOf[stor365]--
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
                            if balanceOf[stor365] < 1:
                                revert with 0, 17
                            balanceOf[stor365]--
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



}
