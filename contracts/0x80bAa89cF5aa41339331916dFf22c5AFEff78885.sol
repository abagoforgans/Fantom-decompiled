contract main {




// =====================  Runtime code  =====================


#
#  - buyItem(string arg1)
#  - sub_201d121e(?)
#  - sub_84328e20(?)
#
address owner;
array of address stor1;
array of struct sub_aa3a6b36;
mapping of address owners;
array of uint256 stor4;
mapping of uint256 stor5;
array of uint256 stor6;
mapping of struct sub_a5851902;
uint256 platformFee;
address sub_3740ebb3Address;
address auctionAddress;
address marketplaceAddress;

function platformFee() {
    return platformFee
}

function sub_3740ebb3(?) {
    return sub_3740ebb3Address
}

function auction() {
    return auctionAddress
}

function owner() {
    return owner
}

function sub_a5851902(?) {
    require calldata.size - 4 >= 64
    return address(sub_a5851902[arg1][arg2].field_0), sub_a5851902[arg1][arg2].field_256, sub_a5851902[arg1][arg2].field_512
}

function sub_aa3a6b36(?) {
    require calldata.size - 4 >= 64
    return sub_aa3a6b36[arg1][arg2].field_768, sub_aa3a6b36[arg1][arg2].field_1024, address(sub_aa3a6b36[arg1][arg2].field_1280)
}

function marketplace() {
    return marketplaceAddress
}

function owners(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return owners[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateAuction(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    auctionAddress = arg1
}

function updateMarketplace(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    marketplaceAddress = arg1
}

function updatePlatformFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    platformFee = arg1
    emit UpdatePlatformFee(arg1);
}

function updatePlatformFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_3740ebb3Address = arg1
    emit 0xe57e7c1f: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_2d63ce27(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    address(sub_a5851902[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][address(msg.sender)].field_0) = 0
    sub_a5851902[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][address(msg.sender)].field_256 = 0
    sub_a5851902[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][address(msg.sender)].field_512 = 0
    emit OfferCanceled(Array(len=arg1.length, data=arg1[all]), msg.sender);
}

function sub_2e792905(?) {
    require calldata.size - 4 >= 224
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + ('cd', 4).length + 36 <= calldata.size
    mem[128 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 128] = 0
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[ceil32(('cd', 4).length) + 160 len floor32(('cd', 4).length)] = call.data[cd[4] + 36 len floor32(('cd', 4).length)]
    mem[ceil32(('cd', 4).length) + floor32(('cd', 4).length) + -(('cd', 4).length % 32) + 192 len ('cd', 4).length % 32] = mem[floor32(('cd', 4).length) + -(('cd', 4).length % 32) + 160 len ('cd', 4).length % 32]
    mem[ceil32(('cd', 4).length) + 128] = ('cd', 4).length
    _668 = sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])
    stor6[mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]]] = (2 * ('cd', 4).length) + 1
    if ('cd', 4).length <= 0:
        idx = 0
        while stor6[mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]]].length + 31 / 32 > idx:
            stor6[mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]]][idx] = 0
            idx = idx + 1
            continue 
    else:
        stor6[mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]]] = mem[128]
        s = 1
        idx = 160
        while ('cd', 4).length + 128 > idx:
            stor6[mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]]][s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, ('cd', 4).length - 1) >> 5) + 1
        while stor6[mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]]].length + 31 / 32 > idx:
            stor6[mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]]][idx] = 0
            idx = idx + 1
            continue 
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0, 'Arrays must have same length.'
    if ('cd', 100).length != ('cd', 68).length:
        revert with 0, 'Arrays must have same length.'
    if owners[mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]]]:
        if owners[mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]]] != msg.sender:
            revert with 0, 'Bundle is already listed.'
        if sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])].field_768:
            revert with 0, 'Bundle is already listed.'
    sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])].field_0 = 0
    idx = 0
    while sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])].field_0 > idx:
        sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])][idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])].field_256 = 0
    idx = 0
    while sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])].field_256 > idx:
        sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])].field_512 = 0
    idx = 0
    while sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])].field_512 > idx:
        sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(('cd', 4).length) + 160 len Mask(8 * -ceil32(('cd', 4).length) + ('cd', 4).length + 32, 0, 0), mem[('cd', 4).length + 160 len -('cd', 4).length + ceil32(('cd', 4).length)]])][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < ('cd', 36).length
        if ext_call.return_data[0]:
            require idx < ('cd', 68).length
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[68] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != msg.sender:
                revert with 0, 'Must be owner of NFT.'
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 164] = msg.sender
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 196] = this.address
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).isApprovedForAll(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Must be approved before list.'
            sub_aa3a6b36[address(msg.sender)][_668].field_512++
            stor[('array', 2, ('map', ('var', '_668'), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_aa3a6b36', 2)))) + sub_aa3a6b36[address(msg.sender)][_668].field_512].field_0 = 1
        else:
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).supportsInterface(bytes4 arg1) with:
                    gas gas_remaining wei
                   args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Invalid NFT address.'
            require idx < ('cd', 36).length
            require idx < ('cd', 100).length
            require idx < ('cd', 68).length
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).balanceOf(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args msg.sender, cd[((32 * idx) + cd[68] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < cd[((32 * idx) + cd[100] + 36)]:
                revert with 0, 'Must hold enough NFTs.'
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 164] = msg.sender
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 196] = this.address
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).isApprovedForAll(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            mem[('cd', 4).length + ceil32(('cd', 4).length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Must be approved before list.'
            require idx < ('cd', 100).length
            sub_aa3a6b36[address(msg.sender)][_668].field_512++
            stor[sub_aa3a6b36[address(msg.sender)][_668].field_512 + ('array', 2, ('map', ('var', '_668'), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_aa3a6b36', 2))))].field_0 = cd[((32 * idx) + cd[100] + 36)]
        require idx < ('cd', 36).length
        sub_aa3a6b36[address(msg.sender)][_668].field_0++
        address(sub_aa3a6b36[address(msg.sender)][_668][sub_aa3a6b36[address(msg.sender)][_668].field_0].field_0) = address(cd[((32 * idx) + cd[36] + 36)])
        require idx < ('cd', 68).length
        sub_aa3a6b36[address(msg.sender)][_668].field_256++
        stor[sub_aa3a6b36[address(msg.sender)][_668].field_256 + ('array', 1, ('map', ('var', '_668'), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_aa3a6b36', 2))))].field_0 = cd[((32 * idx) + cd[68] + 36)]
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        if not stor4[address(cd[((32 * idx) + cd[36] + 36)])][cd[((32 * idx) + cd[68] + 36)]][1][_668]:
            stor4[address(cd[((32 * idx) + cd[36] + 36)])][cd[((32 * idx) + cd[68] + 36)]]++
            stor4[address(cd[((32 * idx) + cd[36] + 36)])][cd[((32 * idx) + cd[68] + 36)]][stor4[address(cd[((32 * idx) + cd[36] + 36)])][cd[((32 * idx) + cd[68] + 36)]]] = _668
            stor4[address(cd[((32 * idx) + cd[36] + 36)])][cd[((32 * idx) + cd[68] + 36)]][1][_668] = stor4[address(cd[((32 * idx) + cd[36] + 36)])][cd[((32 * idx) + cd[68] + 36)]]
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        mem[0] = cd[((32 * idx) + cd[68] + 36)]
        mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), sha3(_668, 5))
        stor5[_668][address(cd[((32 * idx) + cd[36] + 36)])][cd[((32 * idx) + cd[68] + 36)]] = idx
        idx = idx + 1
        continue 
    sub_aa3a6b36[address(msg.sender)][_668].field_768 = cd[132]
    sub_aa3a6b36[address(msg.sender)][_668].field_1024 = cd[164]
    address(sub_aa3a6b36[address(msg.sender)][_668].field_1280) = address(cd[196])
    owners[_668] = msg.sender
    emit 0xef86d839: Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), cd[132], cd[164], not address(cd[196]), address(cd[196]), msg.sender
}

function sub_e831eebf(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    _578 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    if not owners[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]]:
        revert with 0, 'Invalid Bundle ID.'
    if arg4 <= block.timestamp:
        revert with 0, 'Invalid expiration'
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[arg1.length + ceil32(arg1.length) + 430 len 26]
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[arg1.length + ceil32(arg1.length) + 324 len 64] = approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
    call arg2 with:
         gas gas_remaining wei
        args 0, mem[arg1.length + ceil32(arg1.length) + 388 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg1.length:
                revert with arg1[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if arg1.length:
            require arg1.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[arg1.length + ceil32(arg1.length) + 434 len 22]
        require ext_code.size(arg2)
        staticcall arg2.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[arg1.length + ceil32(arg1.length) + 446 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[arg1.length + ceil32(arg1.length) + 594 len 26]
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[arg1.length + ceil32(arg1.length) + 488 len 64] = approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg2 with:
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[arg1.length + ceil32(arg1.length) + 552 len 4]
        if not return_data.size:
            if not ext_call.success:
                if arg1.length:
                    revert with arg1[all]
                revert with 0, 'SafeERC20: low-level call failed'
            if arg1.length:
                require arg1.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[arg1.length + ceil32(arg1.length) + 598 len 22]
            idx = 0
            while idx < sub_aa3a6b36[stor3[_578]][_578].field_0:
                require idx < sub_aa3a6b36[stor3[_578]][_578].field_256
                mem[0] = sha3(_578, sha3(owners[_578], 2)) + 1
                mem[arg1.length + ceil32(arg1.length) + 488] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                mem[arg1.length + ceil32(arg1.length) + 492] = address(sub_aa3a6b36[stor3[_578]][_578][idx].field_0)
                mem[arg1.length + ceil32(arg1.length) + 524] = sub_aa3a6b36[stor3[_578]][_578][idx + 1].field_0
                require ext_code.size(auctionAddress)
                call auctionAddress.0x4ffccb85 with:
                     gas gas_remaining wei
                    args address(sub_aa3a6b36[stor3[_578]][_578][idx].field_0), sub_aa3a6b36[stor3[_578]][_578][idx + 1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            mem[arg1.length + ceil32(arg1.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[arg1.length + ceil32(arg1.length) + 520]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 599 len 22]
            idx = 0
            while idx < sub_aa3a6b36[stor3[_578]][_578].field_0:
                require idx < sub_aa3a6b36[stor3[_578]][_578].field_256
                mem[0] = sha3(_578, sha3(owners[_578], 2)) + 1
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 489] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 493] = address(sub_aa3a6b36[stor3[_578]][_578][idx].field_0)
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 525] = sub_aa3a6b36[stor3[_578]][_578][idx + 1].field_0
                require ext_code.size(auctionAddress)
                call auctionAddress.0x4ffccb85 with:
                     gas gas_remaining wei
                    args address(sub_aa3a6b36[stor3[_578]][_578][idx].field_0), sub_aa3a6b36[stor3[_578]][_578][idx + 1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
    else:
        mem[arg1.length + ceil32(arg1.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            require ext_code.size(arg2)
            staticcall arg2.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 447 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 595 len 26]
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 489 len 64] = approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 553 len 0] = 0
            call arg2 with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 553 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg1.length:
                        revert with arg1[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg1.length:
                    require arg1.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 599 len 22]
                idx = 0
                while idx < sub_aa3a6b36[stor3[_578]][_578].field_0:
                    require idx < sub_aa3a6b36[stor3[_578]][_578].field_256
                    mem[0] = sha3(_578, sha3(owners[_578], 2)) + 1
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 489] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 493] = address(sub_aa3a6b36[stor3[_578]][_578][idx].field_0)
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 525] = sub_aa3a6b36[stor3[_578]][_578][idx + 1].field_0
                    require ext_code.size(auctionAddress)
                    call auctionAddress.0x4ffccb85 with:
                         gas gas_remaining wei
                        args address(sub_aa3a6b36[stor3[_578]][_578][idx].field_0), sub_aa3a6b36[stor3[_578]][_578][idx + 1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 521]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 600 len 22]
                idx = 0
                while idx < sub_aa3a6b36[stor3[_578]][_578].field_0:
                    require idx < sub_aa3a6b36[stor3[_578]][_578].field_256
                    mem[0] = sha3(_578, sha3(owners[_578], 2)) + 1
                    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 490] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 494] = address(sub_aa3a6b36[stor3[_578]][_578][idx].field_0)
                    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 526] = sub_aa3a6b36[stor3[_578]][_578][idx + 1].field_0
                    require ext_code.size(auctionAddress)
                    call auctionAddress.0x4ffccb85 with:
                         gas gas_remaining wei
                        args address(sub_aa3a6b36[stor3[_578]][_578][idx].field_0), sub_aa3a6b36[stor3[_578]][_578][idx + 1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            require return_data.size >= 32
            if not mem[arg1.length + ceil32(arg1.length) + 356]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 435 len 22]
            require ext_code.size(arg2)
            staticcall arg2.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 447 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 595 len 26]
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 489 len 64] = approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call arg2 with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 553 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg1.length:
                        revert with arg1[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg1.length:
                    require arg1.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 599 len 22]
                idx = 0
                while idx < sub_aa3a6b36[stor3[_578]][_578].field_0:
                    require idx < sub_aa3a6b36[stor3[_578]][_578].field_256
                    mem[0] = sha3(_578, sha3(owners[_578], 2)) + 1
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 489] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 493] = address(sub_aa3a6b36[stor3[_578]][_578][idx].field_0)
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 525] = sub_aa3a6b36[stor3[_578]][_578][idx + 1].field_0
                    require ext_code.size(auctionAddress)
                    call auctionAddress.0x4ffccb85 with:
                         gas gas_remaining wei
                        args address(sub_aa3a6b36[stor3[_578]][_578][idx].field_0), sub_aa3a6b36[stor3[_578]][_578][idx + 1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 521]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                idx = 0
                while idx < sub_aa3a6b36[stor3[_578]][_578].field_0:
                    require idx < sub_aa3a6b36[stor3[_578]][_578].field_256
                    mem[0] = sha3(_578, sha3(owners[_578], 2)) + 1
                    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 490] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 494] = address(sub_aa3a6b36[stor3[_578]][_578][idx].field_0)
                    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 526] = sub_aa3a6b36[stor3[_578]][_578][idx + 1].field_0
                    require ext_code.size(auctionAddress)
                    call auctionAddress.0x4ffccb85 with:
                         gas gas_remaining wei
                        args address(sub_aa3a6b36[stor3[_578]][_578][idx].field_0), sub_aa3a6b36[stor3[_578]][_578][idx + 1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    address(sub_a5851902[_578][address(msg.sender)].field_0) = arg2
    sub_a5851902[_578][address(msg.sender)].field_256 = arg3
    sub_a5851902[_578][address(msg.sender)].field_512 = arg4
    emit OfferCreated(Array(len=arg1.length, data=arg1[all]), address(arg2), arg3, arg4, msg.sender);
}

function sub_49deb977(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    _39 = sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
    mem[arg2.length + ceil32(arg2.length) + 160] = sub_aa3a6b36[address(arg1)][sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])].field_0
    if not sub_aa3a6b36[address(arg1)][_39].field_0:
        mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 192] = sub_aa3a6b36[address(arg1)][_39].field_256
        if not sub_aa3a6b36[address(arg1)][_39].field_256:
            if sub_aa3a6b36[address(arg1)][_39].field_512:
                mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256] = sub_aa3a6b36[address(arg1)][_39][2].field_0
                idx = arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256
                s = 0
                while arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 224 > idx:
                    mem[idx + 32] = sub_aa3a6b36[address(arg1)][_39][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 480 len floor32(sub_aa3a6b36[address(arg1)][_39].field_0)] = mem[arg2.length + ceil32(arg2.length) + 192 len floor32(sub_aa3a6b36[address(arg1)][_39].field_0)]
            mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 480] = sub_aa3a6b36[address(arg1)][_39].field_256
            mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 512 len floor32(sub_aa3a6b36[address(arg1)][_39].field_256)] = mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224 len floor32(sub_aa3a6b36[address(arg1)][_39].field_256)]
            mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_256) + (64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 512] = sub_aa3a6b36[address(arg1)][_39].field_512
            mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_256) + (64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 544 len floor32(sub_aa3a6b36[address(arg1)][_39].field_512)] = mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256 len floor32(sub_aa3a6b36[address(arg1)][_39].field_512)]
            return Array(len=sub_aa3a6b36[address(arg1)][_39].field_0, data=mem[arg2.length + ceil32(arg2.length) + 192 len floor32(sub_aa3a6b36[address(arg1)][_39].field_0)], mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + floor32(sub_aa3a6b36[address(arg1)][_39].field_0) + 480 len (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + -floor32(sub_aa3a6b36[address(arg1)][_39].field_0) + 64]), 
                   (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224,
                   (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 256,
                   sub_aa3a6b36[address(arg1)][_39].field_768,
                   sub_aa3a6b36[address(arg1)][_39].field_1024,
                   address(sub_aa3a6b36[address(arg1)][_39].field_1280)
        mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224] = sub_aa3a6b36[address(arg1)][_39][1].field_0
        idx = arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224
        s = 0
        while arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 192 > idx:
            mem[idx + 32] = sub_aa3a6b36[address(arg1)][_39][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 224] = sub_aa3a6b36[address(arg1)][_39].field_512
        if not sub_aa3a6b36[address(arg1)][_39].field_512:
            mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 480 len floor32(sub_aa3a6b36[address(arg1)][_39].field_0)] = mem[arg2.length + ceil32(arg2.length) + 192 len floor32(sub_aa3a6b36[address(arg1)][_39].field_0)]
            mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 480] = sub_aa3a6b36[address(arg1)][_39].field_256
            mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 512 len floor32(sub_aa3a6b36[address(arg1)][_39].field_256)] = mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224 len floor32(sub_aa3a6b36[address(arg1)][_39].field_256)]
            mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_256) + (64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 512] = sub_aa3a6b36[address(arg1)][_39].field_512
            mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_256) + (64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 544 len floor32(sub_aa3a6b36[address(arg1)][_39].field_512)] = mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256 len floor32(sub_aa3a6b36[address(arg1)][_39].field_512)]
            return Array(len=sub_aa3a6b36[address(arg1)][_39].field_0, data=mem[arg2.length + ceil32(arg2.length) + 192 len floor32(sub_aa3a6b36[address(arg1)][_39].field_0)], mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + floor32(sub_aa3a6b36[address(arg1)][_39].field_0) + 480 len (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + -floor32(sub_aa3a6b36[address(arg1)][_39].field_0) + 64]), 
                   (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224,
                   (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 256,
                   sub_aa3a6b36[address(arg1)][_39].field_768,
                   sub_aa3a6b36[address(arg1)][_39].field_1024,
                   address(sub_aa3a6b36[address(arg1)][_39].field_1280)
        mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256] = sub_aa3a6b36[address(arg1)][_39][2].field_0
        idx = arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256
        s = 0
        while arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 224 > idx:
            mem[idx + 32] = sub_aa3a6b36[address(arg1)][_39][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
    else:
        mem[arg2.length + ceil32(arg2.length) + 192] = address(sub_aa3a6b36[address(arg1)][_39].field_0)
        idx = arg2.length + ceil32(arg2.length) + 192
        s = 0
        while arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 160 > idx:
            mem[idx + 32] = address(sub_aa3a6b36[address(arg1)][_39][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 192] = sub_aa3a6b36[address(arg1)][_39].field_256
        if not sub_aa3a6b36[address(arg1)][_39].field_256:
            mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 224] = sub_aa3a6b36[address(arg1)][_39].field_512
            if not sub_aa3a6b36[address(arg1)][_39].field_512:
                mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 480 len floor32(sub_aa3a6b36[address(arg1)][_39].field_0)] = mem[arg2.length + ceil32(arg2.length) + 192 len floor32(sub_aa3a6b36[address(arg1)][_39].field_0)]
                mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 480] = sub_aa3a6b36[address(arg1)][_39].field_256
                mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 512 len floor32(sub_aa3a6b36[address(arg1)][_39].field_256)] = mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224 len floor32(sub_aa3a6b36[address(arg1)][_39].field_256)]
                mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_256) + (64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 512] = sub_aa3a6b36[address(arg1)][_39].field_512
                mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_256) + (64 * sub_aa3a6b36[address(arg1)][_39].field_0) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 544 len floor32(sub_aa3a6b36[address(arg1)][_39].field_512)] = mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256 len floor32(sub_aa3a6b36[address(arg1)][_39].field_512)]
                return Array(len=sub_aa3a6b36[address(arg1)][_39].field_0, data=mem[arg2.length + ceil32(arg2.length) + 192 len floor32(sub_aa3a6b36[address(arg1)][_39].field_0)], mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + floor32(sub_aa3a6b36[address(arg1)][_39].field_0) + 480 len (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + -floor32(sub_aa3a6b36[address(arg1)][_39].field_0) + 64]), 
                       (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224,
                       (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 256,
                       sub_aa3a6b36[address(arg1)][_39].field_768,
                       sub_aa3a6b36[address(arg1)][_39].field_1024,
                       address(sub_aa3a6b36[address(arg1)][_39].field_1280)
            mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256] = sub_aa3a6b36[address(arg1)][_39][2].field_0
            idx = arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256
            s = 0
            while arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 224 > idx:
                mem[idx + 32] = sub_aa3a6b36[address(arg1)][_39][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
        else:
            mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224] = sub_aa3a6b36[address(arg1)][_39][1].field_0
            idx = arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224
            s = 0
            while arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 192 > idx:
                mem[idx + 32] = sub_aa3a6b36[address(arg1)][_39][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 224] = sub_aa3a6b36[address(arg1)][_39].field_512
            if sub_aa3a6b36[address(arg1)][_39].field_512:
                mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256] = sub_aa3a6b36[address(arg1)][_39][2].field_0
                idx = arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256
                s = 0
                while arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 224 > idx:
                    mem[idx + 32] = sub_aa3a6b36[address(arg1)][_39][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 352] = sub_aa3a6b36[address(arg1)][_39].field_768
    mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 384] = sub_aa3a6b36[address(arg1)][_39].field_1024
    mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 416] = address(sub_aa3a6b36[address(arg1)][_39].field_1280)
    mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 256] = 192
    mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 448] = mem[arg2.length + ceil32(arg2.length) + 160]
    mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 480 len floor32(mem[arg2.length + ceil32(arg2.length) + 160])] = mem[arg2.length + ceil32(arg2.length) + 192 len floor32(mem[arg2.length + ceil32(arg2.length) + 160])]
    mem[(32 * mem[arg2.length + ceil32(arg2.length) + 160]) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 480] = sub_aa3a6b36[address(arg1)][_39].field_256
    mem[(32 * mem[arg2.length + ceil32(arg2.length) + 160]) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 512 len floor32(sub_aa3a6b36[address(arg1)][_39].field_256)] = mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224 len floor32(sub_aa3a6b36[address(arg1)][_39].field_256)]
    mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * mem[arg2.length + ceil32(arg2.length) + 160]) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 512] = sub_aa3a6b36[address(arg1)][_39].field_512
    mem[(64 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * mem[arg2.length + ceil32(arg2.length) + 160]) + arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 544 len floor32(sub_aa3a6b36[address(arg1)][_39].field_512)] = mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + 256 len floor32(sub_aa3a6b36[address(arg1)][_39].field_512)]
    return Array(len=mem[arg2.length + ceil32(arg2.length) + 160], data=mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + 480 len (32 * mem[arg2.length + ceil32(arg2.length) + 160]) + 32], mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + 224 len floor32(sub_aa3a6b36[address(arg1)][_39].field_256)], mem[arg2.length + ceil32(arg2.length) + (32 * sub_aa3a6b36[address(arg1)][_39].field_0) + (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + (32 * mem[arg2.length + ceil32(arg2.length) + 160]) + floor32(sub_aa3a6b36[address(arg1)][_39].field_256) + 512 len (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * sub_aa3a6b36[address(arg1)][_39].field_512) + -floor32(sub_aa3a6b36[address(arg1)][_39].field_256) + 32]), 
           (32 * mem[arg2.length + ceil32(arg2.length) + 160]) + 224,
           (32 * sub_aa3a6b36[address(arg1)][_39].field_256) + (32 * mem[arg2.length + ceil32(arg2.length) + 160]) + 256,
           sub_aa3a6b36[address(arg1)][_39].field_768,
           sub_aa3a6b36[address(arg1)][_39].field_1024,
           address(sub_aa3a6b36[address(arg1)][_39].field_1280)
}

function sub_943f2261(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if stor1.length == 2:
        revert with 0, 'sReentrancyGuard: reentrant call'
    stor1.length = 2
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    if sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])].field_768 <= 0:
        revert with 0, 'Not listed bundle.'
    mem[arg1.length + ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = arg1.length
    _178 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 192 len arg1.length % 32])
    mem[(2 * arg1.length) + ceil32(arg1.length) + 192] = 96
    mem[(2 * arg1.length) + ceil32(arg1.length) + 224] = 96
    mem[(2 * arg1.length) + ceil32(arg1.length) + 256] = 96
    mem[(2 * arg1.length) + ceil32(arg1.length) + 288] = 0
    mem[(2 * arg1.length) + ceil32(arg1.length) + 320] = 0
    mem[(2 * arg1.length) + ceil32(arg1.length) + 352] = 0
    mem[(2 * arg1.length) + ceil32(arg1.length) + 576] = sub_aa3a6b36[address(msg.sender)][_178].field_0
    if sub_aa3a6b36[address(msg.sender)][_178].field_0:
        mem[(2 * arg1.length) + ceil32(arg1.length) + 608] = address(sub_aa3a6b36[address(msg.sender)][_178].field_0)
        idx = (2 * arg1.length) + ceil32(arg1.length) + 608
        s = 0
        while (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + 608 > idx + 32:
            mem[idx + 32] = address(sub_aa3a6b36[address(msg.sender)][_178][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(2 * arg1.length) + ceil32(arg1.length) + 384] = (2 * arg1.length) + ceil32(arg1.length) + 576
    mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + 608] = sub_aa3a6b36[address(msg.sender)][_178].field_256
    if not sub_aa3a6b36[address(msg.sender)][_178].field_256:
        mem[(2 * arg1.length) + ceil32(arg1.length) + 416] = (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + 608
        mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + 640] = sub_aa3a6b36[address(msg.sender)][_178].field_512
        if not sub_aa3a6b36[address(msg.sender)][_178].field_512:
            idx = 0
            while idx < sub_aa3a6b36[address(msg.sender)][_178].field_0:
                require idx < sub_aa3a6b36[address(msg.sender)][_178].field_0
                require idx < sub_aa3a6b36[address(msg.sender)][_178].field_256
                if stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][1][_178]:
                    require stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]] - 1 < stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]]
                    require stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][1][_178] - 1 < stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]]
                    stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][1][_178]] = stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]]]
                    stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][1][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]]]] = stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][1][_178]
                    require stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]]
                    stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]]] = 0
                    stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]]--
                    stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][1][_178] = 0
                require idx < sub_aa3a6b36[address(msg.sender)][_178].field_0
                require idx < sub_aa3a6b36[address(msg.sender)][_178].field_256
                mem[0] = mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + 640]
                mem[32] = sha3(mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20], sha3(_178, 5))
                stor5[_178][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]] = 0
                idx = idx + 1
                continue 
            sub_aa3a6b36[address(msg.sender)][_178].field_0 = 0
            idx = 0
            while sub_aa3a6b36[address(msg.sender)][_178].field_0 > idx:
                sub_aa3a6b36[address(msg.sender)][_178][idx].field_0 = 0
                idx = idx + 1
                continue 
            sub_aa3a6b36[address(msg.sender)][_178].field_256 = 0
            idx = 0
            while sub_aa3a6b36[address(msg.sender)][_178].field_256 > idx:
                sub_aa3a6b36[address(msg.sender)][_178][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
            sub_aa3a6b36[address(msg.sender)][_178].field_512 = 0
            idx = 0
            while sub_aa3a6b36[address(msg.sender)][_178].field_512 > idx:
                sub_aa3a6b36[address(msg.sender)][_178][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
            sub_aa3a6b36[address(msg.sender)][_178].field_768 = 0
            sub_aa3a6b36[address(msg.sender)][_178].field_1024 = 0
            address(sub_aa3a6b36[address(msg.sender)][_178].field_1280) = 0
            owners[_178] = 0
            stor6[_178] = 0
            if 31 < stor6[_178].length:
                idx = 0
                while stor6[_178].length + 31 / 32 > idx:
                    stor6[_178][idx] = 0
                    idx = idx + 1
                    continue 
            emit ItemCanceled(Array(len=arg1.length, data=arg1[all]), msg.sender);
        else:
            mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + 672] = sub_aa3a6b36[address(msg.sender)][_178][2].field_0
            idx = (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + 672
            s = 0
            while (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 640 > idx:
                mem[idx + 32] = sub_aa3a6b36[address(msg.sender)][_178][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(2 * arg1.length) + ceil32(arg1.length) + 448] = (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + 640
            mem[(2 * arg1.length) + ceil32(arg1.length) + 480] = sub_aa3a6b36[address(msg.sender)][_178].field_768
            mem[(2 * arg1.length) + ceil32(arg1.length) + 512] = sub_aa3a6b36[address(msg.sender)][_178].field_1024
            mem[(2 * arg1.length) + ceil32(arg1.length) + 544] = address(sub_aa3a6b36[address(msg.sender)][_178].field_1280)
            idx = 0
            while idx < sub_aa3a6b36[address(msg.sender)][_178].field_0:
                require idx < sub_aa3a6b36[address(msg.sender)][_178].field_0
                require idx < sub_aa3a6b36[address(msg.sender)][_178].field_256
                if stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][1][_178]:
                    require stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]] - 1 < stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]]
                    require stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][1][_178] - 1 < stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]]
                    stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][1][_178]] = stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]]]
                    stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][1][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]]]] = stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][1][_178]
                    require stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]]
                    stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]]] = 0
                    stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]]--
                    stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][1][_178] = 0
                require idx < sub_aa3a6b36[address(msg.sender)][_178].field_0
                require idx < sub_aa3a6b36[address(msg.sender)][_178].field_256
                mem[0] = mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + 640]
                mem[32] = sha3(mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20], sha3(_178, 5))
                stor5[_178][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]] = 0
                idx = idx + 1
                continue 
            sub_aa3a6b36[address(msg.sender)][_178].field_0 = 0
            idx = 0
            while sub_aa3a6b36[address(msg.sender)][_178].field_0 > idx:
                sub_aa3a6b36[address(msg.sender)][_178][idx].field_0 = 0
                idx = idx + 1
                continue 
            sub_aa3a6b36[address(msg.sender)][_178].field_256 = 0
            idx = 0
            while sub_aa3a6b36[address(msg.sender)][_178].field_256 > idx:
                sub_aa3a6b36[address(msg.sender)][_178][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
            sub_aa3a6b36[address(msg.sender)][_178].field_512 = 0
            idx = 0
            while sub_aa3a6b36[address(msg.sender)][_178].field_512 > idx:
                sub_aa3a6b36[address(msg.sender)][_178][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
            sub_aa3a6b36[address(msg.sender)][_178].field_768 = 0
            sub_aa3a6b36[address(msg.sender)][_178].field_1024 = 0
            address(sub_aa3a6b36[address(msg.sender)][_178].field_1280) = 0
            owners[_178] = 0
            stor6[_178] = 0
            if 31 < stor6[_178].length:
                idx = 0
                while stor6[_178].length + 31 / 32 > idx:
                    stor6[_178][idx] = 0
                    idx = idx + 1
                    continue 
            mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 672] = 32
            mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 704] = arg1.length
            mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 736 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                emit ItemCanceled(mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 672 len arg1.length + 64], msg.sender);
            else:
                mem[floor32(arg1.length) + (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 736] = mem[floor32(arg1.length) + (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + -(arg1.length % 32) + 768 len arg1.length % 32]
                emit ItemCanceled(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * arg1.length) + (2 * ceil32(arg1.length)) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 736 len floor32(arg1.length) + -ceil32(arg1.length) + 32]), msg.sender);
    else:
        mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + 640] = sub_aa3a6b36[address(msg.sender)][_178][1].field_0
        idx = (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + 640
        s = 0
        while (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + 608 > idx:
            mem[idx + 32] = sub_aa3a6b36[address(msg.sender)][_178][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(2 * arg1.length) + ceil32(arg1.length) + 416] = (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + 608
        mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + 640] = sub_aa3a6b36[address(msg.sender)][_178].field_512
        if sub_aa3a6b36[address(msg.sender)][_178].field_512:
            mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + 672] = sub_aa3a6b36[address(msg.sender)][_178][2].field_0
            idx = (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + 672
            s = 0
            while (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 640 > idx:
                mem[idx + 32] = sub_aa3a6b36[address(msg.sender)][_178][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
        mem[(2 * arg1.length) + ceil32(arg1.length) + 448] = (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + 640
        mem[(2 * arg1.length) + ceil32(arg1.length) + 480] = sub_aa3a6b36[address(msg.sender)][_178].field_768
        mem[(2 * arg1.length) + ceil32(arg1.length) + 512] = sub_aa3a6b36[address(msg.sender)][_178].field_1024
        mem[(2 * arg1.length) + ceil32(arg1.length) + 544] = address(sub_aa3a6b36[address(msg.sender)][_178].field_1280)
        idx = 0
        while idx < sub_aa3a6b36[address(msg.sender)][_178].field_0:
            require idx < sub_aa3a6b36[address(msg.sender)][_178].field_0
            require idx < sub_aa3a6b36[address(msg.sender)][_178].field_256
            if stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][1][_178]:
                require stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]] - 1 < stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]]
                require stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][1][_178] - 1 < stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]]
                stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][1][_178]] = stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]]]
                stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][1][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]]]] = stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][1][_178]
                require stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]]
                stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]]] = 0
                stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]]--
                stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]][1][_178] = 0
            require idx < sub_aa3a6b36[address(msg.sender)][_178].field_0
            require idx < sub_aa3a6b36[address(msg.sender)][_178].field_256
            mem[0] = mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + 640]
            mem[32] = sha3(mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20], sha3(_178, 5))
            stor5[_178][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * stor2[address(msg.sender)][_178].field_0) + 640]] = 0
            idx = idx + 1
            continue 
        sub_aa3a6b36[address(msg.sender)][_178].field_0 = 0
        idx = 0
        while sub_aa3a6b36[address(msg.sender)][_178].field_0 > idx:
            sub_aa3a6b36[address(msg.sender)][_178][idx].field_0 = 0
            idx = idx + 1
            continue 
        sub_aa3a6b36[address(msg.sender)][_178].field_256 = 0
        idx = 0
        while sub_aa3a6b36[address(msg.sender)][_178].field_256 > idx:
            sub_aa3a6b36[address(msg.sender)][_178][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
        sub_aa3a6b36[address(msg.sender)][_178].field_512 = 0
        idx = 0
        while sub_aa3a6b36[address(msg.sender)][_178].field_512 > idx:
            sub_aa3a6b36[address(msg.sender)][_178][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
        sub_aa3a6b36[address(msg.sender)][_178].field_768 = 0
        sub_aa3a6b36[address(msg.sender)][_178].field_1024 = 0
        address(sub_aa3a6b36[address(msg.sender)][_178].field_1280) = 0
        owners[_178] = 0
        stor6[_178] = 0
        if 31 < stor6[_178].length:
            idx = 0
            while stor6[_178].length + 31 / 32 > idx:
                stor6[_178][idx] = 0
                idx = idx + 1
                continue 
        mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 672] = 32
        mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 704] = arg1.length
        mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 736 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            emit ItemCanceled(mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 672 len arg1.length + 64], msg.sender);
        else:
            mem[floor32(arg1.length) + (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 736] = mem[floor32(arg1.length) + (2 * arg1.length) + ceil32(arg1.length) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + -(arg1.length % 32) + 768 len arg1.length % 32]
            emit ItemCanceled(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * arg1.length) + (2 * ceil32(arg1.length)) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_0) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_256) + (32 * sub_aa3a6b36[address(msg.sender)][_178].field_512) + 736 len floor32(arg1.length) + -ceil32(arg1.length) + 32]), msg.sender);
    stor1.length = 1
}

function validateItemSold(address arg1, uint256 arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    if msg.sender == auctionAddress:
        mem[0] = arg2
        mem[32] = sha3(address(arg1), 4)
        idx = 0
        while idx < stor4[address(arg1)][arg2]:
            if idx >= stor4[address(arg1)][arg2]:
                revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
            mem[0] = stor4[address(arg1)][arg2][idx]
            mem[32] = 3
            if owners[stor4[address(arg1)][arg2][idx]]:
                mem[0] = stor4[address(arg1)][arg2][idx]
                mem[32] = 6
                _590 = mem[64]
                mem[64] = mem[64] + ceil32(stor6[stor4[address(arg1)][arg2][idx]].length) + 32
                mem[_590] = stor6[stor4[address(arg1)][arg2][idx]].length
                mem[0] = sha3(stor4[address(arg1)][arg2][idx], 6)
                mem[_590 + 32] = stor6[stor4[address(arg1)][arg2][idx]]
                s = _590 + 32
                t = sha3(mem[0])
                while _590 + stor6[stor4[address(arg1)][arg2][idx]].length > s:
                    mem[s + 32] = uint256(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[32] = sha3(address(arg1), sha3(stor4[address(arg1)][arg2][idx], 5))
                require stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                if stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]].field_0 > arg3:
                    require stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                    if arg3 > stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                    stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]].field_0 -= arg3
                    _1309 = mem[64]
                    mem[mem[64] + 128] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_768
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = mem[_590]
                    _1311 = mem[_590]
                    s = 0
                    while s < _1311:
                        mem[s + mem[64] + 192] = mem[s + _590 + 32]
                        s = s + 32
                        continue 
                    if not _1311 % 32:
                        mem[_1309 + 32] = _1311 + 192
                        mem[_1311 + _1309 + 192] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0:
                            mem[_1309 + 64] = _1311 + 224
                            mem[_1311 + _1309 + 224] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                            if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                mem[_1309 + 96] = _1311 + 256
                                mem[_1311 + _1309 + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                    emit 0xf3c5254b: mem[mem[64] len _1311 + _1309 + -mem[64] + 288], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                    mem[_1311 + _1309 + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                    s = _1311 + _1309 + 288
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                    while _1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xf3c5254b: mem[mem[64] len _1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                            else:
                                mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                mem[_1311 + _1309 + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                s = _1311 + _1309 + 256
                                t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                while _1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256 > s + 32:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1309 + 96] = _1311 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256
                                mem[_1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                    emit 0xf3c5254b: mem[mem[64] len _1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 288], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                    mem[_1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                    s = _1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                    while _1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xf3c5254b: mem[mem[64] len _1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                        else:
                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2))
                            mem[_1311 + _1309 + 224] = address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0)
                            s = _1311 + _1309 + 224
                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)))
                            while _1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 224 > s + 32:
                                mem[s + 32] = address(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1309 + 64] = _1311 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 224
                            mem[_1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 224] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                            if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                mem[_1309 + 96] = _1311 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256
                                mem[_1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                    emit 0xf3c5254b: mem[mem[64] len _1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + -mem[64] + 288], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                    mem[_1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                    s = _1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                    while _1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xf3c5254b: mem[mem[64] len _1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                            else:
                                mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                mem[_1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                s = _1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256
                                t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                while _1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256 > s + 32:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1309 + 96] = _1311 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256
                                mem[_1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                    emit 0xf3c5254b: mem[mem[64] len _1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 288], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                    mem[_1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                    s = _1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                    while _1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xf3c5254b: mem[mem[64] len _1311 + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                    else:
                        mem[floor32(_1311) + _1309 + 192] = mem[floor32(_1311) + _1309 + -(_1311 % 32) + 224 len _1311 % 32]
                        mem[_1309 + 32] = floor32(_1311) + 224
                        mem[floor32(_1311) + _1309 + 224] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0:
                            mem[_1309 + 64] = floor32(_1311) + 256
                            mem[floor32(_1311) + _1309 + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                            if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                mem[_1309 + 96] = floor32(_1311) + 288
                                mem[floor32(_1311) + _1309 + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                    emit 0xf3c5254b: mem[mem[64] len floor32(_1311) + _1309 + -mem[64] + 320], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                    mem[floor32(_1311) + _1309 + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                    s = floor32(_1311) + _1309 + 320
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                    while floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xf3c5254b: mem[mem[64] len floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                            else:
                                mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                mem[floor32(_1311) + _1309 + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                s = floor32(_1311) + _1309 + 288
                                t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                while floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288 > s + 32:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1309 + 96] = floor32(_1311) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                mem[floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                    emit 0xf3c5254b: mem[mem[64] len floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 320], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                    mem[floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                    s = floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                    while floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xf3c5254b: mem[mem[64] len floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                        else:
                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2))
                            mem[floor32(_1311) + _1309 + 256] = address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0)
                            s = floor32(_1311) + _1309 + 256
                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)))
                            while floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256 > s + 32:
                                mem[s + 32] = address(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1309 + 64] = floor32(_1311) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256
                            mem[floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                            if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                mem[_1309 + 96] = floor32(_1311) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288
                                mem[floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                    emit 0xf3c5254b: mem[mem[64] len floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + -mem[64] + 320], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                    mem[floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                    s = floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 320
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                    while floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xf3c5254b: mem[mem[64] len floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                            else:
                                mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                mem[floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                s = floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288
                                t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                while floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288 > s + 32:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1309 + 96] = floor32(_1311) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                mem[floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                    emit 0xf3c5254b: mem[mem[64] len floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 320], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                    mem[floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                    s = floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                    while floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xf3c5254b: mem[mem[64] len floor32(_1311) + _1309 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                else:
                    mem[32] = sha3(address(arg1), sha3(stor4[address(arg1)][arg2][idx], 5))
                    stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] = 0
                    if 1 == sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0:
                        sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0 = 0
                        s = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)))
                        while sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2))) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256 = 0
                        s = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                        while sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512 = 0
                        s = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                        while sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_768 = 0
                        sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_1024 = 0
                        address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_1280) = 0
                        mem[0] = stor4[address(arg1)][arg2][idx]
                        owners[stor4[address(arg1)][arg2][idx]] = 0
                        mem[32] = 6
                        stor6[stor4[address(arg1)][arg2][idx]] = 0
                        if 31 >= stor6[stor4[address(arg1)][arg2][idx]].length:
                            _2042 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[_590]
                            _2044 = mem[_590]
                            s = 0
                            while s < _2044:
                                mem[s + _2042 + 64] = mem[s + _590 + 32]
                                s = s + 32
                                continue 
                            if not _2044 % 32:
                                emit ItemCanceled(mem[mem[64] len _2044 + _2042 + -mem[64] + 64], owners[stor4[address(arg1)][arg2][idx]]);
                            else:
                                mem[floor32(_2044) + _2042 + 64] = mem[floor32(_2044) + _2042 + -(_2044 % 32) + 96 len _2044 % 32]
                                emit ItemCanceled(mem[mem[64] len floor32(_2044) + _2042 + -mem[64] + 96], owners[stor4[address(arg1)][arg2][idx]]);
                        else:
                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], 6)
                            s = sha3(sha3(stor4[address(arg1)][arg2][idx], 6))
                            while sha3(sha3(stor4[address(arg1)][arg2][idx], 6)) + (stor6[stor4[address(arg1)][arg2][idx]].length + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            _2188 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[_590]
                            _2190 = mem[_590]
                            s = 0
                            while s < _2190:
                                mem[s + _2188 + 64] = mem[s + _590 + 32]
                                s = s + 32
                                continue 
                            if not _2190 % 32:
                                emit ItemCanceled(mem[mem[64] len _2190 + _2188 + -mem[64] + 64], owners[stor4[address(arg1)][arg2][idx]]);
                            else:
                                mem[floor32(_2190) + _2188 + 64] = mem[floor32(_2190) + _2188 + -(_2190 % 32) + 96 len _2190 % 32]
                                emit ItemCanceled(mem[mem[64] len floor32(_2190) + _2188 + -mem[64] + 96], owners[stor4[address(arg1)][arg2][idx]]);
                    else:
                        if stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] >= sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0 - 1:
                            require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                            address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0].field_0) = 0
                            sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0--
                            require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                            stor[('array', 1, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256].field_0 = 0
                            sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256--
                            require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                            stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512].field_0 = 0
                            sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512--
                            _1303 = mem[64]
                            mem[mem[64] + 128] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_768
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = mem[_590]
                            _1305 = mem[_590]
                            s = 0
                            while s < _1305:
                                mem[s + mem[64] + 192] = mem[s + _590 + 32]
                                s = s + 32
                                continue 
                            if not _1305 % 32:
                                mem[mem[64] + 32] = _1305 + 192
                                mem[_1305 + mem[64] + 192] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0:
                                    mem[mem[64] + 64] = _1305 + 224
                                    mem[_1305 + mem[64] + 224] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                                    if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                        mem[mem[64] + 96] = _1305 + 256
                                        mem[_1305 + mem[64] + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: Array(len=mem[mem[64] + 160 len _1305 + 32], data=sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0, sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256, sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512), _1305 + 192, _1305 + 224, _1305 + 256, sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_768, msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[_1305 + mem[64] + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = _1305 + mem[64] + 288
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while _1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len _1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                                    else:
                                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                        mem[_1305 + mem[64] + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                        s = _1305 + mem[64] + 256
                                        t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                        while _1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256 > s + 32:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_1303 + 96] = _1305 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256
                                        mem[_1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len _1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 288], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[_1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = _1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while _1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len _1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2))
                                    mem[_1305 + mem[64] + 224] = address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0)
                                    s = _1305 + mem[64] + 224
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)))
                                    while _1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 224 > s + 32:
                                        mem[s + 32] = address(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_1303 + 64] = _1305 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 224
                                    mem[_1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 224] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                                    if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                        mem[_1303 + 96] = _1305 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256
                                        mem[_1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len _1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + -mem[64] + 288], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[_1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = _1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while _1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len _1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                                    else:
                                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                        mem[_1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                        s = _1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256
                                        t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                        while _1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256 > s + 32:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_1303 + 96] = _1305 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256
                                        mem[_1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len _1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 288], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[_1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = _1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while _1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len _1305 + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                            else:
                                mem[floor32(_1305) + mem[64] + 192] = mem[floor32(_1305) + mem[64] + -(_1305 % 32) + 224 len _1305 % 32]
                                mem[mem[64] + 32] = floor32(_1305) + 224
                                mem[floor32(_1305) + mem[64] + 224] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0:
                                    mem[mem[64] + 64] = floor32(_1305) + 256
                                    mem[floor32(_1305) + mem[64] + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                                    if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                        mem[mem[64] + 96] = floor32(_1305) + 288
                                        mem[floor32(_1305) + mem[64] + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: Array(len=mem[mem[64] + 160 len floor32(_1305) + 64], data=sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0, sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256, sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512), floor32(_1305) + 224, floor32(_1305) + 256, floor32(_1305) + 288, sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_768, msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[floor32(_1305) + mem[64] + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = floor32(_1305) + mem[64] + 320
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                                    else:
                                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                        mem[floor32(_1305) + mem[64] + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                        s = floor32(_1305) + mem[64] + 288
                                        t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                        while floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288 > s + 32:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_1303 + 96] = floor32(_1305) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                        mem[floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 320], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2))
                                    mem[floor32(_1305) + mem[64] + 256] = address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0)
                                    s = floor32(_1305) + mem[64] + 256
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)))
                                    while floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256 > s + 32:
                                        mem[s + 32] = address(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_1303 + 64] = floor32(_1305) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256
                                    mem[floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                                    if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                        mem[_1303 + 96] = floor32(_1305) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288
                                        mem[floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + -mem[64] + 320], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 320
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                                    else:
                                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                        mem[floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                        s = floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288
                                        t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                        while floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288 > s + 32:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_1303 + 96] = floor32(_1305) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                        mem[floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 320], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1305) + _1303 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                        else:
                            require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0 - 1 < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                            require stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                            address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]].field_0) = address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0].field_0)
                            require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256 - 1 < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                            require stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                            stor[('array', 1, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]].field_0 = stor[('array', 1, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256].field_0
                            require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512 - 1 < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                            require stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                            stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]].field_0 = stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512].field_0
                            require stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                            require stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                            mem[32] = sha3(address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]].field_0), sha3(stor4[address(arg1)][arg2][idx], 5))
                            stor5[stor4[address(arg1)][arg2][idx]][address(stor2[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]].field_0)][stor[('array', 1, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'stor2', 2)))) + stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]].field_0] = stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]
                            require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                            address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0].field_0) = 0
                            sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0--
                            require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                            stor[('array', 1, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256].field_0 = 0
                            sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256--
                            require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                            stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512].field_0 = 0
                            sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512--
                            _1402 = mem[64]
                            mem[mem[64] + 128] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_768
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = mem[_590]
                            _1404 = mem[_590]
                            s = 0
                            while s < _1404:
                                mem[s + mem[64] + 192] = mem[s + _590 + 32]
                                s = s + 32
                                continue 
                            if not _1404 % 32:
                                mem[_1402 + 32] = _1404 + 192
                                mem[_1404 + _1402 + 192] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0:
                                    mem[_1402 + 64] = _1404 + 224
                                    mem[_1404 + _1402 + 224] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                                    if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                        mem[_1402 + 96] = _1404 + 256
                                        mem[_1404 + _1402 + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len _1404 + _1402 + -mem[64] + 288], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[_1404 + _1402 + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = _1404 + _1402 + 288
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while _1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len _1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                                    else:
                                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                        mem[_1404 + _1402 + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                        s = _1404 + _1402 + 256
                                        t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                        while _1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256 > s + 32:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_1402 + 96] = _1404 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256
                                        mem[_1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len _1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 288], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[_1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = _1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while _1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len _1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2))
                                    mem[_1404 + _1402 + 224] = address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0)
                                    s = _1404 + _1402 + 224
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)))
                                    while _1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 224 > s + 32:
                                        mem[s + 32] = address(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_1402 + 64] = _1404 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 224
                                    mem[_1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 224] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                                    if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                        mem[_1402 + 96] = _1404 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256
                                        mem[_1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len _1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + -mem[64] + 288], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[_1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = _1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while _1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len _1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                                    else:
                                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                        mem[_1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                        s = _1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256
                                        t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                        while _1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256 > s + 32:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_1402 + 96] = _1404 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256
                                        mem[_1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len _1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 288], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[_1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = _1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while _1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len _1404 + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                            else:
                                mem[floor32(_1404) + _1402 + 192] = mem[floor32(_1404) + _1402 + -(_1404 % 32) + 224 len _1404 % 32]
                                mem[_1402 + 32] = floor32(_1404) + 224
                                mem[floor32(_1404) + _1402 + 224] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0:
                                    mem[_1402 + 64] = floor32(_1404) + 256
                                    mem[floor32(_1404) + _1402 + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                                    if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                        mem[_1402 + 96] = floor32(_1404) + 288
                                        mem[floor32(_1404) + _1402 + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1404) + _1402 + -mem[64] + 320], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[floor32(_1404) + _1402 + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = floor32(_1404) + _1402 + 320
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                                    else:
                                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                        mem[floor32(_1404) + _1402 + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                        s = floor32(_1404) + _1402 + 288
                                        t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                        while floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288 > s + 32:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_1402 + 96] = floor32(_1404) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                        mem[floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 320], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2))
                                    mem[floor32(_1404) + _1402 + 256] = address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0)
                                    s = floor32(_1404) + _1402 + 256
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)))
                                    while floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256 > s + 32:
                                        mem[s + 32] = address(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_1402 + 64] = floor32(_1404) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256
                                    mem[floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                                    if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                        mem[_1402 + 96] = floor32(_1404) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288
                                        mem[floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + -mem[64] + 320], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 320
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                                    else:
                                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                        mem[floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                        s = floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288
                                        t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                        while floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288 > s + 32:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_1402 + 96] = floor32(_1404) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                        mem[floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 320], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1404) + _1402 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
            idx = idx + 1
            continue 
    else:
        if marketplaceAddress != msg.sender:
            revert with 0, 'Sender must be auction'
        mem[0] = arg2
        mem[32] = sha3(address(arg1), 4)
        idx = 0
        while idx < stor4[address(arg1)][arg2]:
            if idx >= stor4[address(arg1)][arg2]:
                revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
            mem[0] = stor4[address(arg1)][arg2][idx]
            mem[32] = 3
            if owners[stor4[address(arg1)][arg2][idx]]:
                mem[0] = stor4[address(arg1)][arg2][idx]
                mem[32] = 6
                _594 = mem[64]
                mem[64] = mem[64] + ceil32(stor6[stor4[address(arg1)][arg2][idx]].length) + 32
                mem[_594] = stor6[stor4[address(arg1)][arg2][idx]].length
                mem[0] = sha3(stor4[address(arg1)][arg2][idx], 6)
                mem[_594 + 32] = stor6[stor4[address(arg1)][arg2][idx]]
                s = _594 + 32
                t = sha3(mem[0])
                while _594 + stor6[stor4[address(arg1)][arg2][idx]].length > s:
                    mem[s + 32] = uint256(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                mem[32] = sha3(address(arg1), sha3(stor4[address(arg1)][arg2][idx], 5))
                require stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                if stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]].field_0 > arg3:
                    require stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                    if arg3 > stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                    stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]].field_0 -= arg3
                    _1318 = mem[64]
                    mem[mem[64] + 128] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_768
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = mem[_594]
                    _1320 = mem[_594]
                    s = 0
                    while s < _1320:
                        mem[s + mem[64] + 192] = mem[s + _594 + 32]
                        s = s + 32
                        continue 
                    if not _1320 % 32:
                        mem[mem[64] + 32] = _1320 + 192
                        mem[_1320 + mem[64] + 192] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0:
                            mem[mem[64] + 64] = _1320 + 224
                            mem[_1320 + mem[64] + 224] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                            if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                mem[mem[64] + 96] = _1320 + 256
                                mem[_1320 + mem[64] + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                    emit 0xf3c5254b: Array(len=mem[mem[64] + 160 len _1320 + 32], data=sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0, sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256, sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512), _1320 + 192, _1320 + 224, _1320 + 256, sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_768, msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                    mem[_1320 + mem[64] + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                    s = _1320 + mem[64] + 288
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                    while _1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xf3c5254b: mem[mem[64] len _1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                            else:
                                mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                mem[_1320 + mem[64] + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                s = _1320 + mem[64] + 256
                                t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                while _1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256 > s + 32:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1318 + 96] = _1320 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256
                                mem[_1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                    emit 0xf3c5254b: mem[mem[64] len _1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 288], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                    mem[_1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                    s = _1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                    while _1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xf3c5254b: mem[mem[64] len _1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                        else:
                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2))
                            mem[_1320 + mem[64] + 224] = address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0)
                            s = _1320 + mem[64] + 224
                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)))
                            while _1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 224 > s + 32:
                                mem[s + 32] = address(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1318 + 64] = _1320 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 224
                            mem[_1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 224] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                            if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                mem[_1318 + 96] = _1320 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256
                                mem[_1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                    emit 0xf3c5254b: mem[mem[64] len _1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + -mem[64] + 288], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                    mem[_1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                    s = _1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                    while _1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xf3c5254b: mem[mem[64] len _1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                            else:
                                mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                mem[_1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                s = _1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256
                                t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                while _1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256 > s + 32:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1318 + 96] = _1320 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256
                                mem[_1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                    emit 0xf3c5254b: mem[mem[64] len _1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 288], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                    mem[_1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                    s = _1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                    while _1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xf3c5254b: mem[mem[64] len _1320 + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                    else:
                        mem[floor32(_1320) + mem[64] + 192] = mem[floor32(_1320) + mem[64] + -(_1320 % 32) + 224 len _1320 % 32]
                        mem[mem[64] + 32] = floor32(_1320) + 224
                        mem[floor32(_1320) + mem[64] + 224] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0:
                            mem[mem[64] + 64] = floor32(_1320) + 256
                            mem[floor32(_1320) + mem[64] + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                            if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                mem[mem[64] + 96] = floor32(_1320) + 288
                                mem[floor32(_1320) + mem[64] + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                    emit 0xf3c5254b: Array(len=mem[mem[64] + 160 len floor32(_1320) + 64], data=sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0, sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256, sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512), floor32(_1320) + 224, floor32(_1320) + 256, floor32(_1320) + 288, sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_768, msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                    mem[floor32(_1320) + mem[64] + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                    s = floor32(_1320) + mem[64] + 320
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                    while floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xf3c5254b: mem[mem[64] len floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                            else:
                                mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                mem[floor32(_1320) + mem[64] + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                s = floor32(_1320) + mem[64] + 288
                                t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                while floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288 > s + 32:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1318 + 96] = floor32(_1320) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                mem[floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                    emit 0xf3c5254b: mem[mem[64] len floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 320], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                    mem[floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                    s = floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                    while floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xf3c5254b: mem[mem[64] len floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                        else:
                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2))
                            mem[floor32(_1320) + mem[64] + 256] = address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0)
                            s = floor32(_1320) + mem[64] + 256
                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)))
                            while floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256 > s + 32:
                                mem[s + 32] = address(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1318 + 64] = floor32(_1320) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256
                            mem[floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                            if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                mem[_1318 + 96] = floor32(_1320) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288
                                mem[floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                    emit 0xf3c5254b: mem[mem[64] len floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + -mem[64] + 320], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                    mem[floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                    s = floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 320
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                    while floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xf3c5254b: mem[mem[64] len floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                            else:
                                mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                mem[floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                s = floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288
                                t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                while floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288 > s + 32:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_1318 + 96] = floor32(_1320) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                mem[floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                    emit 0xf3c5254b: mem[mem[64] len floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 320], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                    mem[floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                    s = floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                    while floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                        mem[s + 32] = uint256(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xf3c5254b: mem[mem[64] len floor32(_1320) + _1318 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                else:
                    mem[32] = sha3(address(arg1), sha3(stor4[address(arg1)][arg2][idx], 5))
                    stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] = 0
                    if 1 == sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0:
                        sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0 = 0
                        s = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)))
                        while sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2))) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256 = 0
                        s = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                        while sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512 = 0
                        s = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                        while sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512 > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_768 = 0
                        sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_1024 = 0
                        address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_1280) = 0
                        mem[0] = stor4[address(arg1)][arg2][idx]
                        owners[stor4[address(arg1)][arg2][idx]] = 0
                        mem[32] = 6
                        stor6[stor4[address(arg1)][arg2][idx]] = 0
                        if 31 >= stor6[stor4[address(arg1)][arg2][idx]].length:
                            _2047 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[_594]
                            _2049 = mem[_594]
                            s = 0
                            while s < _2049:
                                mem[s + _2047 + 64] = mem[s + _594 + 32]
                                s = s + 32
                                continue 
                            if not _2049 % 32:
                                emit ItemCanceled(mem[mem[64] len _2049 + _2047 + -mem[64] + 64], owners[stor4[address(arg1)][arg2][idx]]);
                            else:
                                mem[floor32(_2049) + _2047 + 64] = mem[floor32(_2049) + _2047 + -(_2049 % 32) + 96 len _2049 % 32]
                                emit ItemCanceled(mem[mem[64] len floor32(_2049) + _2047 + -mem[64] + 96], owners[stor4[address(arg1)][arg2][idx]]);
                        else:
                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], 6)
                            s = sha3(sha3(stor4[address(arg1)][arg2][idx], 6))
                            while sha3(sha3(stor4[address(arg1)][arg2][idx], 6)) + (stor6[stor4[address(arg1)][arg2][idx]].length + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            _2194 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[_594]
                            _2196 = mem[_594]
                            s = 0
                            while s < _2196:
                                mem[s + _2194 + 64] = mem[s + _594 + 32]
                                s = s + 32
                                continue 
                            if not _2196 % 32:
                                emit ItemCanceled(mem[mem[64] len _2196 + _2194 + -mem[64] + 64], owners[stor4[address(arg1)][arg2][idx]]);
                            else:
                                mem[floor32(_2196) + _2194 + 64] = mem[floor32(_2196) + _2194 + -(_2196 % 32) + 96 len _2196 % 32]
                                emit ItemCanceled(mem[mem[64] len floor32(_2196) + _2194 + -mem[64] + 96], owners[stor4[address(arg1)][arg2][idx]]);
                    else:
                        if stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] >= sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0 - 1:
                            require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                            address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0].field_0) = 0
                            sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0--
                            require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                            stor[('array', 1, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256].field_0 = 0
                            sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256--
                            require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                            stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512].field_0 = 0
                            sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512--
                            _1312 = mem[64]
                            mem[mem[64] + 128] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_768
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = mem[_594]
                            _1314 = mem[_594]
                            s = 0
                            while s < _1314:
                                mem[s + mem[64] + 192] = mem[s + _594 + 32]
                                s = s + 32
                                continue 
                            if not _1314 % 32:
                                mem[_1312 + 32] = _1314 + 192
                                mem[_1314 + _1312 + 192] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0:
                                    mem[_1312 + 64] = _1314 + 224
                                    mem[_1314 + _1312 + 224] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                                    if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                        mem[_1312 + 96] = _1314 + 256
                                        mem[_1314 + _1312 + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len _1314 + _1312 + -mem[64] + 288], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[_1314 + _1312 + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = _1314 + _1312 + 288
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while _1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len _1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                                    else:
                                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                        mem[_1314 + _1312 + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                        s = _1314 + _1312 + 256
                                        t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                        while _1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256 > s + 32:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_1312 + 96] = _1314 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256
                                        mem[_1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len _1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 288], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[_1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = _1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while _1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len _1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2))
                                    mem[_1314 + _1312 + 224] = address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0)
                                    s = _1314 + _1312 + 224
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)))
                                    while _1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 224 > s + 32:
                                        mem[s + 32] = address(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_1312 + 64] = _1314 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 224
                                    mem[_1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 224] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                                    if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                        mem[_1312 + 96] = _1314 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256
                                        mem[_1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len _1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + -mem[64] + 288], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[_1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = _1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while _1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len _1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                                    else:
                                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                        mem[_1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                        s = _1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256
                                        t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                        while _1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256 > s + 32:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_1312 + 96] = _1314 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256
                                        mem[_1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len _1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 288], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[_1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = _1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while _1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len _1314 + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                            else:
                                mem[floor32(_1314) + _1312 + 192] = mem[floor32(_1314) + _1312 + -(_1314 % 32) + 224 len _1314 % 32]
                                mem[_1312 + 32] = floor32(_1314) + 224
                                mem[floor32(_1314) + _1312 + 224] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0:
                                    mem[_1312 + 64] = floor32(_1314) + 256
                                    mem[floor32(_1314) + _1312 + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                                    if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                        mem[_1312 + 96] = floor32(_1314) + 288
                                        mem[floor32(_1314) + _1312 + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1314) + _1312 + -mem[64] + 320], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[floor32(_1314) + _1312 + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = floor32(_1314) + _1312 + 320
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                                    else:
                                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                        mem[floor32(_1314) + _1312 + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                        s = floor32(_1314) + _1312 + 288
                                        t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                        while floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288 > s + 32:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_1312 + 96] = floor32(_1314) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                        mem[floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 320], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2))
                                    mem[floor32(_1314) + _1312 + 256] = address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0)
                                    s = floor32(_1314) + _1312 + 256
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)))
                                    while floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256 > s + 32:
                                        mem[s + 32] = address(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_1312 + 64] = floor32(_1314) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256
                                    mem[floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                                    if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                        mem[_1312 + 96] = floor32(_1314) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288
                                        mem[floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + -mem[64] + 320], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 320
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                                    else:
                                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                        mem[floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                        s = floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288
                                        t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                        while floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288 > s + 32:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_1312 + 96] = floor32(_1314) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                        mem[floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 320], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1314) + _1312 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                        else:
                            require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0 - 1 < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                            require stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                            address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]].field_0) = address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0].field_0)
                            require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256 - 1 < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                            require stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                            stor[('array', 1, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]].field_0 = stor[('array', 1, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256].field_0
                            require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512 - 1 < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                            require stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                            stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]].field_0 = stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512].field_0
                            require stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                            require stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                            mem[32] = sha3(address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]].field_0), sha3(stor4[address(arg1)][arg2][idx], 5))
                            stor5[stor4[address(arg1)][arg2][idx]][address(stor2[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]].field_0)][stor[('array', 1, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'stor2', 2)))) + stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]].field_0] = stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]
                            require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                            address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0].field_0) = 0
                            sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0--
                            require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                            stor[('array', 1, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256].field_0 = 0
                            sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256--
                            require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                            stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512].field_0 = 0
                            sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512--
                            _1407 = mem[64]
                            mem[mem[64] + 128] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_768
                            mem[mem[64]] = 160
                            mem[mem[64] + 160] = mem[_594]
                            _1409 = mem[_594]
                            s = 0
                            while s < _1409:
                                mem[s + mem[64] + 192] = mem[s + _594 + 32]
                                s = s + 32
                                continue 
                            if not _1409 % 32:
                                mem[mem[64] + 32] = _1409 + 192
                                mem[_1409 + mem[64] + 192] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0:
                                    mem[mem[64] + 64] = _1409 + 224
                                    mem[_1409 + mem[64] + 224] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                                    if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                        mem[mem[64] + 96] = _1409 + 256
                                        mem[_1409 + mem[64] + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: Array(len=mem[mem[64] + 160 len _1409 + 32], data=sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0, sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256, sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512), _1409 + 192, _1409 + 224, _1409 + 256, sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_768, msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[_1409 + mem[64] + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = _1409 + mem[64] + 288
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while _1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len _1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                                    else:
                                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                        mem[_1409 + mem[64] + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                        s = _1409 + mem[64] + 256
                                        t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                        while _1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256 > s + 32:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_1407 + 96] = _1409 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256
                                        mem[_1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len _1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 288], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[_1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = _1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while _1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len _1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2))
                                    mem[_1409 + mem[64] + 224] = address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0)
                                    s = _1409 + mem[64] + 224
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)))
                                    while _1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 224 > s + 32:
                                        mem[s + 32] = address(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_1407 + 64] = _1409 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 224
                                    mem[_1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 224] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                                    if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                        mem[_1407 + 96] = _1409 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256
                                        mem[_1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len _1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + -mem[64] + 288], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[_1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = _1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while _1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len _1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                                    else:
                                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                        mem[_1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                        s = _1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256
                                        t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                        while _1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256 > s + 32:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_1407 + 96] = _1409 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256
                                        mem[_1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len _1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 288], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[_1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = _1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while _1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 288 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len _1409 + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 288], msg.sender
                            else:
                                mem[floor32(_1409) + mem[64] + 192] = mem[floor32(_1409) + mem[64] + -(_1409 % 32) + 224 len _1409 % 32]
                                mem[mem[64] + 32] = floor32(_1409) + 224
                                mem[floor32(_1409) + mem[64] + 224] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                                if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0:
                                    mem[mem[64] + 64] = floor32(_1409) + 256
                                    mem[floor32(_1409) + mem[64] + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                                    if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                        mem[mem[64] + 96] = floor32(_1409) + 288
                                        mem[floor32(_1409) + mem[64] + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: Array(len=mem[mem[64] + 160 len floor32(_1409) + 64], data=sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0, sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256, sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512), floor32(_1409) + 224, floor32(_1409) + 256, floor32(_1409) + 288, sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_768, msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[floor32(_1409) + mem[64] + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = floor32(_1409) + mem[64] + 320
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                                    else:
                                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                        mem[floor32(_1409) + mem[64] + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                        s = floor32(_1409) + mem[64] + 288
                                        t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                        while floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288 > s + 32:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_1407 + 96] = floor32(_1409) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                        mem[floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 320], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                                else:
                                    mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2))
                                    mem[floor32(_1409) + mem[64] + 256] = address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0)
                                    s = floor32(_1409) + mem[64] + 256
                                    t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)))
                                    while floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256 > s + 32:
                                        mem[s + 32] = address(stor1[t])
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_1407 + 64] = floor32(_1409) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256
                                    mem[floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 256] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                                    if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256:
                                        mem[_1407 + 96] = floor32(_1409) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288
                                        mem[floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + -mem[64] + 320], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 320
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
                                    else:
                                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1
                                        mem[floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][1].field_0
                                        s = floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + 288
                                        t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 1)
                                        while floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288 > s + 32:
                                            mem[s + 32] = uint256(stor1[t])
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_1407 + 96] = floor32(_1409) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288
                                        mem[floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 288] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                                        if not sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512:
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + -mem[64] + 320], msg.sender
                                        else:
                                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                                            mem[floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320] = sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][2].field_0
                                            s = floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + 320
                                            t = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2)
                                            while floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + 320 > s + 32:
                                                mem[s + 32] = uint256(stor1[t])
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            emit 0xf3c5254b: mem[mem[64] len floor32(_1409) + _1407 + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256) + (32 * sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512) + -mem[64] + 320], msg.sender
            idx = idx + 1
            continue 
    stor4[address(arg1)][arg2] = 0
    idx = 0
    while stor4[address(arg1)][arg2] > idx:
        stor4[address(arg1)][arg2][idx] = 0
        idx = idx + 1
        continue 
}



}
