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
array of uint256 stor4;
array of address stor5;
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

function marketplace() {
    return marketplaceAddress
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

function sub_201d121e(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if stor1.length == 2:
        revert with 0, 'sReentrancyGuard: reentrant call'
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
    mem[arg1.length + ceil32(arg1.length) + 388 len 0] = 0
    call arg2 with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0) << 256, mem[arg1.length + ceil32(arg1.length) + 388 len 4]
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
        mem[arg1.length + ceil32(arg1.length) + 488 len 64] = 0, address(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg2 with:
             gas gas_remaining wei
            args -1, mem[arg1.length + ceil32(arg1.length) + 424 len 28], mem[arg1.length + ceil32(arg1.length) + 552 len 4]
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
        mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 489 len 64] = 0, address(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 581 len 4] = 0
        call arg2 with:
             gas gas_remaining wei
            args -1, mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 425 len 28], mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 553 len 4]
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
                                mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 600 len 22]
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
                    args address(sub_aa3a6b36[address(stor3[_610])][_610][idx].field_0), uint256(sub_aa3a6b36[address(stor3[_610])][_610][idx + 1].field_0), mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            address(sub_a5851902[_610][address(msg.sender)].field_0) = arg2
            uint256(sub_a5851902[_610][address(msg.sender)].field_256) = arg3
            uint256(sub_a5851902[_610][address(msg.sender)].field_512) = arg4
            mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 586 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 618 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            emit OfferCreated(address arg1, string arg2, address arg3, uint256 arg4, uint256 arg5):
                              address(arg2),
                              arg3,
                              arg4,
                              mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                              msg.sender,
                              sha3(mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 586 len arg1.length + (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]),
}

function sub_56801ab1(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if msg.sender == auctionAddress:
        mem[0] = arg2
        mem[32] = sha3(address(arg1), 4)
        idx = 0
        while idx < stor4[address(arg1)][arg2]:
            if idx >= stor4[address(arg1)][arg2]:
                revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
            mem[0] = stor4[address(arg1)][arg2][idx]
            mem[32] = 3
            if address(owners[stor4[address(arg1)][arg2][idx]]):
                mem[0] = stor4[address(arg1)][arg2][idx]
                mem[32] = sha3(address(owners[stor4[address(arg1)][arg2][idx]]), 2)
                if uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_768):
                    mem[32] = sha3(address(arg1), sha3(stor4[address(arg1)][arg2][idx], 5))
                    uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]) = 0
                    if uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_0) != 1:
                        require uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_0) - 1 < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_0)
                        if uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]) < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_0) - 1:
                            require uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]) < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_0)
                            address(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]][uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2])].field_0) = address(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]][uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_0)].field_0)
                            require uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_256) - 1 < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_256)
                            require uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]) < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_256)
                            uint256(stor[('array', 1, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('type', 160, ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3)))), ('name', 'sub_aa3a6b36', 2)))) + uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2])].field_0) = uint256(stor[('array', 1, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('type', 160, ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3)))), ('name', 'sub_aa3a6b36', 2)))) + uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_256)].field_0)
                            require uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_512) - 1 < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_512)
                            require uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]) < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_512)
                            uint256(stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('type', 160, ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3)))), ('name', 'sub_aa3a6b36', 2)))) + uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2])].field_0) = uint256(stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('type', 160, ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3)))), ('name', 'sub_aa3a6b36', 2)))) + uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_512)].field_0)
                            require uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]) < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_0)
                            require uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]) < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_256)
                            mem[32] = sha3(address(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]][uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2])].field_0), sha3(stor4[address(arg1)][arg2][idx], 5))
                            uint256(stor5[stor4[address(arg1)][arg2][idx]][address(stor2[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]][uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2])].field_0)][uint256(stor[('array', 1, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('type', 160, ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3)))), ('name', 'stor2', 2)))) + uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2])].field_0)]) = uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2])
                        address(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]][uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_0)].field_0) = 0
                        require uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_256) - 1 < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_256)
                        uint256(stor[('array', 1, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('type', 160, ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3)))), ('name', 'sub_aa3a6b36', 2)))) + uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_256)].field_0) = 0
                        require uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_512) - 1 < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_512)
                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(address(owners[stor4[address(arg1)][arg2][idx]]), 2)) + 2
                        uint256(stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('type', 160, ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3)))), ('name', 'sub_aa3a6b36', 2)))) + uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_512)].field_0) = 0
                    else:
                        uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_0) = 0
                        s = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(address(owners[stor4[address(arg1)][arg2][idx]]), 2)))
                        while sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(address(owners[stor4[address(arg1)][arg2][idx]]), 2))) + uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_0) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_256) = 0
                        s = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(address(owners[stor4[address(arg1)][arg2][idx]]), 2)) + 1)
                        while sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(address(owners[stor4[address(arg1)][arg2][idx]]), 2)) + 1) + uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_256) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_512) = 0
                        s = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(address(owners[stor4[address(arg1)][arg2][idx]]), 2)) + 2)
                        while sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(address(owners[stor4[address(arg1)][arg2][idx]]), 2)) + 2) + uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_512) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_768) = 0
                        uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_1024) = 0
                        address(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_1280) = 0
                        mem[0] = stor4[address(arg1)][arg2][idx]
                        address(owners[stor4[address(arg1)][arg2][idx]]) = 0
                        mem[32] = 6
                        _575 = mem[64]
                        mem[64] = mem[64] + ceil32(stor6[stor4[address(arg1)][arg2][idx]].length) + 32
                        mem[_575] = stor6[stor4[address(arg1)][arg2][idx]].length
                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], 6)
                        mem[_575 + 32] = stor6[stor4[address(arg1)][arg2][idx]]
                        s = _575 + 32
                        t = sha3(mem[0])
                        while _575 + stor6[stor4[address(arg1)][arg2][idx]].length > s:
                            mem[s + 32] = stor1[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[0] = stor4[address(arg1)][arg2][idx]
                        mem[32] = 6
                        stor6[stor4[address(arg1)][arg2][idx]] = 0
                        if 31 >= stor6[stor4[address(arg1)][arg2][idx]].length:
                            _715 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[_575]
                            _717 = mem[_575]
                            s = 0
                            while s < _717:
                                mem[s + _715 + 64] = mem[s + _575 + 32]
                                s = s + 32
                                continue 
                            if not _717 % 32:
                                emit ItemCanceled(mem[mem[64] len _717 + _715 + -mem[64] + 64], address(owners[stor4[address(arg1)][arg2][idx]]));
                            else:
                                mem[floor32(_717) + _715 + 64] = mem[floor32(_717) + _715 + -(_717 % 32) + 96 len _717 % 32]
                                emit ItemCanceled(mem[mem[64] len floor32(_717) + _715 + -mem[64] + 96], address(owners[stor4[address(arg1)][arg2][idx]]));
                        else:
                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], 6)
                            s = sha3(sha3(stor4[address(arg1)][arg2][idx], 6))
                            while sha3(sha3(stor4[address(arg1)][arg2][idx], 6)) + (stor6[stor4[address(arg1)][arg2][idx]].length + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            _772 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[_575]
                            _774 = mem[_575]
                            s = 0
                            while s < _774:
                                mem[s + _772 + 64] = mem[s + _575 + 32]
                                s = s + 32
                                continue 
                            if not _774 % 32:
                                emit ItemCanceled(mem[mem[64] len _774 + _772 + -mem[64] + 64], address(owners[stor4[address(arg1)][arg2][idx]]));
                            else:
                                mem[floor32(_774) + _772 + 64] = mem[floor32(_774) + _772 + -(_774 % 32) + 96 len _774 % 32]
                                emit ItemCanceled(mem[mem[64] len floor32(_774) + _772 + -mem[64] + 96], address(owners[stor4[address(arg1)][arg2][idx]]));
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
            if address(owners[stor4[address(arg1)][arg2][idx]]):
                mem[0] = stor4[address(arg1)][arg2][idx]
                mem[32] = sha3(address(owners[stor4[address(arg1)][arg2][idx]]), 2)
                if uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_768):
                    mem[32] = sha3(address(arg1), sha3(stor4[address(arg1)][arg2][idx], 5))
                    uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]) = 0
                    if uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_0) != 1:
                        require uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_0) - 1 < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_0)
                        if uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]) < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_0) - 1:
                            require uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]) < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_0)
                            address(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]][uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2])].field_0) = address(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]][uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_0)].field_0)
                            require uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_256) - 1 < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_256)
                            require uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]) < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_256)
                            uint256(stor[('array', 1, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('type', 160, ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3)))), ('name', 'sub_aa3a6b36', 2)))) + uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2])].field_0) = uint256(stor[('array', 1, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('type', 160, ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3)))), ('name', 'sub_aa3a6b36', 2)))) + uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_256)].field_0)
                            require uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_512) - 1 < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_512)
                            require uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]) < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_512)
                            uint256(stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('type', 160, ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3)))), ('name', 'sub_aa3a6b36', 2)))) + uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2])].field_0) = uint256(stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('type', 160, ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3)))), ('name', 'sub_aa3a6b36', 2)))) + uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_512)].field_0)
                            require uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]) < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_0)
                            require uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2]) < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_256)
                            mem[32] = sha3(address(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]][uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2])].field_0), sha3(stor4[address(arg1)][arg2][idx], 5))
                            uint256(stor5[stor4[address(arg1)][arg2][idx]][address(stor2[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]][uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2])].field_0)][uint256(stor[('array', 1, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('type', 160, ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3)))), ('name', 'stor2', 2)))) + uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2])].field_0)]) = uint256(stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2])
                        address(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]][uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_0)].field_0) = 0
                        require uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_256) - 1 < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_256)
                        uint256(stor[('array', 1, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('type', 160, ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3)))), ('name', 'sub_aa3a6b36', 2)))) + uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_256)].field_0) = 0
                        require uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_512) - 1 < uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_512)
                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(address(owners[stor4[address(arg1)][arg2][idx]]), 2)) + 2
                        uint256(stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('type', 160, ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3)))), ('name', 'sub_aa3a6b36', 2)))) + uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_512)].field_0) = 0
                    else:
                        uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_0) = 0
                        s = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(address(owners[stor4[address(arg1)][arg2][idx]]), 2)))
                        while sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(address(owners[stor4[address(arg1)][arg2][idx]]), 2))) + uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_0) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_256) = 0
                        s = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(address(owners[stor4[address(arg1)][arg2][idx]]), 2)) + 1)
                        while sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(address(owners[stor4[address(arg1)][arg2][idx]]), 2)) + 1) + uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_256) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_512) = 0
                        s = sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(address(owners[stor4[address(arg1)][arg2][idx]]), 2)) + 2)
                        while sha3(sha3(stor4[address(arg1)][arg2][idx], sha3(address(owners[stor4[address(arg1)][arg2][idx]]), 2)) + 2) + uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_512) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_768) = 0
                        uint256(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_1024) = 0
                        address(sub_aa3a6b36[address(stor3[stor4[address(arg1)][arg2][idx]])][stor4[address(arg1)][arg2][idx]].field_1280) = 0
                        mem[0] = stor4[address(arg1)][arg2][idx]
                        address(owners[stor4[address(arg1)][arg2][idx]]) = 0
                        mem[32] = 6
                        _578 = mem[64]
                        mem[64] = mem[64] + ceil32(stor6[stor4[address(arg1)][arg2][idx]].length) + 32
                        mem[_578] = stor6[stor4[address(arg1)][arg2][idx]].length
                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], 6)
                        mem[_578 + 32] = stor6[stor4[address(arg1)][arg2][idx]]
                        s = _578 + 32
                        t = sha3(mem[0])
                        while _578 + stor6[stor4[address(arg1)][arg2][idx]].length > s:
                            mem[s + 32] = stor1[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[0] = stor4[address(arg1)][arg2][idx]
                        mem[32] = 6
                        stor6[stor4[address(arg1)][arg2][idx]] = 0
                        if 31 >= stor6[stor4[address(arg1)][arg2][idx]].length:
                            _722 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[_578]
                            _724 = mem[_578]
                            s = 0
                            while s < _724:
                                mem[s + _722 + 64] = mem[s + _578 + 32]
                                s = s + 32
                                continue 
                            if not _724 % 32:
                                emit ItemCanceled(mem[mem[64] len _724 + _722 + -mem[64] + 64], address(owners[stor4[address(arg1)][arg2][idx]]));
                            else:
                                mem[floor32(_724) + _722 + 64] = mem[floor32(_724) + _722 + -(_724 % 32) + 96 len _724 % 32]
                                emit ItemCanceled(mem[mem[64] len floor32(_724) + _722 + -mem[64] + 96], address(owners[stor4[address(arg1)][arg2][idx]]));
                        else:
                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], 6)
                            s = sha3(sha3(stor4[address(arg1)][arg2][idx], 6))
                            while sha3(sha3(stor4[address(arg1)][arg2][idx], 6)) + (stor6[stor4[address(arg1)][arg2][idx]].length + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            _778 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[_578]
                            _780 = mem[_578]
                            s = 0
                            while s < _780:
                                mem[s + _778 + 64] = mem[s + _578 + 32]
                                s = s + 32
                                continue 
                            if not _780 % 32:
                                emit ItemCanceled(mem[mem[64] len _780 + _778 + -mem[64] + 64], address(owners[stor4[address(arg1)][arg2][idx]]));
                            else:
                                mem[floor32(_780) + _778 + 64] = mem[floor32(_780) + _778 + -(_780 % 32) + 96 len _780 % 32]
                                emit ItemCanceled(mem[mem[64] len floor32(_780) + _778 + -mem[64] + 96], address(owners[stor4[address(arg1)][arg2][idx]]));
            idx = idx + 1
            continue 
    stor4[address(arg1)][arg2] = 0
    idx = 0
    while stor4[address(arg1)][arg2] > idx:
        stor4[address(arg1)][arg2][idx] = 0
        idx = idx + 1
        continue 
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
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    if uint256(sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])].field_768) <= 0:
        revert with 0, 'Not listed bundle.'
    mem[arg1.length + ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = arg1.length
    _178 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 192 len arg1.length % 32])
    mem[(2 * arg1.length) + ceil32(arg1.length) + 192] = 96
    mem[(2 * arg1.length) + ceil32(arg1.length) + 224] = 96
    mem[(2 * arg1.length) + ceil32(arg1.length) + 256] = 96
    mem[(2 * arg1.length) + ceil32(arg1.length) + 288] = 0
    mem[(2 * arg1.length) + ceil32(arg1.length) + 320] = 0
    mem[(2 * arg1.length) + ceil32(arg1.length) + 352] = 0
    mem[(2 * arg1.length) + ceil32(arg1.length) + 576] = uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)
    if uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0):
        mem[(2 * arg1.length) + ceil32(arg1.length) + 608] = address(sub_aa3a6b36[address(msg.sender)][_178].field_0)
        idx = (2 * arg1.length) + ceil32(arg1.length) + 608
        s = 0
        while (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + 608 > idx + 32:
            mem[idx + 32] = address(sub_aa3a6b36[address(msg.sender)][_178][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(2 * arg1.length) + ceil32(arg1.length) + 384] = (2 * arg1.length) + ceil32(arg1.length) + 576
    mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + 608] = uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)
    if not uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256):
        mem[(2 * arg1.length) + ceil32(arg1.length) + 416] = (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + 608
        mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + 640] = uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512)
        if not uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512):
            idx = 0
            while idx < uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0):
                require idx < uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)
                require idx < uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)
                if stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][1][_178]:
                    require stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]] - 1 < stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]
                    require stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][1][_178] - 1 < stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]
                    stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][1][_178]] = stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]]
                    stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][1][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]]] = stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][1][_178]
                    require stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]
                    stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]] = 0
                    stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]--
                    stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][1][_178] = 0
                require idx < uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)
                require idx < uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)
                mem[0] = mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + 640]
                mem[32] = sha3(mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20], sha3(_178, 5))
                uint256(stor5[_178][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]) = 0
                idx = idx + 1
                continue 
            uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0) = 0
            idx = 0
            while uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0) > idx:
                uint256(sub_aa3a6b36[address(msg.sender)][_178][idx].field_0) = 0
                idx = idx + 1
                continue 
            uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256) = 0
            idx = 0
            while uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256) > idx:
                uint256(sub_aa3a6b36[address(msg.sender)][_178][idx + 1].field_0) = 0
                idx = idx + 1
                continue 
            uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512) = 0
            idx = 0
            while uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512) > idx:
                uint256(sub_aa3a6b36[address(msg.sender)][_178][idx + 2].field_0) = 0
                idx = idx + 1
                continue 
            uint256(sub_aa3a6b36[address(msg.sender)][_178].field_768) = 0
            uint256(sub_aa3a6b36[address(msg.sender)][_178].field_1024) = 0
            address(sub_aa3a6b36[address(msg.sender)][_178].field_1280) = 0
            address(owners[_178]) = 0
            stor6[_178] = 0
            if 31 < stor6[_178].length:
                idx = 0
                while stor6[_178].length + 31 / 32 > idx:
                    stor6[_178][idx] = 0
                    idx = idx + 1
                    continue 
            emit ItemCanceled(Array(len=arg1.length, data=arg1[all]), msg.sender);
        else:
            mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + 672] = uint256(sub_aa3a6b36[address(msg.sender)][_178][2].field_0)
            idx = (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + 672
            s = 0
            while (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512)) + 640 > idx:
                mem[idx + 32] = uint256(sub_aa3a6b36[address(msg.sender)][_178][s + 2].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[(2 * arg1.length) + ceil32(arg1.length) + 448] = (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + 640
            mem[(2 * arg1.length) + ceil32(arg1.length) + 480] = uint256(sub_aa3a6b36[address(msg.sender)][_178].field_768)
            mem[(2 * arg1.length) + ceil32(arg1.length) + 512] = uint256(sub_aa3a6b36[address(msg.sender)][_178].field_1024)
            mem[(2 * arg1.length) + ceil32(arg1.length) + 544] = address(sub_aa3a6b36[address(msg.sender)][_178].field_1280)
            idx = 0
            while idx < uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0):
                require idx < uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)
                require idx < uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)
                if stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][1][_178]:
                    require stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]] - 1 < stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]
                    require stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][1][_178] - 1 < stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]
                    stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][1][_178]] = stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]]
                    stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][1][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]]] = stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][1][_178]
                    require stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]
                    stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]] = 0
                    stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]--
                    stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][1][_178] = 0
                require idx < uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)
                require idx < uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)
                mem[0] = mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + 640]
                mem[32] = sha3(mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20], sha3(_178, 5))
                uint256(stor5[_178][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]) = 0
                idx = idx + 1
                continue 
            uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0) = 0
            idx = 0
            while uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0) > idx:
                uint256(sub_aa3a6b36[address(msg.sender)][_178][idx].field_0) = 0
                idx = idx + 1
                continue 
            uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256) = 0
            idx = 0
            while uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256) > idx:
                uint256(sub_aa3a6b36[address(msg.sender)][_178][idx + 1].field_0) = 0
                idx = idx + 1
                continue 
            uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512) = 0
            idx = 0
            while uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512) > idx:
                uint256(sub_aa3a6b36[address(msg.sender)][_178][idx + 2].field_0) = 0
                idx = idx + 1
                continue 
            uint256(sub_aa3a6b36[address(msg.sender)][_178].field_768) = 0
            uint256(sub_aa3a6b36[address(msg.sender)][_178].field_1024) = 0
            address(sub_aa3a6b36[address(msg.sender)][_178].field_1280) = 0
            address(owners[_178]) = 0
            stor6[_178] = 0
            if 31 < stor6[_178].length:
                idx = 0
                while stor6[_178].length + 31 / 32 > idx:
                    stor6[_178][idx] = 0
                    idx = idx + 1
                    continue 
            mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512)) + 672] = 32
            mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512)) + 704] = arg1.length
            mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512)) + 736 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                emit ItemCanceled(mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512)) + 672 len arg1.length + 64], msg.sender);
            else:
                mem[floor32(arg1.length) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512)) + 736] = mem[floor32(arg1.length) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512)) + -(arg1.length % 32) + 768 len arg1.length % 32]
                emit ItemCanceled(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * arg1.length) + (2 * ceil32(arg1.length)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512)) + 736 len floor32(arg1.length) + -ceil32(arg1.length) + 32]), msg.sender);
    else:
        mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + 640] = uint256(sub_aa3a6b36[address(msg.sender)][_178][1].field_0)
        idx = (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + 640
        s = 0
        while (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + 608 > idx:
            mem[idx + 32] = uint256(sub_aa3a6b36[address(msg.sender)][_178][s + 1].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(2 * arg1.length) + ceil32(arg1.length) + 416] = (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + 608
        mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + 640] = uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512)
        if uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512):
            mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + 672] = uint256(sub_aa3a6b36[address(msg.sender)][_178][2].field_0)
            idx = (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + 672
            s = 0
            while (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512)) + 640 > idx:
                mem[idx + 32] = uint256(sub_aa3a6b36[address(msg.sender)][_178][s + 2].field_256)
                idx = idx + 32
                s = s + 1
                continue 
        mem[(2 * arg1.length) + ceil32(arg1.length) + 448] = (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + 640
        mem[(2 * arg1.length) + ceil32(arg1.length) + 480] = uint256(sub_aa3a6b36[address(msg.sender)][_178].field_768)
        mem[(2 * arg1.length) + ceil32(arg1.length) + 512] = uint256(sub_aa3a6b36[address(msg.sender)][_178].field_1024)
        mem[(2 * arg1.length) + ceil32(arg1.length) + 544] = address(sub_aa3a6b36[address(msg.sender)][_178].field_1280)
        idx = 0
        while idx < uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0):
            require idx < uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)
            require idx < uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)
            if stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][1][_178]:
                require stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]] - 1 < stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]
                require stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][1][_178] - 1 < stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]
                stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][1][_178]] = stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]]
                stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][1][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]]] = stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][1][_178]
                require stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]
                stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]] = 0
                stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]--
                stor4[mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]][1][_178] = 0
            require idx < uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)
            require idx < uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)
            mem[0] = mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + 640]
            mem[32] = sha3(mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20], sha3(_178, 5))
            uint256(stor5[_178][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + 620 len 20]][mem[(32 * idx) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(stor2[address(msg.sender)][_178].field_0)) + 640]]) = 0
            idx = idx + 1
            continue 
        uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0) = 0
        idx = 0
        while uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0) > idx:
            uint256(sub_aa3a6b36[address(msg.sender)][_178][idx].field_0) = 0
            idx = idx + 1
            continue 
        uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256) = 0
        idx = 0
        while uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256) > idx:
            uint256(sub_aa3a6b36[address(msg.sender)][_178][idx + 1].field_0) = 0
            idx = idx + 1
            continue 
        uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512) = 0
        idx = 0
        while uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512) > idx:
            uint256(sub_aa3a6b36[address(msg.sender)][_178][idx + 2].field_0) = 0
            idx = idx + 1
            continue 
        uint256(sub_aa3a6b36[address(msg.sender)][_178].field_768) = 0
        uint256(sub_aa3a6b36[address(msg.sender)][_178].field_1024) = 0
        address(sub_aa3a6b36[address(msg.sender)][_178].field_1280) = 0
        address(owners[_178]) = 0
        stor6[_178] = 0
        if 31 < stor6[_178].length:
            idx = 0
            while stor6[_178].length + 31 / 32 > idx:
                stor6[_178][idx] = 0
                idx = idx + 1
                continue 
        mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512)) + 672] = 32
        mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512)) + 704] = arg1.length
        mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512)) + 736 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            emit ItemCanceled(mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512)) + 672 len arg1.length + 64], msg.sender);
        else:
            mem[floor32(arg1.length) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512)) + 736] = mem[floor32(arg1.length) + (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512)) + -(arg1.length % 32) + 768 len arg1.length % 32]
            emit ItemCanceled(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * arg1.length) + (2 * ceil32(arg1.length)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512)) + 736 len floor32(arg1.length) + -ceil32(arg1.length) + 32]), msg.sender);
    stor1.length = 1
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
        revert with 0, 'sReentrancyGuard: reentrant call'
    stor1.length = 2
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[64] = arg1.length + ceil32(arg1.length) + 160
    _3878 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    _3880 = sha3(sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]), 3)
    if not address(owners[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]]):
        revert with 0, 'Invalid Bundle ID.'
    mem[32] = sha3(address(owners[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]]), 2)
    _3882 = sha3(sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]), sha3(address(owners[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]]), 2))
    if not uint256(sub_aa3a6b36[address(stor3[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]])][sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])].field_768):
        revert with 0, 'Not listed bundle.'
    idx = 0
    while idx < uint256(stor[_3882]):
        require ext_code.size(address(stor[sha3(_3882) + idx]))
        staticcall address(stor[sha3(_3882) + idx]).supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < uint256(stor[_3882])
        if ext_call.return_data[0]:
            require idx < stor1[_3882]
            mem[0] = _3882 + 1
            mem[arg1.length + ceil32(arg1.length) + 164] = uint256(stor[sha3(_3882 + 1) + idx])
            require ext_code.size(address(stor[sha3(_3882) + idx]))
            staticcall address(stor[sha3(_3882) + idx]).ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args uint256(stor[sha3(_3882 + 1) + idx])
            mem[arg1.length + ceil32(arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != address(stor[_3880]):
                revert with 0, 'Not owning the item.'
        else:
            mem[0] = _3882
            mem[arg1.length + ceil32(arg1.length) + 164] = 0xd9b67a2600000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(stor[sha3(_3882) + idx]))
            staticcall address(stor[sha3(_3882) + idx]).supportsInterface(bytes4 arg1) with:
                    gas gas_remaining wei
                   args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
            mem[arg1.length + ceil32(arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require idx < uint256(stor[_3882])
                require idx < uint256(sub_aa3a6b36[_3882].field_0)
                require idx < stor1[_3882]
                mem[0] = _3882 + 1
                mem[arg1.length + ceil32(arg1.length) + 164] = address(stor[_3880])
                mem[arg1.length + ceil32(arg1.length) + 196] = uint256(stor[sha3(_3882 + 1) + idx])
                require ext_code.size(address(stor[sha3(_3882) + idx]))
                staticcall address(stor[sha3(_3882) + idx]).balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(stor[_3880]), uint256(stor[sha3(_3882 + 1) + idx])
                mem[arg1.length + ceil32(arg1.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < uint256(stor[sha3(_3882 + 2) + idx]):
                    revert with 0, 'Not owning the item.'
        idx = idx + 1
        continue 
    if block.timestamp < stor4[_3882]:
        revert with 0, 'Bundle is not buyable yet.'
    if msg.value < uint256(owners[_3882]):
        revert with 0, 'Not enough amount to buy item.'
    if not address(stor5[_3882]):
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
                call address(stor[_3880]) with:
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
                    while idx < uint256(stor[_3882]):
                        require ext_code.size(address(stor[sha3(_3882) + idx]))
                        staticcall address(stor[sha3(_3882) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3882].field_0)
                            mem[0] = _3882 + 2
                            _11854 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11854] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3880])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3882 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3882 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _11854 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx]), uint256(stor[sha3(_3882 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[mem[64] + 68] = address(stor[_3880])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx]), address(stor[_3880]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[0] = _3882 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3882) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3882 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3880])][_3878].field_1280) = 0
                    uint256(owners[_3882]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) = uint256(stor[_3882])
                    if not uint256(stor[_3882]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _30362 = mem[64]
                                _30363 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var96001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33056 = sha3(mem[mem[64] len _30363 + _30362 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _33056
                                _33131 = mem[64]
                                _33132 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33132 + _33131 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33432 = mem[64]
                                _33433 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35761 = sha3(mem[mem[64] len _33433 + _33432 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35761
                                _36053 = mem[64]
                                _36054 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36054 + _36053 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33435 = mem[64]
                                _33436 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35766 = sha3(mem[mem[64] len _33436 + _33435 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35766
                                _36057 = mem[64]
                                _36058 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36058 + _36057 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36618 = mem[64]
                                _36619 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38030 = sha3(mem[mem[64] len _36619 + _36618 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38030
                                _38455 = mem[64]
                                _38456 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38456 + _38455 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3882]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878][s].field_0) = uint256(stor[idx + sha3(_3882)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3882])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33438 = mem[64]
                                _33439 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35771 = sha3(mem[mem[64] len _33439 + _33438 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35771
                                _36061 = mem[64]
                                _36062 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36062 + _36061 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36623 = mem[64]
                                _36624 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38040 = sha3(mem[mem[64] len _36624 + _36623 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38040
                                _38461 = mem[64]
                                _38462 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38462 + _38461 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36626 = mem[64]
                                _36627 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38045 = sha3(mem[mem[64] len _36627 + _36626 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38045
                                _38465 = mem[64]
                                _38466 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38466 + _38465 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _38980 = mem[64]
                                _38981 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39435 = sha3(mem[mem[64] len _38981 + _38980 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _39435
                                _39705 = mem[64]
                                _39706 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39706 + _39705 - mem[64]]));
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
                    while idx < uint256(stor[_3882]):
                        require ext_code.size(address(stor[sha3(_3882) + idx]))
                        staticcall address(stor[sha3(_3882) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3882].field_0)
                            mem[0] = _3882 + 2
                            _11859 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11859] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3880])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3882 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3882 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _11859 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx]), uint256(stor[sha3(_3882 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[mem[64] + 68] = address(stor[_3880])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx]), address(stor[_3880]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[0] = _3882 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3882) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3882 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3880])][_3878].field_1280) = 0
                    uint256(owners[_3882]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) = uint256(stor[_3882])
                    if not uint256(stor[_3882]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _30366 = mem[64]
                                _30367 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var96001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33061 = sha3(mem[mem[64] len _30367 + _30366 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _33061
                                _33135 = mem[64]
                                _33136 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33136 + _33135 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33443 = mem[64]
                                _33444 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35781 = sha3(mem[mem[64] len _33444 + _33443 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35781
                                _36067 = mem[64]
                                _36068 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36068 + _36067 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33446 = mem[64]
                                _33447 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35786 = sha3(mem[mem[64] len _33447 + _33446 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35786
                                _36071 = mem[64]
                                _36072 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36072 + _36071 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36633 = mem[64]
                                _36634 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38060 = sha3(mem[mem[64] len _36634 + _36633 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38060
                                _38473 = mem[64]
                                _38474 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38474 + _38473 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3882]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878][s].field_0) = uint256(stor[idx + sha3(_3882)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3882])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33449 = mem[64]
                                _33450 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35791 = sha3(mem[mem[64] len _33450 + _33449 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35791
                                _36075 = mem[64]
                                _36076 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36076 + _36075 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36638 = mem[64]
                                _36639 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38070 = sha3(mem[mem[64] len _36639 + _36638 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38070
                                _38479 = mem[64]
                                _38480 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38480 + _38479 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36641 = mem[64]
                                _36642 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38075 = sha3(mem[mem[64] len _36642 + _36641 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38075
                                _38483 = mem[64]
                                _38484 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38484 + _38483 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _38989 = mem[64]
                                _38990 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39455 = sha3(mem[mem[64] len _38990 + _38989 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _39455
                                _39715 = mem[64]
                                _39716 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39716 + _39715 - mem[64]]));
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
                call address(stor[_3880]) with:
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
                    while idx < uint256(stor[_3882]):
                        require ext_code.size(address(stor[sha3(_3882) + idx]))
                        staticcall address(stor[sha3(_3882) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3882].field_0)
                            mem[0] = _3882 + 2
                            _11864 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11864] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3880])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3882 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3882 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _11864 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx]), uint256(stor[sha3(_3882 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[mem[64] + 68] = address(stor[_3880])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx]), address(stor[_3880]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[0] = _3882 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3882) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3882 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3880])][_3878].field_1280) = 0
                    uint256(owners[_3882]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) = uint256(stor[_3882])
                    if not uint256(stor[_3882]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _30370 = mem[64]
                                _30371 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var96001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33066 = sha3(mem[mem[64] len _30371 + _30370 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _33066
                                _33139 = mem[64]
                                _33140 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33140 + _33139 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33454 = mem[64]
                                _33455 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35801 = sha3(mem[mem[64] len _33455 + _33454 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35801
                                _36081 = mem[64]
                                _36082 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36082 + _36081 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33457 = mem[64]
                                _33458 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35806 = sha3(mem[mem[64] len _33458 + _33457 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35806
                                _36085 = mem[64]
                                _36086 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36086 + _36085 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36648 = mem[64]
                                _36649 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38090 = sha3(mem[mem[64] len _36649 + _36648 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38090
                                _38491 = mem[64]
                                _38492 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38492 + _38491 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3882]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878][s].field_0) = uint256(stor[idx + sha3(_3882)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3882])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33460 = mem[64]
                                _33461 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35811 = sha3(mem[mem[64] len _33461 + _33460 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35811
                                _36089 = mem[64]
                                _36090 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36090 + _36089 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36653 = mem[64]
                                _36654 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38100 = sha3(mem[mem[64] len _36654 + _36653 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38100
                                _38497 = mem[64]
                                _38498 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38498 + _38497 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36656 = mem[64]
                                _36657 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38105 = sha3(mem[mem[64] len _36657 + _36656 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38105
                                _38501 = mem[64]
                                _38502 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38502 + _38501 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _38998 = mem[64]
                                _38999 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39475 = sha3(mem[mem[64] len _38999 + _38998 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _39475
                                _39725 = mem[64]
                                _39726 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39726 + _39725 - mem[64]]));
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
                    while idx < uint256(stor[_3882]):
                        require ext_code.size(address(stor[sha3(_3882) + idx]))
                        staticcall address(stor[sha3(_3882) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3882].field_0)
                            mem[0] = _3882 + 2
                            _11869 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11869] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3880])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3882 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3882 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _11869 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx]), uint256(stor[sha3(_3882 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[mem[64] + 68] = address(stor[_3880])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx]), address(stor[_3880]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[0] = _3882 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3882) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3882 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3880])][_3878].field_1280) = 0
                    uint256(owners[_3882]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) = uint256(stor[_3882])
                    if not uint256(stor[_3882]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _30374 = mem[64]
                                _30375 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var96001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33071 = sha3(mem[mem[64] len _30375 + _30374 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _33071
                                _33143 = mem[64]
                                _33144 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33144 + _33143 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33465 = mem[64]
                                _33466 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35821 = sha3(mem[mem[64] len _33466 + _33465 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35821
                                _36095 = mem[64]
                                _36096 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36096 + _36095 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33468 = mem[64]
                                _33469 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35826 = sha3(mem[mem[64] len _33469 + _33468 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35826
                                _36099 = mem[64]
                                _36100 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36100 + _36099 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36663 = mem[64]
                                _36664 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38120 = sha3(mem[mem[64] len _36664 + _36663 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38120
                                _38509 = mem[64]
                                _38510 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38510 + _38509 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3882]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878][s].field_0) = uint256(stor[idx + sha3(_3882)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3882])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33471 = mem[64]
                                _33472 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35831 = sha3(mem[mem[64] len _33472 + _33471 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35831
                                _36103 = mem[64]
                                _36104 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36104 + _36103 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36668 = mem[64]
                                _36669 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38130 = sha3(mem[mem[64] len _36669 + _36668 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38130
                                _38515 = mem[64]
                                _38516 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38516 + _38515 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36671 = mem[64]
                                _36672 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38135 = sha3(mem[mem[64] len _36672 + _36671 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38135
                                _38519 = mem[64]
                                _38520 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38520 + _38519 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _39007 = mem[64]
                                _39008 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39495 = sha3(mem[mem[64] len _39008 + _39007 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _39495
                                _39735 = mem[64]
                                _39736 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39736 + _39735 - mem[64]]));
        else:
            if platformFee * msg.value / msg.value != platformFee:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[arg1.length + ceil32(arg1.length) + 261 len 31]
            call sub_3740ebb3Address with:
               value platformFee * msg.value / 1000 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                38,
                                0x6c46616e746f6d4d61726b6574706c6163653a20466565207472616e73666572206661696c65,
                                mem[arg1.length + ceil32(arg1.length) + 266 len 26]
                if platformFee * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call address(stor[_3880]) with:
                   value msg.value - (platformFee * msg.value / 1000) wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7246616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + 268 len 24]
                    idx = 0
                    while idx < uint256(stor[_3882]):
                        require ext_code.size(address(stor[sha3(_3882) + idx]))
                        staticcall address(stor[sha3(_3882) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3882].field_0)
                            mem[0] = _3882 + 2
                            _11834 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11834] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3880])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3882 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3882 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _11834 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx]), uint256(stor[sha3(_3882 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[mem[64] + 68] = address(stor[_3880])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx]), address(stor[_3880]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[0] = _3882 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3882) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3882 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3880])][_3878].field_1280) = 0
                    uint256(owners[_3882]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) = uint256(stor[_3882])
                    if not uint256(stor[_3882]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _30346 = mem[64]
                                _30347 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var98001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33036 = sha3(mem[mem[64] len _30347 + _30346 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _33036
                                _33115 = mem[64]
                                _33116 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33116 + _33115 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33388 = mem[64]
                                _33389 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35681 = sha3(mem[mem[64] len _33389 + _33388 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35681
                                _35997 = mem[64]
                                _35998 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _35998 + _35997 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33391 = mem[64]
                                _33392 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35686 = sha3(mem[mem[64] len _33392 + _33391 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35686
                                _36001 = mem[64]
                                _36002 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36002 + _36001 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36558 = mem[64]
                                _36559 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37910 = sha3(mem[mem[64] len _36559 + _36558 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _37910
                                _38383 = mem[64]
                                _38384 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38384 + _38383 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3882]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878][s].field_0) = uint256(stor[idx + sha3(_3882)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3882])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33394 = mem[64]
                                _33395 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35691 = sha3(mem[mem[64] len _33395 + _33394 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35691
                                _36005 = mem[64]
                                _36006 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36006 + _36005 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36563 = mem[64]
                                _36564 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37920 = sha3(mem[mem[64] len _36564 + _36563 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _37920
                                _38389 = mem[64]
                                _38390 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38390 + _38389 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36566 = mem[64]
                                _36567 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37925 = sha3(mem[mem[64] len _36567 + _36566 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _37925
                                _38393 = mem[64]
                                _38394 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38394 + _38393 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _38944 = mem[64]
                                _38945 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39355 = sha3(mem[mem[64] len _38945 + _38944 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _39355
                                _39665 = mem[64]
                                _39666 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39666 + _39665 - mem[64]]));
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
                    while idx < uint256(stor[_3882]):
                        require ext_code.size(address(stor[sha3(_3882) + idx]))
                        staticcall address(stor[sha3(_3882) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3882].field_0)
                            mem[0] = _3882 + 2
                            _11839 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11839] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3880])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3882 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3882 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _11839 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx]), uint256(stor[sha3(_3882 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[mem[64] + 68] = address(stor[_3880])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx]), address(stor[_3880]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[0] = _3882 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3882) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3882 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3880])][_3878].field_1280) = 0
                    uint256(owners[_3882]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) = uint256(stor[_3882])
                    if not uint256(stor[_3882]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _30350 = mem[64]
                                _30351 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var98001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33041 = sha3(mem[mem[64] len _30351 + _30350 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _33041
                                _33119 = mem[64]
                                _33120 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33120 + _33119 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33399 = mem[64]
                                _33400 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35701 = sha3(mem[mem[64] len _33400 + _33399 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35701
                                _36011 = mem[64]
                                _36012 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36012 + _36011 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33402 = mem[64]
                                _33403 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35706 = sha3(mem[mem[64] len _33403 + _33402 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35706
                                _36015 = mem[64]
                                _36016 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36016 + _36015 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36573 = mem[64]
                                _36574 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37940 = sha3(mem[mem[64] len _36574 + _36573 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _37940
                                _38401 = mem[64]
                                _38402 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38402 + _38401 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3882]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878][s].field_0) = uint256(stor[idx + sha3(_3882)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3882])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33405 = mem[64]
                                _33406 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35711 = sha3(mem[mem[64] len _33406 + _33405 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35711
                                _36019 = mem[64]
                                _36020 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36020 + _36019 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36578 = mem[64]
                                _36579 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37950 = sha3(mem[mem[64] len _36579 + _36578 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _37950
                                _38407 = mem[64]
                                _38408 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38408 + _38407 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36581 = mem[64]
                                _36582 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37955 = sha3(mem[mem[64] len _36582 + _36581 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _37955
                                _38411 = mem[64]
                                _38412 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38412 + _38411 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _38953 = mem[64]
                                _38954 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39375 = sha3(mem[mem[64] len _38954 + _38953 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _39375
                                _39675 = mem[64]
                                _39676 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39676 + _39675 - mem[64]]));
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
                if platformFee * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call address(stor[_3880]) with:
                   value msg.value - (platformFee * msg.value / 1000) wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7246616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 269 len 24]
                    idx = 0
                    while idx < uint256(stor[_3882]):
                        require ext_code.size(address(stor[sha3(_3882) + idx]))
                        staticcall address(stor[sha3(_3882) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3882].field_0)
                            mem[0] = _3882 + 2
                            _11844 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11844] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3880])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3882 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3882 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _11844 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx]), uint256(stor[sha3(_3882 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[mem[64] + 68] = address(stor[_3880])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx]), address(stor[_3880]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[0] = _3882 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3882) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3882 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3880])][_3878].field_1280) = 0
                    uint256(owners[_3882]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) = uint256(stor[_3882])
                    if not uint256(stor[_3882]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _30354 = mem[64]
                                _30355 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var98001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33046 = sha3(mem[mem[64] len _30355 + _30354 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _33046
                                _33123 = mem[64]
                                _33124 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33124 + _33123 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33410 = mem[64]
                                _33411 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35721 = sha3(mem[mem[64] len _33411 + _33410 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35721
                                _36025 = mem[64]
                                _36026 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36026 + _36025 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33413 = mem[64]
                                _33414 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35726 = sha3(mem[mem[64] len _33414 + _33413 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35726
                                _36029 = mem[64]
                                _36030 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36030 + _36029 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36588 = mem[64]
                                _36589 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37970 = sha3(mem[mem[64] len _36589 + _36588 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _37970
                                _38419 = mem[64]
                                _38420 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38420 + _38419 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3882]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878][s].field_0) = uint256(stor[idx + sha3(_3882)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3882])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33416 = mem[64]
                                _33417 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35731 = sha3(mem[mem[64] len _33417 + _33416 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35731
                                _36033 = mem[64]
                                _36034 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36034 + _36033 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36593 = mem[64]
                                _36594 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37980 = sha3(mem[mem[64] len _36594 + _36593 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _37980
                                _38425 = mem[64]
                                _38426 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38426 + _38425 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36596 = mem[64]
                                _36597 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37985 = sha3(mem[mem[64] len _36597 + _36596 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _37985
                                _38429 = mem[64]
                                _38430 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38430 + _38429 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _38962 = mem[64]
                                _38963 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39395 = sha3(mem[mem[64] len _38963 + _38962 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _39395
                                _39685 = mem[64]
                                _39686 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39686 + _39685 - mem[64]]));
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
                    while idx < uint256(stor[_3882]):
                        require ext_code.size(address(stor[sha3(_3882) + idx]))
                        staticcall address(stor[sha3(_3882) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3882].field_0)
                            mem[0] = _3882 + 2
                            _11849 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11849] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3880])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3882 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3882 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _11849 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx]), uint256(stor[sha3(_3882 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[mem[64] + 68] = address(stor[_3880])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx]), address(stor[_3880]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[0] = _3882 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3882) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3882 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3880])][_3878].field_1280) = 0
                    uint256(owners[_3882]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) = uint256(stor[_3882])
                    if not uint256(stor[_3882]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _30358 = mem[64]
                                _30359 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var98001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33051 = sha3(mem[mem[64] len _30359 + _30358 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _33051
                                _33127 = mem[64]
                                _33128 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33128 + _33127 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33421 = mem[64]
                                _33422 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35741 = sha3(mem[mem[64] len _33422 + _33421 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35741
                                _36039 = mem[64]
                                _36040 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36040 + _36039 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33424 = mem[64]
                                _33425 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35746 = sha3(mem[mem[64] len _33425 + _33424 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35746
                                _36043 = mem[64]
                                _36044 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36044 + _36043 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36603 = mem[64]
                                _36604 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38000 = sha3(mem[mem[64] len _36604 + _36603 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38000
                                _38437 = mem[64]
                                _38438 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38438 + _38437 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3882]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878][s].field_0) = uint256(stor[idx + sha3(_3882)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3882])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33427 = mem[64]
                                _33428 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35751 = sha3(mem[mem[64] len _33428 + _33427 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35751
                                _36047 = mem[64]
                                _36048 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36048 + _36047 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36608 = mem[64]
                                _36609 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38010 = sha3(mem[mem[64] len _36609 + _36608 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38010
                                _38443 = mem[64]
                                _38444 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38444 + _38443 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36611 = mem[64]
                                _36612 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38015 = sha3(mem[mem[64] len _36612 + _36611 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38015
                                _38447 = mem[64]
                                _38448 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38448 + _38447 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _38971 = mem[64]
                                _38972 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39415 = sha3(mem[mem[64] len _38972 + _38971 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _39415
                                _39695 = mem[64]
                                _39696 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39696 + _39695 - mem[64]]));
    else:
        if address(stor5[_3882]) != msg.sender:
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
                call address(stor[_3880]) with:
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
                    while idx < uint256(stor[_3882]):
                        require ext_code.size(address(stor[sha3(_3882) + idx]))
                        staticcall address(stor[sha3(_3882) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3882].field_0)
                            mem[0] = _3882 + 2
                            _11894 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11894] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3880])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3882 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3882 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _11894 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx]), uint256(stor[sha3(_3882 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[mem[64] + 68] = address(stor[_3880])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx]), address(stor[_3880]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[0] = _3882 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3882) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3882 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3880])][_3878].field_1280) = 0
                    uint256(owners[_3882]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) = uint256(stor[_3882])
                    if not uint256(stor[_3882]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _30394 = mem[64]
                                _30395 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var99001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33096 = sha3(mem[mem[64] len _30395 + _30394 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _33096
                                _33163 = mem[64]
                                _33164 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33164 + _33163 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33520 = mem[64]
                                _33521 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35921 = sha3(mem[mem[64] len _33521 + _33520 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35921
                                _36165 = mem[64]
                                _36166 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36166 + _36165 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33523 = mem[64]
                                _33524 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35926 = sha3(mem[mem[64] len _33524 + _33523 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35926
                                _36169 = mem[64]
                                _36170 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36170 + _36169 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36738 = mem[64]
                                _36739 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38270 = sha3(mem[mem[64] len _36739 + _36738 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38270
                                _38599 = mem[64]
                                _38600 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38600 + _38599 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3882]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878][s].field_0) = uint256(stor[idx + sha3(_3882)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3882])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33526 = mem[64]
                                _33527 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35931 = sha3(mem[mem[64] len _33527 + _33526 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35931
                                _36173 = mem[64]
                                _36174 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36174 + _36173 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36743 = mem[64]
                                _36744 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38280 = sha3(mem[mem[64] len _36744 + _36743 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38280
                                _38605 = mem[64]
                                _38606 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38606 + _38605 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36746 = mem[64]
                                _36747 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38285 = sha3(mem[mem[64] len _36747 + _36746 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38285
                                _38609 = mem[64]
                                _38610 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38610 + _38609 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _39052 = mem[64]
                                _39053 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39595 = sha3(mem[mem[64] len _39053 + _39052 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _39595
                                _39785 = mem[64]
                                _39786 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39786 + _39785 - mem[64]]));
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
                    while idx < uint256(stor[_3882]):
                        require ext_code.size(address(stor[sha3(_3882) + idx]))
                        staticcall address(stor[sha3(_3882) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3882].field_0)
                            mem[0] = _3882 + 2
                            _11899 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11899] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3880])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3882 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3882 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _11899 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx]), uint256(stor[sha3(_3882 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[mem[64] + 68] = address(stor[_3880])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx]), address(stor[_3880]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[0] = _3882 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3882) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3882 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3880])][_3878].field_1280) = 0
                    uint256(owners[_3882]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) = uint256(stor[_3882])
                    if not uint256(stor[_3882]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _30398 = mem[64]
                                _30399 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var99001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33101 = sha3(mem[mem[64] len _30399 + _30398 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _33101
                                _33167 = mem[64]
                                _33168 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33168 + _33167 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33531 = mem[64]
                                _33532 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35941 = sha3(mem[mem[64] len _33532 + _33531 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35941
                                _36179 = mem[64]
                                _36180 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36180 + _36179 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33534 = mem[64]
                                _33535 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35946 = sha3(mem[mem[64] len _33535 + _33534 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35946
                                _36183 = mem[64]
                                _36184 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36184 + _36183 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36753 = mem[64]
                                _36754 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38300 = sha3(mem[mem[64] len _36754 + _36753 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38300
                                _38617 = mem[64]
                                _38618 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38618 + _38617 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3882]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878][s].field_0) = uint256(stor[idx + sha3(_3882)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3882])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33537 = mem[64]
                                _33538 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35951 = sha3(mem[mem[64] len _33538 + _33537 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35951
                                _36187 = mem[64]
                                _36188 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36188 + _36187 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36758 = mem[64]
                                _36759 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38310 = sha3(mem[mem[64] len _36759 + _36758 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38310
                                _38623 = mem[64]
                                _38624 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38624 + _38623 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36761 = mem[64]
                                _36762 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38315 = sha3(mem[mem[64] len _36762 + _36761 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38315
                                _38627 = mem[64]
                                _38628 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38628 + _38627 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _39061 = mem[64]
                                _39062 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39615 = sha3(mem[mem[64] len _39062 + _39061 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _39615
                                _39795 = mem[64]
                                _39796 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39796 + _39795 - mem[64]]));
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
                call address(stor[_3880]) with:
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
                    while idx < uint256(stor[_3882]):
                        require ext_code.size(address(stor[sha3(_3882) + idx]))
                        staticcall address(stor[sha3(_3882) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3882].field_0)
                            mem[0] = _3882 + 2
                            _11904 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11904] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3880])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3882 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3882 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _11904 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx]), uint256(stor[sha3(_3882 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[mem[64] + 68] = address(stor[_3880])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx]), address(stor[_3880]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[0] = _3882 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3882) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3882 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3880])][_3878].field_1280) = 0
                    uint256(owners[_3882]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) = uint256(stor[_3882])
                    if not uint256(stor[_3882]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _30402 = mem[64]
                                _30403 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var99001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33106 = sha3(mem[mem[64] len _30403 + _30402 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _33106
                                _33171 = mem[64]
                                _33172 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33172 + _33171 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33542 = mem[64]
                                _33543 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35961 = sha3(mem[mem[64] len _33543 + _33542 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35961
                                _36193 = mem[64]
                                _36194 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36194 + _36193 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33545 = mem[64]
                                _33546 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35966 = sha3(mem[mem[64] len _33546 + _33545 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35966
                                _36197 = mem[64]
                                _36198 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36198 + _36197 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36768 = mem[64]
                                _36769 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38330 = sha3(mem[mem[64] len _36769 + _36768 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38330
                                _38635 = mem[64]
                                _38636 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38636 + _38635 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3882]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878][s].field_0) = uint256(stor[idx + sha3(_3882)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3882])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33548 = mem[64]
                                _33549 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35971 = sha3(mem[mem[64] len _33549 + _33548 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35971
                                _36201 = mem[64]
                                _36202 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36202 + _36201 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36773 = mem[64]
                                _36774 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38340 = sha3(mem[mem[64] len _36774 + _36773 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38340
                                _38641 = mem[64]
                                _38642 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38642 + _38641 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36776 = mem[64]
                                _36777 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38345 = sha3(mem[mem[64] len _36777 + _36776 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38345
                                _38645 = mem[64]
                                _38646 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38646 + _38645 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _39070 = mem[64]
                                _39071 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39635 = sha3(mem[mem[64] len _39071 + _39070 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _39635
                                _39805 = mem[64]
                                _39806 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39806 + _39805 - mem[64]]));
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
                    while idx < uint256(stor[_3882]):
                        require ext_code.size(address(stor[sha3(_3882) + idx]))
                        staticcall address(stor[sha3(_3882) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3882].field_0)
                            mem[0] = _3882 + 2
                            _11909 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11909] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3880])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3882 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3882 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _11909 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx]), uint256(stor[sha3(_3882 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[mem[64] + 68] = address(stor[_3880])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx]), address(stor[_3880]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[0] = _3882 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3882) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3882 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3880])][_3878].field_1280) = 0
                    uint256(owners[_3882]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) = uint256(stor[_3882])
                    if not uint256(stor[_3882]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _30406 = mem[64]
                                _30407 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var99001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33111 = sha3(mem[mem[64] len _30407 + _30406 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _33111
                                _33175 = mem[64]
                                _33176 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33176 + _33175 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33553 = mem[64]
                                _33554 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35981 = sha3(mem[mem[64] len _33554 + _33553 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35981
                                _36207 = mem[64]
                                _36208 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36208 + _36207 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33556 = mem[64]
                                _33557 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35986 = sha3(mem[mem[64] len _33557 + _33556 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35986
                                _36211 = mem[64]
                                _36212 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36212 + _36211 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36783 = mem[64]
                                _36784 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38360 = sha3(mem[mem[64] len _36784 + _36783 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38360
                                _38653 = mem[64]
                                _38654 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38654 + _38653 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3882]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878][s].field_0) = uint256(stor[idx + sha3(_3882)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3882])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33559 = mem[64]
                                _33560 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35991 = sha3(mem[mem[64] len _33560 + _33559 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35991
                                _36215 = mem[64]
                                _36216 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36216 + _36215 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36788 = mem[64]
                                _36789 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38370 = sha3(mem[mem[64] len _36789 + _36788 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38370
                                _38659 = mem[64]
                                _38660 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38660 + _38659 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36791 = mem[64]
                                _36792 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38375 = sha3(mem[mem[64] len _36792 + _36791 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38375
                                _38663 = mem[64]
                                _38664 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38664 + _38663 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _39079 = mem[64]
                                _39080 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39655 = sha3(mem[mem[64] len _39080 + _39079 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _39655
                                _39815 = mem[64]
                                _39816 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39816 + _39815 - mem[64]]));
        else:
            if platformFee * msg.value / msg.value != platformFee:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[arg1.length + ceil32(arg1.length) + 261 len 31]
            call sub_3740ebb3Address with:
               value platformFee * msg.value / 1000 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                38,
                                0x6c46616e746f6d4d61726b6574706c6163653a20466565207472616e73666572206661696c65,
                                mem[arg1.length + ceil32(arg1.length) + 266 len 26]
                if platformFee * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call address(stor[_3880]) with:
                   value msg.value - (platformFee * msg.value / 1000) wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7246616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + 268 len 24]
                    idx = 0
                    while idx < uint256(stor[_3882]):
                        require ext_code.size(address(stor[sha3(_3882) + idx]))
                        staticcall address(stor[sha3(_3882) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3882].field_0)
                            mem[0] = _3882 + 2
                            _11874 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11874] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3880])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3882 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3882 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _11874 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx]), uint256(stor[sha3(_3882 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[mem[64] + 68] = address(stor[_3880])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx]), address(stor[_3880]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[0] = _3882 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3882) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3882 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3880])][_3878].field_1280) = 0
                    uint256(owners[_3882]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) = uint256(stor[_3882])
                    if not uint256(stor[_3882]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _30378 = mem[64]
                                _30379 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var101001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33076 = sha3(mem[mem[64] len _30379 + _30378 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _33076
                                _33147 = mem[64]
                                _33148 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33148 + _33147 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33476 = mem[64]
                                _33477 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35841 = sha3(mem[mem[64] len _33477 + _33476 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35841
                                _36109 = mem[64]
                                _36110 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36110 + _36109 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33479 = mem[64]
                                _33480 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35846 = sha3(mem[mem[64] len _33480 + _33479 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35846
                                _36113 = mem[64]
                                _36114 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36114 + _36113 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36678 = mem[64]
                                _36679 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38150 = sha3(mem[mem[64] len _36679 + _36678 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38150
                                _38527 = mem[64]
                                _38528 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38528 + _38527 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3882]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878][s].field_0) = uint256(stor[idx + sha3(_3882)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3882])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33482 = mem[64]
                                _33483 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35851 = sha3(mem[mem[64] len _33483 + _33482 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35851
                                _36117 = mem[64]
                                _36118 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36118 + _36117 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36683 = mem[64]
                                _36684 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38160 = sha3(mem[mem[64] len _36684 + _36683 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38160
                                _38533 = mem[64]
                                _38534 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38534 + _38533 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36686 = mem[64]
                                _36687 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38165 = sha3(mem[mem[64] len _36687 + _36686 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38165
                                _38537 = mem[64]
                                _38538 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38538 + _38537 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _39016 = mem[64]
                                _39017 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39515 = sha3(mem[mem[64] len _39017 + _39016 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _39515
                                _39745 = mem[64]
                                _39746 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39746 + _39745 - mem[64]]));
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
                    while idx < uint256(stor[_3882]):
                        require ext_code.size(address(stor[sha3(_3882) + idx]))
                        staticcall address(stor[sha3(_3882) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3882].field_0)
                            mem[0] = _3882 + 2
                            _11879 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11879] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3880])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3882 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3882 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _11879 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx]), uint256(stor[sha3(_3882 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[mem[64] + 68] = address(stor[_3880])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx]), address(stor[_3880]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[0] = _3882 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3882) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3882 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3880])][_3878].field_1280) = 0
                    uint256(owners[_3882]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) = uint256(stor[_3882])
                    if not uint256(stor[_3882]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _30382 = mem[64]
                                _30383 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var101001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33081 = sha3(mem[mem[64] len _30383 + _30382 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _33081
                                _33151 = mem[64]
                                _33152 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33152 + _33151 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33487 = mem[64]
                                _33488 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35861 = sha3(mem[mem[64] len _33488 + _33487 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35861
                                _36123 = mem[64]
                                _36124 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36124 + _36123 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33490 = mem[64]
                                _33491 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35866 = sha3(mem[mem[64] len _33491 + _33490 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35866
                                _36127 = mem[64]
                                _36128 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36128 + _36127 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36693 = mem[64]
                                _36694 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38180 = sha3(mem[mem[64] len _36694 + _36693 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38180
                                _38545 = mem[64]
                                _38546 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38546 + _38545 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3882]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878][s].field_0) = uint256(stor[idx + sha3(_3882)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3882])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33493 = mem[64]
                                _33494 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35871 = sha3(mem[mem[64] len _33494 + _33493 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35871
                                _36131 = mem[64]
                                _36132 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36132 + _36131 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36698 = mem[64]
                                _36699 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38190 = sha3(mem[mem[64] len _36699 + _36698 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38190
                                _38551 = mem[64]
                                _38552 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38552 + _38551 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36701 = mem[64]
                                _36702 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38195 = sha3(mem[mem[64] len _36702 + _36701 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38195
                                _38555 = mem[64]
                                _38556 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38556 + _38555 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _39025 = mem[64]
                                _39026 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39535 = sha3(mem[mem[64] len _39026 + _39025 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _39535
                                _39755 = mem[64]
                                _39756 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39756 + _39755 - mem[64]]));
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
                if platformFee * msg.value / 1000 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call address(stor[_3880]) with:
                   value msg.value - (platformFee * msg.value / 1000) wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7246616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 269 len 24]
                    idx = 0
                    while idx < uint256(stor[_3882]):
                        require ext_code.size(address(stor[sha3(_3882) + idx]))
                        staticcall address(stor[sha3(_3882) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3882].field_0)
                            mem[0] = _3882 + 2
                            _11884 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11884] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3880])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3882 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3882 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _11884 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx]), uint256(stor[sha3(_3882 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[mem[64] + 68] = address(stor[_3880])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx]), address(stor[_3880]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[0] = _3882 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3882) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3882 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3880])][_3878].field_1280) = 0
                    uint256(owners[_3882]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) = uint256(stor[_3882])
                    if not uint256(stor[_3882]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _30386 = mem[64]
                                _30387 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var101001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33086 = sha3(mem[mem[64] len _30387 + _30386 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _33086
                                _33155 = mem[64]
                                _33156 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33156 + _33155 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33498 = mem[64]
                                _33499 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35881 = sha3(mem[mem[64] len _33499 + _33498 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35881
                                _36137 = mem[64]
                                _36138 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36138 + _36137 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33501 = mem[64]
                                _33502 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35886 = sha3(mem[mem[64] len _33502 + _33501 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35886
                                _36141 = mem[64]
                                _36142 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36142 + _36141 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36708 = mem[64]
                                _36709 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38210 = sha3(mem[mem[64] len _36709 + _36708 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38210
                                _38563 = mem[64]
                                _38564 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38564 + _38563 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3882]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878][s].field_0) = uint256(stor[idx + sha3(_3882)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3882])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33504 = mem[64]
                                _33505 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35891 = sha3(mem[mem[64] len _33505 + _33504 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35891
                                _36145 = mem[64]
                                _36146 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36146 + _36145 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36713 = mem[64]
                                _36714 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38220 = sha3(mem[mem[64] len _36714 + _36713 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38220
                                _38569 = mem[64]
                                _38570 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38570 + _38569 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36716 = mem[64]
                                _36717 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38225 = sha3(mem[mem[64] len _36717 + _36716 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38225
                                _38573 = mem[64]
                                _38574 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38574 + _38573 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _39034 = mem[64]
                                _39035 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39555 = sha3(mem[mem[64] len _39035 + _39034 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _39555
                                _39765 = mem[64]
                                _39766 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39766 + _39765 - mem[64]]));
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
                    while idx < uint256(stor[_3882]):
                        require ext_code.size(address(stor[sha3(_3882) + idx]))
                        staticcall address(stor[sha3(_3882) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3882].field_0)
                            mem[0] = _3882 + 2
                            _11889 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11889] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3880])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3882 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3882 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 196] = mem[s + _11889 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3882) + idx]))
                            call address(stor[sha3(_3882) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3880]), msg.sender, uint256(stor[sha3(_3882 + 1) + idx]), uint256(stor[sha3(_3882 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[mem[64] + 68] = address(stor[_3880])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx]), address(stor[_3880]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3882])
                        require idx < stor1[_3882]
                        mem[0] = _3882 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3882) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3882 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3882) + idx]), uint256(stor[sha3(_3882 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3880])][_3878][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3880])][_3878].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3880])][_3878].field_1280) = 0
                    uint256(owners[_3882]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) = uint256(stor[_3882])
                    if not uint256(stor[_3882]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _30390 = mem[64]
                                _30391 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                var101001 = floor32(mem[96]) + 128
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33091 = sha3(mem[mem[64] len _30391 + _30390 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _33091
                                _33159 = mem[64]
                                _33160 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33160 + _33159 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33509 = mem[64]
                                _33510 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35901 = sha3(mem[mem[64] len _33510 + _33509 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35901
                                _36151 = mem[64]
                                _36152 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36152 + _36151 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33512 = mem[64]
                                _33513 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35906 = sha3(mem[mem[64] len _33513 + _33512 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35906
                                _36155 = mem[64]
                                _36156 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36156 + _36155 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36723 = mem[64]
                                _36724 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38240 = sha3(mem[mem[64] len _36724 + _36723 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38240
                                _38581 = mem[64]
                                _38582 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38582 + _38581 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3882]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878][s].field_0) = uint256(stor[idx + sha3(_3882)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3882])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3878][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) = stor1[_3882]
                        if not stor1[_3882]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _33515 = mem[64]
                                _33516 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35911 = sha3(mem[mem[64] len _33516 + _33515 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _35911
                                _36159 = mem[64]
                                _36160 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36160 + _36159 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36728 = mem[64]
                                _36729 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38250 = sha3(mem[mem[64] len _36729 + _36728 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38250
                                _38587 = mem[64]
                                _38588 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38588 + _38587 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3882] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 1].field_0) = uint256(stor[idx + sha3(_3882 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3882]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) = uint256(sub_aa3a6b36[_3882].field_0)
                            if not uint256(sub_aa3a6b36[_3882].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _36731 = mem[64]
                                _36732 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38255 = sha3(mem[mem[64] len _36732 + _36731 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _38255
                                _38591 = mem[64]
                                _38592 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38592 + _38591 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3882].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][s + 2].field_0) = uint256(stor[idx + sha3(_3882 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3882].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3878][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_768) = uint256(owners[_3882])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3878].field_1024) = stor4[_3882]
                                address(sub_aa3a6b36[address(msg.sender)][_3878].field_1280) = address(stor5[_3882])
                                address(owners[_3878]) = msg.sender
                                address(sub_a5851902[_3878][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3878][address(msg.sender)].field_512) = 0
                                _39043 = mem[64]
                                _39044 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39575 = sha3(mem[mem[64] len _39044 + _39043 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3880]), msg.sender, _39575
                                _39775 = mem[64]
                                _39776 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39776 + _39775 - mem[64]]));
    stor1.length = 1
}



}
