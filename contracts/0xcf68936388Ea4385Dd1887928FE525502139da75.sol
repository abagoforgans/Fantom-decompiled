contract main {




// =====================  Runtime code  =====================


#
#  - buyItem(string arg1)
#  - sub_2e792905(?)
#  - sub_84328e20(?)
#
address owner;
array of uint256 stor1;
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
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    if sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])].field_768 <= 0:
        revert with 0, 'Not listed bundle.'
    sub_aa3a6b36[address(msg.sender)][sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])].field_768 = arg2
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
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
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    address(sub_a5851902[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][address(msg.sender)].field_0) = 0
    sub_a5851902[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][address(msg.sender)].field_256 = 0
    sub_a5851902[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][address(msg.sender)].field_512 = 0
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
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
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    _610 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    if not owners[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]]:
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
            while idx < sub_aa3a6b36[stor3[_610]][_610].field_0:
                require idx < sub_aa3a6b36[stor3[_610]][_610].field_256
                mem[0] = sha3(_610, sha3(owners[_610], 2)) + 1
                mem[arg1.length + ceil32(arg1.length) + 488] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                mem[arg1.length + ceil32(arg1.length) + 492] = address(sub_aa3a6b36[stor3[_610]][_610][idx].field_0)
                mem[arg1.length + ceil32(arg1.length) + 524] = sub_aa3a6b36[stor3[_610]][_610][idx + 1].field_0
                require ext_code.size(auctionAddress)
                call auctionAddress.0x4ffccb85 with:
                     gas gas_remaining wei
                    args address(sub_aa3a6b36[stor3[_610]][_610][idx].field_0), sub_aa3a6b36[stor3[_610]][_610][idx + 1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            address(sub_a5851902[_610][address(msg.sender)].field_0) = arg2
            sub_a5851902[_610][address(msg.sender)].field_256 = arg3
            sub_a5851902[_610][address(msg.sender)].field_512 = arg4
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
            while idx < sub_aa3a6b36[stor3[_610]][_610].field_0:
                require idx < sub_aa3a6b36[stor3[_610]][_610].field_256
                mem[0] = sha3(_610, sha3(owners[_610], 2)) + 1
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 489] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 493] = address(sub_aa3a6b36[stor3[_610]][_610][idx].field_0)
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 525] = sub_aa3a6b36[stor3[_610]][_610][idx + 1].field_0
                require ext_code.size(auctionAddress)
                call auctionAddress.0x4ffccb85 with:
                     gas gas_remaining wei
                    args address(sub_aa3a6b36[stor3[_610]][_610][idx].field_0), sub_aa3a6b36[stor3[_610]][_610][idx + 1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            address(sub_a5851902[_610][address(msg.sender)].field_0) = arg2
            sub_a5851902[_610][address(msg.sender)].field_256 = arg3
            sub_a5851902[_610][address(msg.sender)].field_512 = arg4
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
            while idx < sub_aa3a6b36[stor3[_610]][_610].field_0:
                require idx < sub_aa3a6b36[stor3[_610]][_610].field_256
                mem[0] = sha3(_610, sha3(owners[_610], 2)) + 1
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 489] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 493] = address(sub_aa3a6b36[stor3[_610]][_610][idx].field_0)
                mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 525] = sub_aa3a6b36[stor3[_610]][_610][idx + 1].field_0
                require ext_code.size(auctionAddress)
                call auctionAddress.0x4ffccb85 with:
                     gas gas_remaining wei
                    args address(sub_aa3a6b36[stor3[_610]][_610][idx].field_0), sub_aa3a6b36[stor3[_610]][_610][idx + 1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            address(sub_a5851902[_610][address(msg.sender)].field_0) = arg2
            sub_a5851902[_610][address(msg.sender)].field_256 = arg3
            sub_a5851902[_610][address(msg.sender)].field_512 = arg4
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
            while idx < sub_aa3a6b36[stor3[_610]][_610].field_0:
                require idx < sub_aa3a6b36[stor3[_610]][_610].field_256
                mem[0] = sha3(_610, sha3(owners[_610], 2)) + 1
                mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 490] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 494] = address(sub_aa3a6b36[stor3[_610]][_610][idx].field_0)
                mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 526] = sub_aa3a6b36[stor3[_610]][_610][idx + 1].field_0
                require ext_code.size(auctionAddress)
                call auctionAddress.0x4ffccb85 with:
                     gas gas_remaining wei
                    args address(sub_aa3a6b36[stor3[_610]][_610][idx].field_0), sub_aa3a6b36[stor3[_610]][_610][idx + 1].field_0, mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            address(sub_a5851902[_610][address(msg.sender)].field_0) = arg2
            sub_a5851902[_610][address(msg.sender)].field_256 = arg3
            sub_a5851902[_610][address(msg.sender)].field_512 = arg4
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
            if owners[stor4[address(arg1)][arg2][idx]]:
                mem[0] = stor4[address(arg1)][arg2][idx]
                mem[32] = sha3(owners[stor4[address(arg1)][arg2][idx]], 2)
                if sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_768:
                    mem[32] = sha3(address(arg1), sha3(stor4[address(arg1)][arg2][idx], 5))
                    stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] = 0
                    if sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0 != 1:
                        require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0 - 1 < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                        if stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0 - 1:
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
                        address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0].field_0) = 0
                        require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256 - 1 < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                        stor[('array', 1, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256].field_0 = 0
                        require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512 - 1 < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                        stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512].field_0 = 0
                    else:
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
                                emit ItemCanceled(mem[mem[64] len _717 + _715 + -mem[64] + 64], owners[stor4[address(arg1)][arg2][idx]]);
                            else:
                                mem[floor32(_717) + _715 + 64] = mem[floor32(_717) + _715 + -(_717 % 32) + 96 len _717 % 32]
                                emit ItemCanceled(mem[mem[64] len floor32(_717) + _715 + -mem[64] + 96], owners[stor4[address(arg1)][arg2][idx]]);
                        else:
                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], 6)
                            s = sha3(sha3(stor4[address(arg1)][arg2][idx], 6))
                            while sha3(sha3(stor4[address(arg1)][arg2][idx], 6)) + (stor6[stor4[address(arg1)][arg2][idx]].length + 31 / 32) > s:
                                stor[s] = 0
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
                                emit ItemCanceled(mem[mem[64] len _774 + _772 + -mem[64] + 64], owners[stor4[address(arg1)][arg2][idx]]);
                            else:
                                mem[floor32(_774) + _772 + 64] = mem[floor32(_774) + _772 + -(_774 % 32) + 96 len _774 % 32]
                                emit ItemCanceled(mem[mem[64] len floor32(_774) + _772 + -mem[64] + 96], owners[stor4[address(arg1)][arg2][idx]]);
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
                mem[32] = sha3(owners[stor4[address(arg1)][arg2][idx]], 2)
                if sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_768:
                    mem[32] = sha3(address(arg1), sha3(stor4[address(arg1)][arg2][idx], 5))
                    stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] = 0
                    if sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0 != 1:
                        require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0 - 1 < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0
                        if stor5[stor4[address(arg1)][arg2][idx]][address(arg1)][arg2] < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0 - 1:
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
                        address(sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]][sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_0].field_0) = 0
                        require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256 - 1 < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256
                        stor[('array', 1, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_256].field_0 = 0
                        require sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512 - 1 < sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512
                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], sha3(owners[stor4[address(arg1)][arg2][idx]], 2)) + 2
                        stor[('array', 2, ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('map', ('stor', ('map', ('stor', ('array', ('var', 0), ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor4', 4))))), ('name', 'stor3', 3))), ('name', 'sub_aa3a6b36', 2)))) + sub_aa3a6b36[stor3[stor4[address(arg1)][arg2][idx]]][stor4[address(arg1)][arg2][idx]].field_512].field_0 = 0
                    else:
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
                                emit ItemCanceled(mem[mem[64] len _724 + _722 + -mem[64] + 64], owners[stor4[address(arg1)][arg2][idx]]);
                            else:
                                mem[floor32(_724) + _722 + 64] = mem[floor32(_724) + _722 + -(_724 % 32) + 96 len _724 % 32]
                                emit ItemCanceled(mem[mem[64] len floor32(_724) + _722 + -mem[64] + 96], owners[stor4[address(arg1)][arg2][idx]]);
                        else:
                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], 6)
                            s = sha3(sha3(stor4[address(arg1)][arg2][idx], 6))
                            while sha3(sha3(stor4[address(arg1)][arg2][idx], 6)) + (stor6[stor4[address(arg1)][arg2][idx]].length + 31 / 32) > s:
                                stor[s] = 0
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
                                emit ItemCanceled(mem[mem[64] len _780 + _778 + -mem[64] + 64], owners[stor4[address(arg1)][arg2][idx]]);
                            else:
                                mem[floor32(_780) + _778 + 64] = mem[floor32(_780) + _778 + -(_780 % 32) + 96 len _780 % 32]
                                emit ItemCanceled(mem[mem[64] len floor32(_780) + _778 + -mem[64] + 96], owners[stor4[address(arg1)][arg2][idx]]);
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



}
