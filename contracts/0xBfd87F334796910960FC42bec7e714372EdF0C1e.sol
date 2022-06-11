contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address rarityAddress; offset 16
uint256 feeBps;
address owner;
uint256 stor2;
uint256 stor3;
array of uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 prices;
mapping of address sub_11b84a8b;

function sub_11b84a8b(?) {
    require calldata.size - 4 >= 32
    return address(sub_11b84a8b[arg1])
}

function feeBps() {
    return feeBps
}

function owner() {
    return address(owner)
}

function prices(uint256 arg1) {
    require calldata.size - 4 >= 32
    return prices[arg1]
}

function listLength() {
    return stor4.length
}

function rarity() {
    return rarityAddress
}

function _fallback() payable {
    revert
}

function setFeeBps(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, '!owner'
    feeBps = arg1
    emit SetFeeBps(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, '!owner'
    address(owner) = arg1
    emit OwnershipTransferred(msg.sender, arg1);
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, '!owner'
    if not arg1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
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
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function list(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor3 != 1:
        revert with 0, '!lock'
    stor3 = 2
    if not arg2:
        revert with 0, 'bad price'
    if prices[arg1]:
        revert with 0, 'already listed'
    require ext_code.size(rarityAddress)
    call rarityAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    prices[arg1] = arg2
    uint256(sub_11b84a8b[arg1]) = msg.sender or Mask(96, 160, uint256(sub_11b84a8b[arg1]))
    if not stor5[arg1]:
        stor4.length++
        stor4[stor4.length] = arg1
        stor5[arg1] = stor4.length
    emit List(arg2, arg1, msg.sender);
    stor3 = 1
}

function initialize(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if uint8(stor0.field_8):
        stor3 = 1
        uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
        rarityAddress = arg1
        feeBps = arg2
        emit OwnershipTransferred(0, msg.sender);
        emit SetFeeBps(arg2);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor3 = 1
            uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
            rarityAddress = arg1
            feeBps = arg2
            emit OwnershipTransferred(0, msg.sender);
            emit SetFeeBps(arg2);
        else:
            uint16(stor0.field_0) = 257
            stor3 = 1
            uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
            rarityAddress = arg1
            feeBps = arg2
            emit OwnershipTransferred(0, msg.sender);
            emit SetFeeBps(arg2);
            uint8(stor0.field_8) = 0
}

function unlist(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor3 != 1:
        revert with 0, '!lock'
    stor3 = 2
    if not prices[arg1]:
        revert with 0, 'not listed'
    if address(sub_11b84a8b[arg1]) != msg.sender:
        revert with 0, 'not lister'
    prices[arg1] = 0
    address(sub_11b84a8b[arg1]) = 0
    require ext_code.size(rarityAddress)
    call rarityAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor5[arg1]:
        if stor5[arg1] < 1:
            revert with 0, 17
        if stor4.length < 1:
            revert with 0, 17
        if stor4.length - 1 != stor5[arg1] - 1:
            if stor4.length - 1 >= stor4.length:
                revert with 0, 50
            if stor5[arg1] - 1 >= stor4.length:
                revert with 0, 50
            stor4[stor5[arg1]] = stor4[stor4.length]
            stor5[stor4[stor4.length]] = stor5[arg1]
        if not stor4.length:
            revert with 0, 49
        stor4[stor4.length] = 0
        stor4.length--
        stor5[arg1] = 0
    emit 0xce7aa37f: arg1, msg.sender
    stor3 = 1
}

function sub_e61c5644(?) {
    require calldata.size - 4 >= 64
    if arg2 > test266151307():
        revert with 0, 65
    if arg2:
        mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
    if arg2 > test266151307():
        revert with 0, 65
    mem[(32 * arg2) + 128] = arg2
    if arg2:
        mem[(32 * arg2) + 160 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
    idx = 0
    while idx < arg2:
        if arg1 > !idx:
            revert with 0, 17
        if arg1 + idx >= stor4.length:
            revert with 0, 50
        if idx >= arg2:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor[('name', 'stor4', 4) + arg1 + idx]
        if idx >= arg2:
            revert with 0, 50
        mem[0] = stor[('name', 'stor4', 4) + arg1 + idx]
        mem[32] = 6
        if idx >= mem[(32 * arg2) + 128]:
            revert with 0, 50
        mem[(32 * idx) + (32 * arg2) + 160] = prices[stor[('name', 'stor4', 4) + arg1 + idx]]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(64 * arg2) + 160] = 64
    mem[(64 * arg2) + 224] = arg2
    mem[(64 * arg2) + 256 len 32 * arg2] = mem[128 len 32 * arg2]
    mem[(64 * arg2) + 192] = (32 * arg2) + 96
    mem[(98 * arg2) + 256] = mem[(32 * arg2) + 128]
    mem[(98 * arg2) + 288 len 32 * mem[(32 * arg2) + 128]] = mem[(32 * arg2) + 160 len 32 * mem[(32 * arg2) + 128]]
    return memory
      from (64 * arg2) + 160
       len (161 * arg2) + (32 * mem[(32 * arg2) + 128]) + 128
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor3 != 1:
        revert with 0, '!lock'
    stor3 = 2
    if not prices[arg1]:
        revert with 0, 'not listed'
    if prices[arg1] != msg.value:
        revert with 0, 'bad msg.value'
    if prices[arg1] and feeBps > -1 / prices[arg1]:
        revert with 0, 17
    if prices[arg1] < prices[arg1] * feeBps / 10000:
        revert with 0, 17
    prices[arg1] = 0
    address(sub_11b84a8b[arg1]) = 0
    require ext_code.size(rarityAddress)
    call rarityAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(sub_11b84a8b[arg1]) with:
       value prices[arg1] - (prices[arg1] * feeBps / 10000) wei
         gas 2300 * is_zero(value) wei
    if stor5[arg1]:
        if stor5[arg1] < 1:
            revert with 0, 17
        if stor4.length < 1:
            revert with 0, 17
        if stor4.length - 1 != stor5[arg1] - 1:
            if stor4.length - 1 >= stor4.length:
                revert with 0, 50
            if stor5[arg1] - 1 >= stor4.length:
                revert with 0, 50
            stor4[stor5[arg1]] = stor4[stor4.length]
            stor5[stor4[stor4.length]] = stor5[arg1]
        if not stor4.length:
            revert with 0, 49
        stor4[stor4.length] = 0
        stor4.length--
        stor5[arg1] = 0
    emit Buy(prices[arg1], prices[arg1] * feeBps / 10000, arg1, address(sub_11b84a8b[arg1]), msg.sender);
    stor3 = 1
}



}
