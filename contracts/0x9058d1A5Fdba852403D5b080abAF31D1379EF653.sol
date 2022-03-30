contract main {




// =====================  Runtime code  =====================


#
#  - transferWithCode(uint256 arg1, string arg2, address arg3, uint256 arg4, bytes arg5)
#  - getAddressFromSignature(uint256 arg1, uint256 arg2, bytes arg3)
#  - buyWithPaymentOnly(address arg1, uint256 arg2, string arg3)
#
address paymentAddress;
mapping of uint8 stor2;
mapping of uint256 chainBalances;
address owner;
array of uint256 metadataBaseUri;
uint8 stor6;
address nftAddress; offset 8
address recipientAddress;
address couponAddress;
uint256 price;
uint256 offerPrice;
uint8 payToAcceptOffer;
uint8 payToMakeOffer; offset 8
uint8 shouldBurn; offset 16
uint256 stor11; offset 16
uint256 stor11; offset 8
uint256 stor11;
mapping of struct stor12;
array of struct stor13;
mapping of uint256 preMintCount;
mapping of struct stor15;
mapping of struct stor16;
mapping of uint256 preTransferCount;
array of struct offer;
array of struct stor19;
mapping of struct stor20;
mapping of uint8 stor21;

function initialized() {
    return bool(stor6)
}

function chainIds(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function shouldBurn() {
    return bool(shouldBurn)
}

function witnesses(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor21[arg1])
}

function metadataBaseUri() {
    return metadataBaseUri[0 len metadataBaseUri.length]
}

function offerPrice() {
    return offerPrice
}

function getOffer(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < offer[arg1].field_0
    return offer[arg1][arg2].field_0, offer[arg1][arg2].field_256
}

function recipientAddress() {
    return recipientAddress
}

function nftAddress() {
    return nftAddress
}

function paymentAddress() {
    return paymentAddress
}

function chainBalances(uint256 arg1) {
    require calldata.size - 4 >= 32
    return chainBalances[arg1]
}

function payToAcceptOffer() {
    return bool(payToAcceptOffer)
}

function couponAddress() {
    return couponAddress
}

function getOfferCount(uint256 arg1) {
    require calldata.size - 4 >= 32
    return offer[arg1].field_0
}

function getOwner() {
    return owner
}

function price() {
    return price
}

function getPreTransferCount(uint256 arg1) {
    require calldata.size - 4 >= 32
    return preTransferCount[arg1]
}

function getPreMintCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return preMintCount[address(arg1)]
}

function payToMakeOffer() {
    return bool(payToMakeOffer)
}

function init() {
  stop
}

function _fallback() payable {
    revert
}

function toggleShouldBurn() {
    Mask(240, 0, stor11.field_16) = Mask(240, 0, not shouldBurn)
}

function togglePayToMakeOffer() {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    Mask(248, 0, stor11.field_8) = Mask(248, 0, not payToMakeOffer)
}

function addChainId(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor2[arg1] = 1
    return 1
}

function removeChainId(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor2[arg1] = 0
    return 1
}

function changeNft(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    nftAddress = arg1
}

function changeCoupon(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    couponAddress = arg1
}

function changePayment(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    paymentAddress = arg1
}

function addWitness(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor21[address(arg1)] = 1
}

function togglePayToAcceptOffer() {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    uint256(stor11.field_0) = not payToAcceptOffer or Mask(248, 8, uint256(stor11.field_0))
}

function changeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    recipientAddress = arg1
}

function removeWitness(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor21[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function claim(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(nftAddress)
    call nftAddress.0x42966c68 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPaymentDecimals() {
    require ext_code.size(paymentAddress)
    staticcall paymentAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function transferNftOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(nftAddress)
    call nftAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferPaymentOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(paymentAddress)
    call paymentAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPreTransfer(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[320] = stor15[arg1].field_0
    idx = 320
    s = 0
    while stor15[arg1].length + 320 > idx + 32:
        mem[idx + 32] = stor15[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return 32, 96, stor15[arg1].field_256, stor15[arg1].field_512, stor15[arg1].length, mem[320 len ceil32(stor15[arg1].length)]
}

function changePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(paymentAddress)
    staticcall paymentAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    price = 10^ext_call.return_data[31 len 1] * arg1
}

function changeOfferPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(couponAddress)
    staticcall couponAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    offerPrice = 10^ext_call.return_data[31 len 1] * arg1
}

function getPreTransferByIndex(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    mem[320] = stor16[arg1][arg2].field_0
    idx = 320
    s = 0
    while stor16[arg1][arg2].length + 320 > idx + 32:
        mem[idx + 32] = stor16[arg1][arg2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return 32, 96, 
           stor16[arg1][arg2].field_256,
           stor16[arg1][arg2].field_512,
           stor16[arg1][arg2].length,
           mem[320 len ceil32(stor16[arg1][arg2].length)]
}

function getPreMint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[256] = stor12[address(arg1)][arg2].field_0
    idx = 256
    s = 0
    while stor12[address(arg1)][arg2].length + 256 > idx + 32:
        mem[idx + 32] = stor12[address(arg1)][arg2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return 32, 64, 
           stor12[address(arg1)][arg2].field_256,
           stor12[address(arg1)][arg2].length,
           mem[256 len ceil32(stor12[address(arg1)][arg2].length)]
}

function getPreMintByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[256] = stor13[address(arg1)][arg2].field_0
    idx = 256
    s = 0
    while stor13[address(arg1)][arg2].length + 256 > idx + 32:
        mem[idx + 32] = stor13[address(arg1)][arg2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return 32, 64, 
           stor13[address(arg1)][arg2].field_256,
           stor13[address(arg1)][arg2].length,
           mem[256 len ceil32(stor13[address(arg1)][arg2].length)]
}

function updateTokenUri(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(nftAddress)
    call nftAddress with:
         gas gas_remaining wei
        args arg1, Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeMetadataBaseUri(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    metadataBaseUri.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        metadataBaseUri[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while metadataBaseUri.length + 31 / 32 > idx:
        metadataBaseUri[idx] = 0
        idx = idx + 1
        continue 
}

function withdrawOffer(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < offer[arg1].field_0
    require ext_code.size(nftAddress)
    call nftAddress.0x6352211e with:
         gas gas_remaining wei
        args offer[arg1][arg2].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender is not owner of offer NFT'
    require arg2 < offer[arg1].field_0
    offer[arg1][arg2].field_0 = 0
    offer[arg1][arg2].field_256 = 0
    stor20[stor18[arg1][arg2].field_256][arg1].field_0 = 0
    stor20[stor18[arg1][arg2].field_256][arg1].field_256 = 0
}

function transferFromChain(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if arg3 > chainBalances[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can not transfer more than deposited'
    if not stor2[arg2]:
        revert with 0, 'Invalid Chain ID'
    require ext_code.size(paymentAddress)
    call paymentAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3 > chainBalances[arg2]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    chainBalances[arg2] -= arg3
    emit BridgeWithdrawal(arg2, msg.sender, arg3);
    return 1
}

function rejectOffer(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < offer[arg1].field_0
    require ext_code.size(nftAddress)
    call nftAddress.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender is not owner of NFT'
    stor19[arg1].field_0++
    stor19[arg1][stor19[arg1].field_0].field_0 = offer[arg1][arg2].field_0
    stor19[arg1][stor19[arg1].field_0].field_256 = offer[arg1][arg2].field_256
    require arg2 < offer[arg1].field_0
    offer[arg1][arg2].field_0 = 0
    offer[arg1][arg2].field_256 = 0
    stor20[stor18[arg1][arg2].field_256][arg1].field_0 = 0
    stor20[stor18[arg1][arg2].field_256][arg1].field_256 = 0
}

function deletePreTransfer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor15[arg1].field_512 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PreTransfer does not belong to sender'
    stor16[arg1][stor17[arg1]].field_0 = 0
    if 31 < stor16[arg1][stor17[arg1]].length:
        idx = 0
        while stor16[arg1][stor17[arg1]].length + 31 / 32 > idx:
            stor16[arg1][stor17[arg1]][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor16[arg1][stor17[arg1]].field_256 = 0
    stor16[arg1][stor17[arg1]].field_512 = 0
    if 1 > preTransferCount[arg1]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    preTransferCount[arg1]--
    stor15[arg1].field_0 = 0
    if 31 < stor15[arg1].length:
        idx = 0
        while stor15[arg1].length + 31 / 32 > idx:
            stor15[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor15[arg1].field_256 = 0
    stor15[arg1].field_512 = 0
}

function deletePreMint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor13[address(arg1)][stor14[address(arg1)]].field_0 = 0
    if 31 < stor13[address(arg1)][stor14[address(arg1)]].length:
        idx = 0
        while stor13[address(arg1)][stor14[address(arg1)]].length + 31 / 32 > idx:
            stor13[address(arg1)][stor14[address(arg1)]][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor13[address(arg1)][stor14[address(arg1)]].field_256 = 0
    if 1 > preMintCount[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    preMintCount[address(arg1)]--
    stor12[address(arg1)][arg2].field_0 = 0
    if 31 < stor12[address(arg1)][arg2].length:
        idx = 0
        while stor12[address(arg1)][arg2].length + 31 / 32 > idx:
            stor12[address(arg1)][arg2][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor12[address(arg1)][arg2].field_256 = 0
}

function mint(address arg1, uint256 arg2, string arg3, string arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[ceil32(arg3.length) + 260] = arg4.length
    mem[ceil32(arg3.length) + 292 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 292] = 0
    require ext_code.size(nftAddress)
    call nftAddress.0x2fb102cf with:
         gas gas_remaining wei
        args 0, 0, arg2, 128, ceil32(arg3.length) + 160, arg3.length, arg3[all], 0, mem[arg3.length + 292 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeName(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[ceil32(arg1.length) + 196] = arg2.length
    mem[ceil32(arg1.length) + 228 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 228] = 0
    require ext_code.size(nftAddress)
    call nftAddress.0x86575e40 with:
         gas gas_remaining wei
        args 0, 64, ceil32(arg1.length) + 96, arg1.length, arg1[all], 0, mem[arg1.length + 228 len ceil32(arg1.length) - arg1.length], arg2[all], mem[ceil32(arg1.length) + arg2.length + 228 len ceil32(arg2.length) - arg2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferToChain(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor2[arg1]:
        revert with 0, 'Invalid Chain ID'
    require ext_code.size(paymentAddress)
    staticcall paymentAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Handler unable to spend '
    require ext_code.size(paymentAddress)
    call paymentAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer ERROR'
    require ext_code.size(paymentAddress)
    call paymentAddress.0x42966c68 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 + chainBalances[arg1] < chainBalances[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    chainBalances[arg1] += arg2
    emit BridgeDeposit(arg1, msg.sender, arg2);
    return 1
}

function checkPreMintImage(string arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + arg1.length + 160] = 0
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[arg1.length + ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[arg1.length + ceil32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 160] = 0
    hash = sha256hash(mem[arg1.length + ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return hash, arg2, hash == arg2
}

function checkPreTransferImage(string arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + arg1.length + 160] = 0
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[arg1.length + ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[arg1.length + ceil32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 160] = 0
    hash = sha256hash(mem[arg1.length + ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return hash, arg2, hash == arg2
}

function addPreTransfer(uint256 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    mem[128] = stor15[arg1].field_0
    idx = 128
    s = 0
    while stor15[arg1].length + 96 > idx:
        mem[idx + 32] = stor15[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sha3(mem[128 len stor15[arg1].length]) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Duplicate PreTransfer'
    if preTransferCount[arg1] + 1 < preTransferCount[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    preTransferCount[arg1]++
    stor15[arg1].field_0 = 0
    stor15[arg1].field_1 = 7
    stor15[arg1].field_8 = 0x7061796c6f6164000000000000000000000000000000000000000000000000
    idx = 0
    while stor15[arg1].length + 31 / 32 > idx:
        stor15[arg1][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor15[arg1].field_256 = arg2
    stor15[arg1].field_512 = msg.sender
    if 31 >= stor15[arg1].length:
        stor16[arg1][stor17[arg1]].field_0 = stor15[arg1].field_0
        idx = 0
        while stor16[arg1][stor17[arg1]].length + 31 / 32 > idx:
            stor16[arg1][stor17[arg1]][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        stor16[arg1][stor17[arg1]].field_0 = Mask(255, 1, stor15[arg1].field_0 and (256 * not stor15[arg1].field_0) - 1) + 1
        if not Mask(255, 1, stor15[arg1].field_0 and (256 * not stor15[arg1].field_0) - 1):
            idx = 0
            while stor16[arg1][stor17[arg1]].length + 31 / 32 > idx:
                stor16[arg1][stor17[arg1]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor15[arg1].length + 31 / 32 > idx:
                stor16[arg1][stor17[arg1]][s].field_0 = stor15[arg1][idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor15[arg1].length + 31 / 32
            while stor16[arg1][stor17[arg1]].length + 31 / 32 > idx:
                stor16[arg1][stor17[arg1]][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor16[arg1][stor17[arg1]].field_256 = stor15[arg1].field_256
    stor16[arg1][stor17[arg1]].field_512 = stor15[arg1].field_512
}

function addOffer(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(nftAddress)
    call nftAddress.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender not owner of NFT'
    require ext_code.size(nftAddress)
    call nftAddress.getApproved(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Handler unable to transfer NFT'
    if offerPrice > 0:
        if payToMakeOffer:
            require ext_code.size(couponAddress)
            staticcall couponAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < offerPrice:
                revert with 0, 'Handler unable take payment for offer'
            require ext_code.size(couponAddress)
            staticcall couponAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < offerPrice:
                revert with 0, 'Insufficient Balance for payment'
            require ext_code.size(couponAddress)
            call couponAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, paymentAddress, offerPrice
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Payment error'
    offer[arg2].field_0++
    offer[arg2][offer[arg2].field_0].field_0 = arg1
    offer[arg2][offer[arg2].field_0].field_256 = msg.sender
    stor20[msg.sender][arg1].field_0 = arg1
    stor20[msg.sender][arg1].field_256 = msg.sender
}

function addPreMint(address arg1, string arg2, uint256 arg3, bytes32 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[96] = 0x9ad9523200000000000000000000000000000000000000000000000000000000
    mem[100] = arg3
    require ext_code.size(nftAddress)
    staticcall nftAddress.0x9ad95232 with:
            gas gas_remaining wei
           args arg3
    if ext_call.success:
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require return_data.size + 96 > mem[96 len 4], Mask(224, 32, arg3) >> 32 + 127
        require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= test266151307()
        require ceil32(mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 128 <= test266151307()
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] + 32 <= return_data.size
        revert with 0, 'NFT Exists with this ID'
    mem[128] = stor12[address(arg1)][arg3].field_0
    idx = 128
    s = 0
    while stor12[address(arg1)][arg3].length + 96 > idx:
        mem[idx + 32] = stor12[address(arg1)][arg3][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sha3(mem[128 len stor12[address(arg1)][arg3].length]) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Duplicate PreMint'
    if preMintCount[address(arg1)] + 1 < preMintCount[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    preMintCount[address(arg1)]++
    stor12[address(arg1)][arg3][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor12[address(arg1)][arg3].field_256 = arg4
    if 31 >= stor12[address(arg1)][arg3].length:
        stor13[address(arg1)][stor14[address(arg1)]].field_0 = stor12[address(arg1)][arg3].field_0
        idx = 0
        while stor13[address(arg1)][stor14[address(arg1)]].length + 31 / 32 > idx:
            stor13[address(arg1)][stor14[address(arg1)]][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        stor13[address(arg1)][stor14[address(arg1)]].field_0 = Mask(255, 1, (256 * not stor12[address(arg1)][arg3].field_0) - 1 and stor12[address(arg1)][arg3].field_0) + 1
        if not Mask(255, 1, (256 * not stor12[address(arg1)][arg3].field_0) - 1 and stor12[address(arg1)][arg3].field_0):
            idx = 0
            while stor13[address(arg1)][stor14[address(arg1)]].length + 31 / 32 > idx:
                stor13[address(arg1)][stor14[address(arg1)]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor12[address(arg1)][arg3].length + 31 / 32 > idx:
                stor13[address(arg1)][stor14[address(arg1)]][s].field_0 = stor12[address(arg1)][arg3][idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor12[address(arg1)][arg3].length + 31 / 32
            while stor13[address(arg1)][stor14[address(arg1)]].length + 31 / 32 > idx:
                stor13[address(arg1)][stor14[address(arg1)]][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor13[address(arg1)][stor14[address(arg1)]].field_256 = stor12[address(arg1)][arg3].field_256
}

function acceptOffer(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < offer[arg1].field_0
    require ext_code.size(nftAddress)
    call nftAddress.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender is not owner of NFT'
    require ext_code.size(nftAddress)
    call nftAddress.0x6352211e with:
         gas gas_remaining wei
        args offer[arg1][arg2].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != offer[arg1][arg2].field_256:
        revert with 0, 'NFT not owned by offerer'
    require ext_code.size(nftAddress)
    call nftAddress.getApproved(uint256 rg1) with:
         gas gas_remaining wei
        args offer[arg1][arg2].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Handler unable to transfer offer NFT'
    require ext_code.size(nftAddress)
    call nftAddress.getApproved(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Handler unable to transfer NFT'
    if offerPrice > 0:
        if payToAcceptOffer:
            require ext_code.size(couponAddress)
            staticcall couponAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < offerPrice:
                revert with 0, 'Handler unable take payment for offer'
            require ext_code.size(couponAddress)
            staticcall couponAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < offerPrice:
                revert with 0, 'Insufficient Balance for payment'
            require ext_code.size(couponAddress)
            call couponAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, paymentAddress, offerPrice
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Payment error'
    require ext_code.size(nftAddress)
    call nftAddress.0x42842e0e with:
         gas gas_remaining wei
        args offer[arg1][arg2].field_256, msg.sender, offer[arg1][arg2].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(nftAddress)
    call nftAddress.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, offer[arg1][arg2].field_256, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg2 < offer[arg1].field_0
    offer[arg1][arg2].field_0 = 0
    offer[arg1][arg2].field_256 = 0
    stor20[stor18[arg1][arg2].field_256][arg1].field_0 = 0
    stor20[stor18[arg1][arg2].field_256][arg1].field_256 = 0
}



}
