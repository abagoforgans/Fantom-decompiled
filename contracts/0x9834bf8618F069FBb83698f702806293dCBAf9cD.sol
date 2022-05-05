contract main {




// =====================  Runtime code  =====================


#
#  - sub_2e792905(?)
#  - sub_84328e20(?)
#
address owner;
array of uint256 stor1;
array of struct sub_aa3a6b36;
mapping of address owners;
mapping of struct sub_a5851902;
array of address stor5;
address sub_3740ebb3Address;
address auctionAddress;

function platformFee() {
    return stor5.length
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
    return address(sub_a5851902[arg1][arg2].field_0), 
           uint256(sub_a5851902[arg1][arg2].field_256),
           uint256(sub_a5851902[arg1][arg2].field_512)
}

function sub_aa3a6b36(?) {
    require calldata.size - 4 >= 64
    return uint256(sub_aa3a6b36[arg1][arg2].field_768), 
           uint256(sub_aa3a6b36[arg1][arg2].field_1024),
           address(sub_aa3a6b36[arg1][arg2].field_1280)
}

function owners(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return address(owners[arg1])
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

function validateCancelListing(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if auctionAddress != msg.sender:
        revert with 0, 'Sender must be auction'
}

function updatePlatformFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor5.length = arg1
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
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    address(sub_a5851902[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][address(msg.sender)].field_0) = 0
    uint256(sub_a5851902[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][address(msg.sender)].field_256) = 0
    uint256(sub_a5851902[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][address(msg.sender)].field_512) = 0
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    emit OfferCanceled(msg.sender, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]));
}

function sub_201d121e(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if stor1.length == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1.length = 2
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    if uint256(sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])].field_768) <= 0:
        revert with 0, 'Not listed bundle.'
    uint256(sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])].field_768) = arg2
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    emit 0x16d8aece: arg2, msg.sender, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32])
    stor1.length = 1
}

function sub_943f2261(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if stor1.length == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1.length = 2
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    if uint256(sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])].field_768) <= 0:
        revert with 0, 'Not listed bundle.'
    mem[arg1.length + ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    uint256(sub_aa3a6b36[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_0) = 0
    idx = 0
    while uint256(sub_aa3a6b36[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_0) > idx:
        uint256(sub_aa3a6b36[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))][idx].field_0) = 0
        idx = idx + 1
        continue 
    uint256(sub_aa3a6b36[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_256) = 0
    idx = 0
    while uint256(sub_aa3a6b36[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_256) > idx:
        uint256(sub_aa3a6b36[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))][idx + 1].field_0) = 0
        idx = idx + 1
        continue 
    uint256(sub_aa3a6b36[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_512) = 0
    idx = 0
    while uint256(sub_aa3a6b36[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_512) > idx:
        uint256(sub_aa3a6b36[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))][idx + 2].field_0) = 0
        idx = idx + 1
        continue 
    uint256(sub_aa3a6b36[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_768) = 0
    uint256(sub_aa3a6b36[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_1024) = 0
    address(sub_aa3a6b36[address(msg.sender)][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))].field_1280) = 0
    address(owners[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 192 len arg1.length % 32]]) = 0
    mem[(2 * arg1.length) + ceil32(arg1.length) + 192] = 32
    mem[(2 * arg1.length) + ceil32(arg1.length) + 224] = arg1.length
    mem[(2 * arg1.length) + ceil32(arg1.length) + 256 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit ItemCanceled(mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len (4 * arg1.length) + 64], msg.sender);
    else:
        mem[floor32(arg1.length) + (2 * arg1.length) + ceil32(arg1.length) + 256] = mem[floor32(arg1.length) + (2 * arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 288 len arg1.length % 32]
        emit ItemCanceled(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * arg1.length) + (2 * ceil32(arg1.length)) + 256 len floor32(arg1.length) + -ceil32(arg1.length) + 32]), msg.sender);
    stor1.length = 1
}

function sub_e831eebf(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    _610 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    if not address(owners[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]]):
        revert with 0, 'Invalid Bundle ID.'
    if arg4 <= block.timestamp:
        revert with 0, 'Invalid expiration'
    mem[arg1.length + ceil32(arg1.length) + 160] = 68
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
        staticcall arg2.allowance(address arg1, address arg2) with:
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
            while idx < uint256(sub_aa3a6b36[address(stor3[_610])][_610].field_0):
                require idx < uint256(sub_aa3a6b36[address(stor3[_610])][_610].field_256)
                mem[0] = sha3(_610, sha3(address(owners[_610]), 2)) + 1
                mem[arg1.length + ceil32(arg1.length) + 488] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                mem[arg1.length + ceil32(arg1.length) + 492] = address(sub_aa3a6b36[address(stor3[_610])][_610][idx].field_0)
                mem[arg1.length + ceil32(arg1.length) + 524] = uint256(sub_aa3a6b36[address(stor3[_610])][_610][idx + 1].field_0)
                require ext_code.size(auctionAddress)
                call auctionAddress.0x4ffccb85 with:
                     gas gas_remaining wei
                    args address(sub_aa3a6b36[address(stor3[_610])][_610][idx].field_0), uint256(sub_aa3a6b36[address(stor3[_610])][_610][idx + 1].field_0)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            address(sub_a5851902[_610][address(msg.sender)].field_0) = arg2
            uint256(sub_a5851902[_610][address(msg.sender)].field_256) = arg3
            uint256(sub_a5851902[_610][address(msg.sender)].field_512) = arg4
            mem[arg1.length + ceil32(arg1.length) + 584 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 616 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            emit OfferCreated(address(arg2), arg3, arg4, msg.sender, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 584 len arg1.length % 32]));
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
            while idx < uint256(sub_aa3a6b36[address(stor3[_610])][_610].field_0):
                require idx < uint256(sub_aa3a6b36[address(stor3[_610])][_610].field_256)
                mem[0] = sha3(_610, sha3(address(owners[_610]), 2)) + 1
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 489] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 493] = address(sub_aa3a6b36[address(stor3[_610])][_610][idx].field_0)
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 525] = uint256(sub_aa3a6b36[address(stor3[_610])][_610][idx + 1].field_0)
                require ext_code.size(auctionAddress)
                call auctionAddress.0x4ffccb85 with:
                     gas gas_remaining wei
                    args address(sub_aa3a6b36[address(stor3[_610])][_610][idx].field_0), uint256(sub_aa3a6b36[address(stor3[_610])][_610][idx + 1].field_0)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            address(sub_a5851902[_610][address(msg.sender)].field_0) = arg2
            uint256(sub_a5851902[_610][address(msg.sender)].field_256) = arg3
            uint256(sub_a5851902[_610][address(msg.sender)].field_512) = arg4
            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 585 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + ceil32(return_data.size) + 617 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            emit OfferCreated(address(arg2), arg3, arg4, msg.sender, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 585 len arg1.length % 32]));
    else:
        mem[arg1.length + ceil32(arg1.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[arg1.length + ceil32(arg1.length) + 356]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 435 len 22]
        require ext_code.size(arg2)
        staticcall arg2.allowance(address arg1, address arg2) with:
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
            while idx < uint256(sub_aa3a6b36[address(stor3[_610])][_610].field_0):
                require idx < uint256(sub_aa3a6b36[address(stor3[_610])][_610].field_256)
                mem[0] = sha3(_610, sha3(address(owners[_610]), 2)) + 1
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 489] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 493] = address(sub_aa3a6b36[address(stor3[_610])][_610][idx].field_0)
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 525] = uint256(sub_aa3a6b36[address(stor3[_610])][_610][idx + 1].field_0)
                require ext_code.size(auctionAddress)
                call auctionAddress.0x4ffccb85 with:
                     gas gas_remaining wei
                    args address(sub_aa3a6b36[address(stor3[_610])][_610][idx].field_0), uint256(sub_aa3a6b36[address(stor3[_610])][_610][idx + 1].field_0)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            address(sub_a5851902[_610][address(msg.sender)].field_0) = arg2
            uint256(sub_a5851902[_610][address(msg.sender)].field_256) = arg3
            uint256(sub_a5851902[_610][address(msg.sender)].field_512) = arg4
            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 585 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + ceil32(return_data.size) + 617 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            emit OfferCreated(address(arg2), arg3, arg4, msg.sender, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + floor32(arg1.length) + 585 len arg1.length % 32]));
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
            while idx < uint256(sub_aa3a6b36[address(stor3[_610])][_610].field_0):
                require idx < uint256(sub_aa3a6b36[address(stor3[_610])][_610].field_256)
                mem[0] = sha3(_610, sha3(address(owners[_610]), 2)) + 1
                mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 490] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 494] = address(sub_aa3a6b36[address(stor3[_610])][_610][idx].field_0)
                mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 526] = uint256(sub_aa3a6b36[address(stor3[_610])][_610][idx + 1].field_0)
                require ext_code.size(auctionAddress)
                call auctionAddress.0x4ffccb85 with:
                     gas gas_remaining wei
                    args address(sub_aa3a6b36[address(stor3[_610])][_610][idx].field_0), uint256(sub_aa3a6b36[address(stor3[_610])][_610][idx + 1].field_0)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            address(sub_a5851902[_610][address(msg.sender)].field_0) = arg2
            uint256(sub_a5851902[_610][address(msg.sender)].field_256) = arg3
            uint256(sub_a5851902[_610][address(msg.sender)].field_512) = arg4
            mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 586 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 618 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            emit OfferCreated(address(arg2), arg3, arg4, msg.sender, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + floor32(arg1.length) + 586 len arg1.length % 32]));
}

function buyItem(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if stor1.length == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1.length = 2
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[64] = arg1.length + ceil32(arg1.length) + 160
    _3494 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    _3496 = sha3(sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]), 3)
    if not address(owners[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]]):
        revert with 0, 'Invalid Bundle ID.'
    mem[32] = sha3(address(owners[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]]), 2)
    _3498 = sha3(sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]), sha3(address(owners[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]]), 2))
    if not uint256(sub_aa3a6b36[address(stor3[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]])][sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])].field_768):
        revert with 0, 'Not listed bundle.'
    idx = 0
    while idx < uint256(stor[_3498]):
        require ext_code.size(address(stor[sha3(_3498) + idx]))
        staticcall address(stor[sha3(_3498) + idx]).supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < uint256(stor[_3498])
        if ext_call.return_data[0]:
            require idx < stor1[_3498]
            mem[0] = _3498 + 1
            mem[arg1.length + ceil32(arg1.length) + 164] = uint256(stor[sha3(_3498 + 1) + idx])
            require ext_code.size(address(stor[sha3(_3498) + idx]))
            staticcall address(stor[sha3(_3498) + idx]).ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args uint256(stor[sha3(_3498 + 1) + idx])
            mem[arg1.length + ceil32(arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != address(stor[_3496]):
                revert with 0, 'Not owning the item.'
        else:
            mem[0] = _3498
            mem[arg1.length + ceil32(arg1.length) + 164] = 0xd9b67a2600000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(stor[sha3(_3498) + idx]))
            staticcall address(stor[sha3(_3498) + idx]).supportsInterface(bytes4 arg1) with:
                    gas gas_remaining wei
                   args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
            mem[arg1.length + ceil32(arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require idx < uint256(stor[_3498])
                require idx < uint256(sub_aa3a6b36[_3498].field_0)
                require idx < stor1[_3498]
                mem[0] = _3498 + 1
                mem[arg1.length + ceil32(arg1.length) + 164] = address(stor[_3496])
                mem[arg1.length + ceil32(arg1.length) + 196] = uint256(stor[sha3(_3498 + 1) + idx])
                require ext_code.size(address(stor[sha3(_3498) + idx]))
                staticcall address(stor[sha3(_3498) + idx]).balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(stor[_3496]), uint256(stor[sha3(_3498 + 1) + idx])
                mem[arg1.length + ceil32(arg1.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < uint256(stor[sha3(_3498 + 2) + idx]):
                    revert with 0, 'Not owning the item.'
        idx = idx + 1
        continue 
    if block.timestamp < uint256(sub_a5851902[_3498].field_0):
        revert with 0, 'Bundle is not buyable yet.'
    if msg.value < uint256(owners[_3498]):
        revert with 0, 'Not enough amount to buy item.'
    if not stor5[_3498]:
        if not msg.value:
            call sub_3740ebb3Address with:
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                38,
                                0x6c46616e746f6d4d61726b6574706c6163653a20466565207472616e73666572206661696c65,
                                mem[arg1.length + ceil32(arg1.length) + 266 len 26]
                if 0 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call address(stor[_3496]) with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7246616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + 268 len 24]
                    idx = 0
                    while idx < uint256(stor[_3498]):
                        require ext_code.size(address(stor[sha3(_3498) + idx]))
                        staticcall address(stor[sha3(_3498) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3498])
                        require idx < stor1[_3498]
                        if ext_call.return_data[0]:
                            mem[0] = _3498 + 1
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3498].field_0)
                            mem[0] = _3498 + 2
                            _10702 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10702] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3498 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _10702 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx]), uint256(stor[sha3(_3498 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s + 1].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3496])][_3494].field_1280) = 0
                    uint256(owners[_3498]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) = uint256(stor[_3498])
                    if not uint256(stor[_3498]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _28571 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var96001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _31264 = sha3(mem[mem[64] len _28571])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _31264
                                _31340 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _31340]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31641 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33969 = sha3(mem[mem[64] len _31641])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _33969
                                _34262 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34262]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31644 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33974 = sha3(mem[mem[64] len _31644])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _33974
                                _34266 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34266]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34827 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36238 = sha3(mem[mem[64] len _34827])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36238
                                _36664 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36664]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3498]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494][s].field_0) = uint256(stor[idx + sha3(_3498)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3498])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31647 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33979 = sha3(mem[mem[64] len _31647])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _33979
                                _34270 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34270]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34832 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36248 = sha3(mem[mem[64] len _34832])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36248
                                _36670 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36670]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34835 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36253 = sha3(mem[mem[64] len _34835])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36253
                                _36674 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36674]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _37189 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37643 = sha3(mem[mem[64] len _37189])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _37643
                                _37914 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _37914]));
                else:
                    mem[64] = arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 161
                    mem[arg1.length + ceil32(arg1.length) + 160] = return_data.size
                    mem[arg1.length + ceil32(arg1.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7246616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 269 len 24]
                    idx = 0
                    while idx < uint256(stor[_3498]):
                        require ext_code.size(address(stor[sha3(_3498) + idx]))
                        staticcall address(stor[sha3(_3498) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3498])
                        require idx < stor1[_3498]
                        if ext_call.return_data[0]:
                            mem[0] = _3498 + 1
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3498].field_0)
                            mem[0] = _3498 + 2
                            _10707 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10707] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3498 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _10707 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx]), uint256(stor[sha3(_3498 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s + 1].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3496])][_3494].field_1280) = 0
                    uint256(owners[_3498]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) = uint256(stor[_3498])
                    if not uint256(stor[_3498]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _28575 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var96001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _31269 = sha3(mem[mem[64] len _28575])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _31269
                                _31344 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _31344]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31652 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33989 = sha3(mem[mem[64] len _31652])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _33989
                                _34276 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34276]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31655 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33994 = sha3(mem[mem[64] len _31655])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _33994
                                _34280 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34280]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34842 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36268 = sha3(mem[mem[64] len _34842])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36268
                                _36682 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36682]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3498]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494][s].field_0) = uint256(stor[idx + sha3(_3498)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3498])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31658 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33999 = sha3(mem[mem[64] len _31658])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _33999
                                _34284 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34284]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34847 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36278 = sha3(mem[mem[64] len _34847])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36278
                                _36688 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36688]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34850 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36283 = sha3(mem[mem[64] len _34850])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36283
                                _36692 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36692]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _37198 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37663 = sha3(mem[mem[64] len _37198])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _37663
                                _37924 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _37924]));
            else:
                mem[64] = arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 161
                mem[arg1.length + ceil32(arg1.length) + 160] = return_data.size
                mem[arg1.length + ceil32(arg1.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                38,
                                0x6c46616e746f6d4d61726b6574706c6163653a20466565207472616e73666572206661696c65,
                                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 267 len 26]
                if 0 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call address(stor[_3496]) with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7246616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 269 len 24]
                    idx = 0
                    while idx < uint256(stor[_3498]):
                        require ext_code.size(address(stor[sha3(_3498) + idx]))
                        staticcall address(stor[sha3(_3498) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3498])
                        require idx < stor1[_3498]
                        if ext_call.return_data[0]:
                            mem[0] = _3498 + 1
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3498].field_0)
                            mem[0] = _3498 + 2
                            _10712 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10712] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3498 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _10712 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx]), uint256(stor[sha3(_3498 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s + 1].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3496])][_3494].field_1280) = 0
                    uint256(owners[_3498]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) = uint256(stor[_3498])
                    if not uint256(stor[_3498]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _28579 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var96001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _31274 = sha3(mem[mem[64] len _28579])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _31274
                                _31348 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _31348]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31663 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34009 = sha3(mem[mem[64] len _31663])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34009
                                _34290 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34290]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31666 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34014 = sha3(mem[mem[64] len _31666])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34014
                                _34294 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34294]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34857 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36298 = sha3(mem[mem[64] len _34857])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36298
                                _36700 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36700]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3498]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494][s].field_0) = uint256(stor[idx + sha3(_3498)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3498])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31669 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34019 = sha3(mem[mem[64] len _31669])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34019
                                _34298 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34298]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34862 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36308 = sha3(mem[mem[64] len _34862])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36308
                                _36706 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36706]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34865 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36313 = sha3(mem[mem[64] len _34865])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36313
                                _36710 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36710]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _37207 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37683 = sha3(mem[mem[64] len _37207])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _37683
                                _37934 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _37934]));
                else:
                    mem[64] = arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 162
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 161] = return_data.size
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7246616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 270 len 24]
                    idx = 0
                    while idx < uint256(stor[_3498]):
                        require ext_code.size(address(stor[sha3(_3498) + idx]))
                        staticcall address(stor[sha3(_3498) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3498])
                        require idx < stor1[_3498]
                        if ext_call.return_data[0]:
                            mem[0] = _3498 + 1
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3498].field_0)
                            mem[0] = _3498 + 2
                            _10717 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10717] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3498 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _10717 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx]), uint256(stor[sha3(_3498 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s + 1].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3496])][_3494].field_1280) = 0
                    uint256(owners[_3498]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) = uint256(stor[_3498])
                    if not uint256(stor[_3498]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _28583 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var96001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _31279 = sha3(mem[mem[64] len _28583])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _31279
                                _31352 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _31352]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31674 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34029 = sha3(mem[mem[64] len _31674])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34029
                                _34304 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34304]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31677 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34034 = sha3(mem[mem[64] len _31677])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34034
                                _34308 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34308]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34872 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36328 = sha3(mem[mem[64] len _34872])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36328
                                _36718 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36718]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3498]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494][s].field_0) = uint256(stor[idx + sha3(_3498)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3498])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31680 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34039 = sha3(mem[mem[64] len _31680])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34039
                                _34312 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34312]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34877 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36338 = sha3(mem[mem[64] len _34877])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36338
                                _36724 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36724]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34880 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36343 = sha3(mem[mem[64] len _34880])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36343
                                _36728 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36728]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _37216 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37703 = sha3(mem[mem[64] len _37216])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _37703
                                _37944 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _37944]));
        else:
            if stor5.length * msg.value / msg.value != stor5.length:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[arg1.length + ceil32(arg1.length) + 261 len 31]
            call sub_3740ebb3Address with:
               value stor5.length * msg.value / 1000 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                38,
                                0x6c46616e746f6d4d61726b6574706c6163653a20466565207472616e73666572206661696c65,
                                mem[arg1.length + ceil32(arg1.length) + 266 len 26]
                if stor5.length * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call address(stor[_3496]) with:
                   value msg.value - (stor5.length * msg.value / 1000) wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7246616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + 268 len 24]
                    idx = 0
                    while idx < uint256(stor[_3498]):
                        require ext_code.size(address(stor[sha3(_3498) + idx]))
                        staticcall address(stor[sha3(_3498) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3498])
                        require idx < stor1[_3498]
                        if ext_call.return_data[0]:
                            mem[0] = _3498 + 1
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3498].field_0)
                            mem[0] = _3498 + 2
                            _10682 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10682] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3498 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _10682 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx]), uint256(stor[sha3(_3498 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s + 1].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3496])][_3494].field_1280) = 0
                    uint256(owners[_3498]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) = uint256(stor[_3498])
                    if not uint256(stor[_3498]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _28555 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var98001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _31244 = sha3(mem[mem[64] len _28555])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _31244
                                _31324 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _31324]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31597 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33889 = sha3(mem[mem[64] len _31597])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _33889
                                _34206 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34206]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31600 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33894 = sha3(mem[mem[64] len _31600])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _33894
                                _34210 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34210]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34767 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36118 = sha3(mem[mem[64] len _34767])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36118
                                _36592 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36592]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3498]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494][s].field_0) = uint256(stor[idx + sha3(_3498)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3498])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31603 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33899 = sha3(mem[mem[64] len _31603])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _33899
                                _34214 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34214]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34772 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36128 = sha3(mem[mem[64] len _34772])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36128
                                _36598 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36598]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34775 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36133 = sha3(mem[mem[64] len _34775])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36133
                                _36602 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36602]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _37153 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37563 = sha3(mem[mem[64] len _37153])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _37563
                                _37874 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _37874]));
                else:
                    mem[64] = arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 161
                    mem[arg1.length + ceil32(arg1.length) + 160] = return_data.size
                    mem[arg1.length + ceil32(arg1.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7246616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 269 len 24]
                    idx = 0
                    while idx < uint256(stor[_3498]):
                        require ext_code.size(address(stor[sha3(_3498) + idx]))
                        staticcall address(stor[sha3(_3498) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3498])
                        require idx < stor1[_3498]
                        if ext_call.return_data[0]:
                            mem[0] = _3498 + 1
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3498].field_0)
                            mem[0] = _3498 + 2
                            _10687 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10687] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3498 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _10687 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx]), uint256(stor[sha3(_3498 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s + 1].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3496])][_3494].field_1280) = 0
                    uint256(owners[_3498]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) = uint256(stor[_3498])
                    if not uint256(stor[_3498]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _28559 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var98001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _31249 = sha3(mem[mem[64] len _28559])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _31249
                                _31328 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _31328]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31608 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33909 = sha3(mem[mem[64] len _31608])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _33909
                                _34220 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34220]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31611 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33914 = sha3(mem[mem[64] len _31611])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _33914
                                _34224 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34224]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34782 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36148 = sha3(mem[mem[64] len _34782])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36148
                                _36610 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36610]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3498]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494][s].field_0) = uint256(stor[idx + sha3(_3498)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3498])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31614 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33919 = sha3(mem[mem[64] len _31614])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _33919
                                _34228 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34228]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34787 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36158 = sha3(mem[mem[64] len _34787])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36158
                                _36616 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36616]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34790 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36163 = sha3(mem[mem[64] len _34790])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36163
                                _36620 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36620]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _37162 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37583 = sha3(mem[mem[64] len _37162])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _37583
                                _37884 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _37884]));
            else:
                mem[64] = arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 161
                mem[arg1.length + ceil32(arg1.length) + 160] = return_data.size
                mem[arg1.length + ceil32(arg1.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                38,
                                0x6c46616e746f6d4d61726b6574706c6163653a20466565207472616e73666572206661696c65,
                                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 267 len 26]
                if stor5.length * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call address(stor[_3496]) with:
                   value msg.value - (stor5.length * msg.value / 1000) wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7246616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 269 len 24]
                    idx = 0
                    while idx < uint256(stor[_3498]):
                        require ext_code.size(address(stor[sha3(_3498) + idx]))
                        staticcall address(stor[sha3(_3498) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3498])
                        require idx < stor1[_3498]
                        if ext_call.return_data[0]:
                            mem[0] = _3498 + 1
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3498].field_0)
                            mem[0] = _3498 + 2
                            _10692 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10692] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3498 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _10692 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx]), uint256(stor[sha3(_3498 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s + 1].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3496])][_3494].field_1280) = 0
                    uint256(owners[_3498]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) = uint256(stor[_3498])
                    if not uint256(stor[_3498]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _28563 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var98001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _31254 = sha3(mem[mem[64] len _28563])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _31254
                                _31332 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _31332]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31619 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33929 = sha3(mem[mem[64] len _31619])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _33929
                                _34234 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34234]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31622 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33934 = sha3(mem[mem[64] len _31622])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _33934
                                _34238 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34238]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34797 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36178 = sha3(mem[mem[64] len _34797])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36178
                                _36628 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36628]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3498]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494][s].field_0) = uint256(stor[idx + sha3(_3498)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3498])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31625 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33939 = sha3(mem[mem[64] len _31625])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _33939
                                _34242 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34242]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34802 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36188 = sha3(mem[mem[64] len _34802])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36188
                                _36634 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36634]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34805 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36193 = sha3(mem[mem[64] len _34805])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36193
                                _36638 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36638]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _37171 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37603 = sha3(mem[mem[64] len _37171])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _37603
                                _37894 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _37894]));
                else:
                    mem[64] = arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 162
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 161] = return_data.size
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7246616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 270 len 24]
                    idx = 0
                    while idx < uint256(stor[_3498]):
                        require ext_code.size(address(stor[sha3(_3498) + idx]))
                        staticcall address(stor[sha3(_3498) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3498])
                        require idx < stor1[_3498]
                        if ext_call.return_data[0]:
                            mem[0] = _3498 + 1
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3498].field_0)
                            mem[0] = _3498 + 2
                            _10697 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10697] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3498 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _10697 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx]), uint256(stor[sha3(_3498 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s + 1].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3496])][_3494].field_1280) = 0
                    uint256(owners[_3498]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) = uint256(stor[_3498])
                    if not uint256(stor[_3498]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _28567 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var98001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _31259 = sha3(mem[mem[64] len _28567])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _31259
                                _31336 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _31336]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31630 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33949 = sha3(mem[mem[64] len _31630])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _33949
                                _34248 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34248]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31633 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33954 = sha3(mem[mem[64] len _31633])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _33954
                                _34252 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34252]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34812 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36208 = sha3(mem[mem[64] len _34812])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36208
                                _36646 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36646]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3498]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494][s].field_0) = uint256(stor[idx + sha3(_3498)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3498])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31636 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33959 = sha3(mem[mem[64] len _31636])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _33959
                                _34256 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34256]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34817 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36218 = sha3(mem[mem[64] len _34817])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36218
                                _36652 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36652]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34820 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36223 = sha3(mem[mem[64] len _34820])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36223
                                _36656 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36656]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _37180 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37623 = sha3(mem[mem[64] len _37180])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _37623
                                _37904 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _37904]));
    else:
        if stor5[_3498] != msg.sender:
            revert with 0, 
                        32,
                        33,
                        0x65596f7520617265206e6f7420656c696761626c6520746f20627579206974656d,
                        mem[arg1.length + ceil32(arg1.length) + 261 len 31]
        if not msg.value:
            call sub_3740ebb3Address with:
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                38,
                                0x6c46616e746f6d4d61726b6574706c6163653a20466565207472616e73666572206661696c65,
                                mem[arg1.length + ceil32(arg1.length) + 266 len 26]
                if 0 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call address(stor[_3496]) with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7246616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + 268 len 24]
                    idx = 0
                    while idx < uint256(stor[_3498]):
                        require ext_code.size(address(stor[sha3(_3498) + idx]))
                        staticcall address(stor[sha3(_3498) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3498])
                        require idx < stor1[_3498]
                        if ext_call.return_data[0]:
                            mem[0] = _3498 + 1
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3498].field_0)
                            mem[0] = _3498 + 2
                            _10742 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10742] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3498 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _10742 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx]), uint256(stor[sha3(_3498 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s + 1].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3496])][_3494].field_1280) = 0
                    uint256(owners[_3498]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) = uint256(stor[_3498])
                    if not uint256(stor[_3498]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _28603 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var99001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _31304 = sha3(mem[mem[64] len _28603])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _31304
                                _31372 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _31372]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31729 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34129 = sha3(mem[mem[64] len _31729])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34129
                                _34374 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34374]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31732 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34134 = sha3(mem[mem[64] len _31732])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34134
                                _34378 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34378]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34947 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36478 = sha3(mem[mem[64] len _34947])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36478
                                _36808 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36808]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3498]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494][s].field_0) = uint256(stor[idx + sha3(_3498)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3498])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31735 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34139 = sha3(mem[mem[64] len _31735])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34139
                                _34382 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34382]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34952 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36488 = sha3(mem[mem[64] len _34952])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36488
                                _36814 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36814]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34955 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36493 = sha3(mem[mem[64] len _34955])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36493
                                _36818 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36818]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _37261 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37803 = sha3(mem[mem[64] len _37261])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _37803
                                _37994 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _37994]));
                else:
                    mem[64] = arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 161
                    mem[arg1.length + ceil32(arg1.length) + 160] = return_data.size
                    mem[arg1.length + ceil32(arg1.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7246616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 269 len 24]
                    idx = 0
                    while idx < uint256(stor[_3498]):
                        require ext_code.size(address(stor[sha3(_3498) + idx]))
                        staticcall address(stor[sha3(_3498) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3498])
                        require idx < stor1[_3498]
                        if ext_call.return_data[0]:
                            mem[0] = _3498 + 1
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3498].field_0)
                            mem[0] = _3498 + 2
                            _10747 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10747] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3498 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _10747 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx]), uint256(stor[sha3(_3498 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s + 1].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3496])][_3494].field_1280) = 0
                    uint256(owners[_3498]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) = uint256(stor[_3498])
                    if not uint256(stor[_3498]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _28607 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var99001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _31309 = sha3(mem[mem[64] len _28607])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _31309
                                _31376 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _31376]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31740 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34149 = sha3(mem[mem[64] len _31740])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34149
                                _34388 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34388]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31743 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34154 = sha3(mem[mem[64] len _31743])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34154
                                _34392 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34392]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34962 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36508 = sha3(mem[mem[64] len _34962])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36508
                                _36826 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36826]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3498]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494][s].field_0) = uint256(stor[idx + sha3(_3498)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3498])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31746 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34159 = sha3(mem[mem[64] len _31746])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34159
                                _34396 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34396]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34967 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36518 = sha3(mem[mem[64] len _34967])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36518
                                _36832 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36832]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34970 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36523 = sha3(mem[mem[64] len _34970])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36523
                                _36836 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36836]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _37270 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37823 = sha3(mem[mem[64] len _37270])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _37823
                                _38004 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38004]));
            else:
                mem[64] = arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 161
                mem[arg1.length + ceil32(arg1.length) + 160] = return_data.size
                mem[arg1.length + ceil32(arg1.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                38,
                                0x6c46616e746f6d4d61726b6574706c6163653a20466565207472616e73666572206661696c65,
                                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 267 len 26]
                if 0 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call address(stor[_3496]) with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7246616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 269 len 24]
                    idx = 0
                    while idx < uint256(stor[_3498]):
                        require ext_code.size(address(stor[sha3(_3498) + idx]))
                        staticcall address(stor[sha3(_3498) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3498])
                        require idx < stor1[_3498]
                        if ext_call.return_data[0]:
                            mem[0] = _3498 + 1
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3498].field_0)
                            mem[0] = _3498 + 2
                            _10752 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10752] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3498 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _10752 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx]), uint256(stor[sha3(_3498 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s + 1].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3496])][_3494].field_1280) = 0
                    uint256(owners[_3498]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) = uint256(stor[_3498])
                    if not uint256(stor[_3498]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _28611 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var99001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _31314 = sha3(mem[mem[64] len _28611])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _31314
                                _31380 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _31380]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31751 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34169 = sha3(mem[mem[64] len _31751])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34169
                                _34402 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34402]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31754 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34174 = sha3(mem[mem[64] len _31754])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34174
                                _34406 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34406]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34977 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36538 = sha3(mem[mem[64] len _34977])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36538
                                _36844 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36844]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3498]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494][s].field_0) = uint256(stor[idx + sha3(_3498)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3498])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31757 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34179 = sha3(mem[mem[64] len _31757])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34179
                                _34410 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34410]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34982 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36548 = sha3(mem[mem[64] len _34982])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36548
                                _36850 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36850]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34985 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36553 = sha3(mem[mem[64] len _34985])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36553
                                _36854 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36854]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _37279 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37843 = sha3(mem[mem[64] len _37279])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _37843
                                _38014 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38014]));
                else:
                    mem[64] = arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 162
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 161] = return_data.size
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7246616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 270 len 24]
                    idx = 0
                    while idx < uint256(stor[_3498]):
                        require ext_code.size(address(stor[sha3(_3498) + idx]))
                        staticcall address(stor[sha3(_3498) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3498])
                        require idx < stor1[_3498]
                        if ext_call.return_data[0]:
                            mem[0] = _3498 + 1
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3498].field_0)
                            mem[0] = _3498 + 2
                            _10757 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10757] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3498 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _10757 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx]), uint256(stor[sha3(_3498 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s + 1].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3496])][_3494].field_1280) = 0
                    uint256(owners[_3498]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) = uint256(stor[_3498])
                    if not uint256(stor[_3498]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _28615 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var99001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _31319 = sha3(mem[mem[64] len _28615])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _31319
                                _31384 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _31384]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31762 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34189 = sha3(mem[mem[64] len _31762])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34189
                                _34416 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34416]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31765 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34194 = sha3(mem[mem[64] len _31765])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34194
                                _34420 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34420]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34992 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36568 = sha3(mem[mem[64] len _34992])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36568
                                _36862 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36862]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3498]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494][s].field_0) = uint256(stor[idx + sha3(_3498)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3498])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31768 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34199 = sha3(mem[mem[64] len _31768])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34199
                                _34424 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34424]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34997 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36578 = sha3(mem[mem[64] len _34997])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36578
                                _36868 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36868]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _35000 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36583 = sha3(mem[mem[64] len _35000])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36583
                                _36872 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36872]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _37288 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37863 = sha3(mem[mem[64] len _37288])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _37863
                                _38024 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38024]));
        else:
            if stor5.length * msg.value / msg.value != stor5.length:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[arg1.length + ceil32(arg1.length) + 261 len 31]
            call sub_3740ebb3Address with:
               value stor5.length * msg.value / 1000 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                38,
                                0x6c46616e746f6d4d61726b6574706c6163653a20466565207472616e73666572206661696c65,
                                mem[arg1.length + ceil32(arg1.length) + 266 len 26]
                if stor5.length * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call address(stor[_3496]) with:
                   value msg.value - (stor5.length * msg.value / 1000) wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7246616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + 268 len 24]
                    idx = 0
                    while idx < uint256(stor[_3498]):
                        require ext_code.size(address(stor[sha3(_3498) + idx]))
                        staticcall address(stor[sha3(_3498) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3498])
                        require idx < stor1[_3498]
                        if ext_call.return_data[0]:
                            mem[0] = _3498 + 1
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3498].field_0)
                            mem[0] = _3498 + 2
                            _10722 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10722] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3498 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _10722 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx]), uint256(stor[sha3(_3498 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s + 1].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3496])][_3494].field_1280) = 0
                    uint256(owners[_3498]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) = uint256(stor[_3498])
                    if not uint256(stor[_3498]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _28587 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var101001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _31284 = sha3(mem[mem[64] len _28587])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _31284
                                _31356 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _31356]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31685 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34049 = sha3(mem[mem[64] len _31685])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34049
                                _34318 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34318]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31688 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34054 = sha3(mem[mem[64] len _31688])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34054
                                _34322 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34322]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34887 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36358 = sha3(mem[mem[64] len _34887])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36358
                                _36736 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36736]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3498]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494][s].field_0) = uint256(stor[idx + sha3(_3498)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3498])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31691 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34059 = sha3(mem[mem[64] len _31691])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34059
                                _34326 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34326]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34892 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36368 = sha3(mem[mem[64] len _34892])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36368
                                _36742 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36742]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34895 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36373 = sha3(mem[mem[64] len _34895])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36373
                                _36746 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36746]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _37225 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37723 = sha3(mem[mem[64] len _37225])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _37723
                                _37954 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _37954]));
                else:
                    mem[64] = arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 161
                    mem[arg1.length + ceil32(arg1.length) + 160] = return_data.size
                    mem[arg1.length + ceil32(arg1.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7246616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 269 len 24]
                    idx = 0
                    while idx < uint256(stor[_3498]):
                        require ext_code.size(address(stor[sha3(_3498) + idx]))
                        staticcall address(stor[sha3(_3498) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3498])
                        require idx < stor1[_3498]
                        if ext_call.return_data[0]:
                            mem[0] = _3498 + 1
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3498].field_0)
                            mem[0] = _3498 + 2
                            _10727 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10727] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3498 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _10727 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx]), uint256(stor[sha3(_3498 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s + 1].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3496])][_3494].field_1280) = 0
                    uint256(owners[_3498]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) = uint256(stor[_3498])
                    if not uint256(stor[_3498]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _28591 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var101001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _31289 = sha3(mem[mem[64] len _28591])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _31289
                                _31360 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _31360]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31696 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34069 = sha3(mem[mem[64] len _31696])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34069
                                _34332 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34332]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31699 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34074 = sha3(mem[mem[64] len _31699])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34074
                                _34336 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34336]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34902 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36388 = sha3(mem[mem[64] len _34902])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36388
                                _36754 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36754]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3498]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494][s].field_0) = uint256(stor[idx + sha3(_3498)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3498])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31702 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34079 = sha3(mem[mem[64] len _31702])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34079
                                _34340 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34340]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34907 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36398 = sha3(mem[mem[64] len _34907])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36398
                                _36760 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36760]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34910 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36403 = sha3(mem[mem[64] len _34910])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36403
                                _36764 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36764]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _37234 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37743 = sha3(mem[mem[64] len _37234])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _37743
                                _37964 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _37964]));
            else:
                mem[64] = arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 161
                mem[arg1.length + ceil32(arg1.length) + 160] = return_data.size
                mem[arg1.length + ceil32(arg1.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                38,
                                0x6c46616e746f6d4d61726b6574706c6163653a20466565207472616e73666572206661696c65,
                                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 267 len 26]
                if stor5.length * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call address(stor[_3496]) with:
                   value msg.value - (stor5.length * msg.value / 1000) wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7246616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 269 len 24]
                    idx = 0
                    while idx < uint256(stor[_3498]):
                        require ext_code.size(address(stor[sha3(_3498) + idx]))
                        staticcall address(stor[sha3(_3498) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3498])
                        require idx < stor1[_3498]
                        if ext_call.return_data[0]:
                            mem[0] = _3498 + 1
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3498].field_0)
                            mem[0] = _3498 + 2
                            _10732 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10732] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3498 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _10732 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx]), uint256(stor[sha3(_3498 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s + 1].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3496])][_3494].field_1280) = 0
                    uint256(owners[_3498]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) = uint256(stor[_3498])
                    if not uint256(stor[_3498]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _28595 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var101001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _31294 = sha3(mem[mem[64] len _28595])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _31294
                                _31364 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _31364]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31707 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34089 = sha3(mem[mem[64] len _31707])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34089
                                _34346 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34346]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31710 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34094 = sha3(mem[mem[64] len _31710])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34094
                                _34350 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34350]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34917 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36418 = sha3(mem[mem[64] len _34917])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36418
                                _36772 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36772]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3498]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494][s].field_0) = uint256(stor[idx + sha3(_3498)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3498])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31713 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34099 = sha3(mem[mem[64] len _31713])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34099
                                _34354 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34354]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34922 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36428 = sha3(mem[mem[64] len _34922])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36428
                                _36778 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36778]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34925 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36433 = sha3(mem[mem[64] len _34925])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36433
                                _36782 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36782]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _37243 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37763 = sha3(mem[mem[64] len _37243])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _37763
                                _37974 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _37974]));
                else:
                    mem[64] = arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 162
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 161] = return_data.size
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7246616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 270 len 24]
                    idx = 0
                    while idx < uint256(stor[_3498]):
                        require ext_code.size(address(stor[sha3(_3498) + idx]))
                        staticcall address(stor[sha3(_3498) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3498])
                        require idx < stor1[_3498]
                        if ext_call.return_data[0]:
                            mem[0] = _3498 + 1
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3498].field_0)
                            mem[0] = _3498 + 2
                            _10737 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_10737] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3496])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3498 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3498 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _10737 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3498) + idx]))
                            call address(stor[sha3(_3498) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3496]), msg.sender, uint256(stor[sha3(_3498 + 1) + idx]), uint256(stor[sha3(_3498 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_0) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) = 0
                    s = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_256) > s:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][s + 1].field_0) = 0
                        s = s + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3496])][_3494][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3496])][_3494].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3496])][_3494].field_1280) = 0
                    uint256(owners[_3498]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) = uint256(stor[_3498])
                    if not uint256(stor[_3498]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _28599 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var101001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _31299 = sha3(mem[mem[64] len _28599])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _31299
                                _31368 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _31368]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31718 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34109 = sha3(mem[mem[64] len _31718])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34109
                                _34360 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34360]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31721 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34114 = sha3(mem[mem[64] len _31721])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34114
                                _34364 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34364]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34932 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36448 = sha3(mem[mem[64] len _34932])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36448
                                _36790 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36790]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3498]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494][s].field_0) = uint256(stor[idx + sha3(_3498)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3498])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3494][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) = stor1[_3498]
                        if not stor1[_3498]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _31724 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _34119 = sha3(mem[mem[64] len _31724])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _34119
                                _34368 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _34368]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34937 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36458 = sha3(mem[mem[64] len _34937])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36458
                                _36796 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36796]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3498] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 1].field_0) = uint256(stor[idx + sha3(_3498 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3498]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) = uint256(sub_aa3a6b36[_3498].field_0)
                            if not uint256(sub_aa3a6b36[_3498].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _34940 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36463 = sha3(mem[mem[64] len _34940])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _36463
                                _36800 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36800]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3498].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][s + 2].field_0) = uint256(stor[idx + sha3(_3498 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3498].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3494][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_768) = uint256(owners[_3498])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3494].field_1024) = uint256(sub_a5851902[_3498].field_0)
                                address(sub_aa3a6b36[address(msg.sender)][_3494].field_1280) = stor5[_3498]
                                address(owners[_3494]) = msg.sender
                                address(sub_a5851902[_3494][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3494][address(msg.sender)].field_512) = 0
                                _37252 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37783 = sha3(mem[mem[64] len _37252])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3496]), msg.sender, _37783
                                _37984 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _37984]));
    stor1.length = 1
}



}
