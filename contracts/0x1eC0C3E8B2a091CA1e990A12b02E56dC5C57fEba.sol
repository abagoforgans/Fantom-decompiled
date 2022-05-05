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
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateAuction(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    auctionAddress = arg1
}

function updateMarketplace(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketplaceAddress = arg1
}

function updatePlatformFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    platformFee = arg1
    emit UpdatePlatformFee(arg1);
}

function updatePlatformFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3740ebb3Address = arg1
    emit 0xe57e7c1f: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
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
        revert with 0, 'ReentrancyGuard: reentrant call'
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
    if ext_code.size(arg2) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[arg1.length + ceil32(arg1.length) + 324 len 64] = approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0
    mem[arg1.length + ceil32(arg1.length) + 388 len 0] = 0
    call arg2 with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), address(this.address) << 64, 0, 0) << 256, mem[arg1.length + ceil32(arg1.length) + 388 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg1.length > 0:
                revert with arg1[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if arg1.length > 0:
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
               args address(this.address), this.address
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
        if ext_code.size(arg2) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[arg1.length + ceil32(arg1.length) + 488 len 64] = 0, address(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg2 with:
             gas gas_remaining wei
            args -1, mem[arg1.length + ceil32(arg1.length) + 424 len 28], mem[arg1.length + ceil32(arg1.length) + 552 len 4]
        if not return_data.size:
            if not ext_call.success:
                if arg1.length > 0:
                    revert with arg1[all]
                revert with 0, 'SafeERC20: low-level call failed'
            if arg1.length > 0:
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
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
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
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            require ext_code.size(arg2)
            staticcall arg2.allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), this.address
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
            if ext_code.size(arg2) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 489 len 64] = 0, address(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 581 len 4] = 0
            call arg2 with:
                 gas gas_remaining wei
                args -1, mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 425 len 28], mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 553 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg1.length > 0:
                        revert with arg1[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg1.length > 0:
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
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
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
        else:
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
                   args address(this.address), this.address
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
            if ext_code.size(arg2) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 489 len 64] = 0, address(this.address), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 581 len 4] = 0
            call arg2 with:
                 gas gas_remaining wei
                args -1, mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 425 len 28], mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 553 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg1.length > 0:
                        revert with arg1[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg1.length > 0:
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
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
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
    if auctionAddress == msg.sender:
        mem[0] = arg2
        mem[32] = sha3(address(arg1), 4)
        idx = 0
        while idx < stor4[address(arg1)][arg2]:
            if stor4[address(arg1)][arg2] <= idx:
                revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
            require idx < stor4[address(arg1)][arg2]
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
                        address(owners[stor4[address(arg1)][arg2][idx]]) = 0
                        mem[0] = stor4[address(arg1)][arg2][idx]
                        mem[32] = 6
                        _587 = mem[64]
                        mem[64] = mem[64] + ceil32(stor6[stor4[address(arg1)][arg2][idx]].length) + 32
                        mem[_587] = stor6[stor4[address(arg1)][arg2][idx]].length
                        mem[0] = sha3(stor4[address(arg1)][arg2][idx], 6)
                        mem[_587 + 32] = stor6[stor4[address(arg1)][arg2][idx]]
                        s = _587 + 32
                        t = sha3(mem[0])
                        while _587 + stor6[stor4[address(arg1)][arg2][idx]].length > s:
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
                            mem[mem[64] + 32] = mem[_587]
                            _724 = mem[_587]
                            s = 0
                            while s < _724:
                                mem[_722 + s + 64] = mem[_587 + s + 32]
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
                            _789 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[_587]
                            _791 = mem[_587]
                            s = 0
                            while s < _791:
                                mem[_789 + s + 64] = mem[_587 + s + 32]
                                s = s + 32
                                continue 
                            if not _791 % 32:
                                emit ItemCanceled(mem[mem[64] len _791 + _789 + -mem[64] + 64], address(owners[stor4[address(arg1)][arg2][idx]]));
                            else:
                                mem[floor32(_791) + _789 + 64] = mem[floor32(_791) + _789 + -(_791 % 32) + 96 len _791 % 32]
                                emit ItemCanceled(mem[mem[64] len floor32(_791) + _789 + -mem[64] + 96], address(owners[stor4[address(arg1)][arg2][idx]]));
            idx = idx + 1
            continue 
    else:
        if marketplaceAddress != msg.sender:
            revert with 0, 'Sender must be auction'
        mem[0] = arg2
        mem[32] = sha3(address(arg1), 4)
        idx = 0
        while idx < stor4[address(arg1)][arg2]:
            if stor4[address(arg1)][arg2] <= idx:
                revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[mem[64] + 102 len 30]
            require idx < stor4[address(arg1)][arg2]
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
                        address(owners[stor4[address(arg1)][arg2][idx]]) = 0
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
                            mem[s + 32] = stor1[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[0] = stor4[address(arg1)][arg2][idx]
                        mem[32] = 6
                        stor6[stor4[address(arg1)][arg2][idx]] = 0
                        if 31 >= stor6[stor4[address(arg1)][arg2][idx]].length:
                            _727 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[_590]
                            _729 = mem[_590]
                            s = 0
                            while s < _729:
                                mem[_727 + s + 64] = mem[_590 + s + 32]
                                s = s + 32
                                continue 
                            if not _729 % 32:
                                emit ItemCanceled(mem[mem[64] len _729 + _727 + -mem[64] + 64], address(owners[stor4[address(arg1)][arg2][idx]]));
                            else:
                                mem[floor32(_729) + _727 + 64] = mem[floor32(_729) + _727 + -(_729 % 32) + 96 len _729 % 32]
                                emit ItemCanceled(mem[mem[64] len floor32(_729) + _727 + -mem[64] + 96], address(owners[stor4[address(arg1)][arg2][idx]]));
                        else:
                            mem[0] = sha3(stor4[address(arg1)][arg2][idx], 6)
                            s = sha3(sha3(stor4[address(arg1)][arg2][idx], 6))
                            while sha3(sha3(stor4[address(arg1)][arg2][idx], 6)) + (stor6[stor4[address(arg1)][arg2][idx]].length + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                            _792 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[_590]
                            _794 = mem[_590]
                            s = 0
                            while s < _794:
                                mem[_792 + s + 64] = mem[_590 + s + 32]
                                s = s + 32
                                continue 
                            if not _794 % 32:
                                emit ItemCanceled(mem[mem[64] len _794 + _792 + -mem[64] + 64], address(owners[stor4[address(arg1)][arg2][idx]]));
                            else:
                                mem[floor32(_794) + _792 + 64] = mem[floor32(_794) + _792 + -(_794 % 32) + 96 len _794 % 32]
                                emit ItemCanceled(mem[mem[64] len floor32(_794) + _792 + -mem[64] + 96], address(owners[stor4[address(arg1)][arg2][idx]]));
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
        revert with 0, 'ReentrancyGuard: reentrant call'
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
    if not uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0):
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
    else:
        mem[(2 * arg1.length) + ceil32(arg1.length) + 608] = address(sub_aa3a6b36[address(msg.sender)][_178].field_0)
        idx = (2 * arg1.length) + ceil32(arg1.length) + 608
        s = 0
        while (2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + 576 > idx:
            mem[idx + 32] = address(sub_aa3a6b36[address(msg.sender)][_178][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(2 * arg1.length) + ceil32(arg1.length) + 384] = (2 * arg1.length) + ceil32(arg1.length) + 576
        mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + 608] = uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)
        if not uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256):
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
            if not uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512):
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
                    emit ItemCanceled(address arg1, string arg2):
                                      32,
                                      mem[(2 * arg1.length) + ceil32(arg1.length) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_0)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_256)) + (32 * uint256(sub_aa3a6b36[address(msg.sender)][_178].field_512)) + 704 len arg1.length + 32],
                                      msg.sender,
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
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[64] = arg1.length + ceil32(arg1.length) + 160
    _3888 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    _3890 = sha3(sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]), 3)
    if not address(owners[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]]):
        revert with 0, 'Invalid Bundle ID.'
    mem[32] = sha3(address(owners[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]]), 2)
    _3892 = sha3(sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]), sha3(address(owners[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]]), 2))
    if uint256(sub_aa3a6b36[address(stor3[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]])][sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])].field_768) <= 0:
        revert with 0, 'Not listed bundle.'
    idx = 0
    while idx < uint256(stor[_3892]):
        require ext_code.size(address(stor[sha3(_3892) + idx]))
        staticcall address(stor[sha3(_3892) + idx]).supportsInterface(bytes4 arg1) with:
                gas gas_remaining wei
               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < uint256(stor[_3892])
        if ext_call.return_data[0]:
            require idx < stor1[_3892]
            mem[0] = _3892 + 1
            mem[arg1.length + ceil32(arg1.length) + 164] = uint256(stor[sha3(_3892 + 1) + idx])
            require ext_code.size(address(stor[sha3(_3892) + idx]))
            staticcall address(stor[sha3(_3892) + idx]).ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args uint256(stor[sha3(_3892 + 1) + idx])
            mem[arg1.length + ceil32(arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != address(stor[_3890]):
                revert with 0, 'Not owning the item.'
        else:
            mem[0] = _3892
            mem[arg1.length + ceil32(arg1.length) + 164] = 0xd9b67a2600000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(stor[sha3(_3892) + idx]))
            staticcall address(stor[sha3(_3892) + idx]).supportsInterface(bytes4 arg1) with:
                    gas gas_remaining wei
                   args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
            mem[arg1.length + ceil32(arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require idx < uint256(stor[_3892])
                require idx < uint256(sub_aa3a6b36[_3892].field_0)
                require idx < stor1[_3892]
                mem[0] = _3892 + 1
                mem[arg1.length + ceil32(arg1.length) + 164] = address(stor[_3890])
                mem[arg1.length + ceil32(arg1.length) + 196] = uint256(stor[sha3(_3892 + 1) + idx])
                require ext_code.size(address(stor[sha3(_3892) + idx]))
                staticcall address(stor[sha3(_3892) + idx]).balanceOf(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(stor[_3890]), uint256(stor[sha3(_3892 + 1) + idx])
                mem[arg1.length + ceil32(arg1.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < uint256(stor[sha3(_3892 + 2) + idx]):
                    revert with 0, 'Not owning the item.'
        idx = idx + 1
        continue 
    if block.timestamp < stor4[_3892]:
        revert with 0, 'Bundle is not buyable yet.'
    if msg.value < uint256(owners[_3892]):
        revert with 0, 'Not enough amount to buy item.'
    if not address(stor5[_3892]):
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
                call address(stor[_3890]) with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + 268 len 24]
                    idx = 0
                    while idx < uint256(stor[_3892]):
                        require ext_code.size(address(stor[sha3(_3892) + idx]))
                        staticcall address(stor[sha3(_3892) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3892].field_0)
                            mem[0] = _3892 + 2
                            _11888 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11888] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3890])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3892 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3892 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 196] = mem[_11888 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx]), uint256(stor[sha3(_3892 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[mem[64] + 68] = address(stor[_3890])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx]), address(stor[_3890]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[0] = _3892 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3892) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3892 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3890])][_3888].field_1280) = 0
                    uint256(owners[_3892]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) = uint256(stor[_3892])
                    if not uint256(stor[_3892]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _30392 = mem[64]
                                _30393 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33090 = sha3(mem[mem[64] len _30393 + _30392 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _33090
                                _33165 = mem[64]
                                _33166 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33166 + _33165 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33466 = mem[64]
                                _33467 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35795 = sha3(mem[mem[64] len _33467 + _33466 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35795
                                _36087 = mem[64]
                                _36088 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36088 + _36087 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33469 = mem[64]
                                _33470 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35800 = sha3(mem[mem[64] len _33470 + _33469 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35800
                                _36091 = mem[64]
                                _36092 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36092 + _36091 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36652 = mem[64]
                                _36653 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38064 = sha3(mem[mem[64] len _36653 + _36652 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38064
                                _38489 = mem[64]
                                _38490 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38490 + _38489 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3892]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888][s].field_0) = uint256(stor[idx + sha3(_3892)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3892])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33472 = mem[64]
                                _33473 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35805 = sha3(mem[mem[64] len _33473 + _33472 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35805
                                _36095 = mem[64]
                                _36096 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36096 + _36095 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36657 = mem[64]
                                _36658 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38074 = sha3(mem[mem[64] len _36658 + _36657 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38074
                                _38495 = mem[64]
                                _38496 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38496 + _38495 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36660 = mem[64]
                                _36661 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38079 = sha3(mem[mem[64] len _36661 + _36660 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38079
                                _38499 = mem[64]
                                _38500 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38500 + _38499 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _39014 = mem[64]
                                _39015 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39469 = sha3(mem[mem[64] len _39015 + _39014 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _39469
                                _39739 = mem[64]
                                _39740 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39740 + _39739 - mem[64]]));
                else:
                    mem[64] = arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 161
                    mem[arg1.length + ceil32(arg1.length) + 160] = return_data.size
                    mem[arg1.length + ceil32(arg1.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 269 len 24]
                    idx = 0
                    while idx < uint256(stor[_3892]):
                        require ext_code.size(address(stor[sha3(_3892) + idx]))
                        staticcall address(stor[sha3(_3892) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3892].field_0)
                            mem[0] = _3892 + 2
                            _11893 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11893] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3890])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3892 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3892 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 196] = mem[_11893 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx]), uint256(stor[sha3(_3892 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[mem[64] + 68] = address(stor[_3890])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx]), address(stor[_3890]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[0] = _3892 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3892) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3892 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3890])][_3888].field_1280) = 0
                    uint256(owners[_3892]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) = uint256(stor[_3892])
                    if not uint256(stor[_3892]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _30395 = mem[64]
                                _30396 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33095 = sha3(mem[mem[64] len _30396 + _30395 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _33095
                                _33169 = mem[64]
                                _33170 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33170 + _33169 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33477 = mem[64]
                                _33478 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35815 = sha3(mem[mem[64] len _33478 + _33477 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35815
                                _36101 = mem[64]
                                _36102 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36102 + _36101 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33480 = mem[64]
                                _33481 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35820 = sha3(mem[mem[64] len _33481 + _33480 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35820
                                _36105 = mem[64]
                                _36106 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36106 + _36105 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36667 = mem[64]
                                _36668 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38094 = sha3(mem[mem[64] len _36668 + _36667 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38094
                                _38507 = mem[64]
                                _38508 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38508 + _38507 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3892]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888][s].field_0) = uint256(stor[idx + sha3(_3892)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3892])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33483 = mem[64]
                                _33484 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35825 = sha3(mem[mem[64] len _33484 + _33483 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35825
                                _36109 = mem[64]
                                _36110 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36110 + _36109 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36672 = mem[64]
                                _36673 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38104 = sha3(mem[mem[64] len _36673 + _36672 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38104
                                _38513 = mem[64]
                                _38514 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38514 + _38513 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36675 = mem[64]
                                _36676 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38109 = sha3(mem[mem[64] len _36676 + _36675 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38109
                                _38517 = mem[64]
                                _38518 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38518 + _38517 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _39023 = mem[64]
                                _39024 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39489 = sha3(mem[mem[64] len _39024 + _39023 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _39489
                                _39749 = mem[64]
                                _39750 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39750 + _39749 - mem[64]]));
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
                call address(stor[_3890]) with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 269 len 24]
                    idx = 0
                    while idx < uint256(stor[_3892]):
                        require ext_code.size(address(stor[sha3(_3892) + idx]))
                        staticcall address(stor[sha3(_3892) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3892].field_0)
                            mem[0] = _3892 + 2
                            _11898 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11898] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3890])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3892 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3892 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 196] = mem[_11898 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx]), uint256(stor[sha3(_3892 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[mem[64] + 68] = address(stor[_3890])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx]), address(stor[_3890]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[0] = _3892 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3892) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3892 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3890])][_3888].field_1280) = 0
                    uint256(owners[_3892]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) = uint256(stor[_3892])
                    if not uint256(stor[_3892]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _30398 = mem[64]
                                _30399 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33100 = sha3(mem[mem[64] len _30399 + _30398 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _33100
                                _33173 = mem[64]
                                _33174 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33174 + _33173 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33488 = mem[64]
                                _33489 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35835 = sha3(mem[mem[64] len _33489 + _33488 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35835
                                _36115 = mem[64]
                                _36116 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36116 + _36115 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33491 = mem[64]
                                _33492 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35840 = sha3(mem[mem[64] len _33492 + _33491 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35840
                                _36119 = mem[64]
                                _36120 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36120 + _36119 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36682 = mem[64]
                                _36683 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38124 = sha3(mem[mem[64] len _36683 + _36682 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38124
                                _38525 = mem[64]
                                _38526 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38526 + _38525 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3892]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888][s].field_0) = uint256(stor[idx + sha3(_3892)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3892])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33494 = mem[64]
                                _33495 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35845 = sha3(mem[mem[64] len _33495 + _33494 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35845
                                _36123 = mem[64]
                                _36124 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36124 + _36123 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36687 = mem[64]
                                _36688 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38134 = sha3(mem[mem[64] len _36688 + _36687 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38134
                                _38531 = mem[64]
                                _38532 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38532 + _38531 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36690 = mem[64]
                                _36691 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38139 = sha3(mem[mem[64] len _36691 + _36690 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38139
                                _38535 = mem[64]
                                _38536 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38536 + _38535 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _39032 = mem[64]
                                _39033 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39509 = sha3(mem[mem[64] len _39033 + _39032 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _39509
                                _39759 = mem[64]
                                _39760 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39760 + _39759 - mem[64]]));
                else:
                    mem[64] = arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 162
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 161] = return_data.size
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 270 len 24]
                    idx = 0
                    while idx < uint256(stor[_3892]):
                        require ext_code.size(address(stor[sha3(_3892) + idx]))
                        staticcall address(stor[sha3(_3892) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3892].field_0)
                            mem[0] = _3892 + 2
                            _11903 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11903] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3890])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3892 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3892 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 196] = mem[_11903 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx]), uint256(stor[sha3(_3892 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[mem[64] + 68] = address(stor[_3890])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx]), address(stor[_3890]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[0] = _3892 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3892) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3892 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3890])][_3888].field_1280) = 0
                    uint256(owners[_3892]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) = uint256(stor[_3892])
                    if not uint256(stor[_3892]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _30401 = mem[64]
                                _30402 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33105 = sha3(mem[mem[64] len _30402 + _30401 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _33105
                                _33177 = mem[64]
                                _33178 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33178 + _33177 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33499 = mem[64]
                                _33500 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35855 = sha3(mem[mem[64] len _33500 + _33499 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35855
                                _36129 = mem[64]
                                _36130 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36130 + _36129 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33502 = mem[64]
                                _33503 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35860 = sha3(mem[mem[64] len _33503 + _33502 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35860
                                _36133 = mem[64]
                                _36134 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36134 + _36133 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36697 = mem[64]
                                _36698 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38154 = sha3(mem[mem[64] len _36698 + _36697 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38154
                                _38543 = mem[64]
                                _38544 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38544 + _38543 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3892]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888][s].field_0) = uint256(stor[idx + sha3(_3892)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3892])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33505 = mem[64]
                                _33506 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35865 = sha3(mem[mem[64] len _33506 + _33505 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35865
                                _36137 = mem[64]
                                _36138 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36138 + _36137 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36702 = mem[64]
                                _36703 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38164 = sha3(mem[mem[64] len _36703 + _36702 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38164
                                _38549 = mem[64]
                                _38550 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38550 + _38549 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36705 = mem[64]
                                _36706 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38169 = sha3(mem[mem[64] len _36706 + _36705 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38169
                                _38553 = mem[64]
                                _38554 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38554 + _38553 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _39041 = mem[64]
                                _39042 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39529 = sha3(mem[mem[64] len _39042 + _39041 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _39529
                                _39769 = mem[64]
                                _39770 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39770 + _39769 - mem[64]]));
        else:
            require msg.value
            if msg.value * platformFee / msg.value != platformFee:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[arg1.length + ceil32(arg1.length) + 261 len 31]
            call sub_3740ebb3Address with:
               value msg.value * platformFee / 1000 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                38,
                                0x6c46616e746f6d4d61726b6574706c6163653a20466565207472616e73666572206661696c65,
                                mem[arg1.length + ceil32(arg1.length) + 266 len 26]
                if msg.value * platformFee / 1000 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call address(stor[_3890]) with:
                   value msg.value - (msg.value * platformFee / 1000) wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + 268 len 24]
                    idx = 0
                    while idx < uint256(stor[_3892]):
                        require ext_code.size(address(stor[sha3(_3892) + idx]))
                        staticcall address(stor[sha3(_3892) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3892].field_0)
                            mem[0] = _3892 + 2
                            _11868 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11868] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3890])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3892 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3892 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 196] = mem[_11868 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx]), uint256(stor[sha3(_3892 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[mem[64] + 68] = address(stor[_3890])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx]), address(stor[_3890]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[0] = _3892 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3892) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3892 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3890])][_3888].field_1280) = 0
                    uint256(owners[_3892]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) = uint256(stor[_3892])
                    if not uint256(stor[_3892]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _30380 = mem[64]
                                _30381 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33070 = sha3(mem[mem[64] len _30381 + _30380 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _33070
                                _33149 = mem[64]
                                _33150 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33150 + _33149 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33422 = mem[64]
                                _33423 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35715 = sha3(mem[mem[64] len _33423 + _33422 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35715
                                _36031 = mem[64]
                                _36032 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36032 + _36031 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33425 = mem[64]
                                _33426 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35720 = sha3(mem[mem[64] len _33426 + _33425 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35720
                                _36035 = mem[64]
                                _36036 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36036 + _36035 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36592 = mem[64]
                                _36593 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37944 = sha3(mem[mem[64] len _36593 + _36592 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _37944
                                _38417 = mem[64]
                                _38418 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38418 + _38417 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3892]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888][s].field_0) = uint256(stor[idx + sha3(_3892)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3892])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33428 = mem[64]
                                _33429 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35725 = sha3(mem[mem[64] len _33429 + _33428 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35725
                                _36039 = mem[64]
                                _36040 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36040 + _36039 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36597 = mem[64]
                                _36598 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37954 = sha3(mem[mem[64] len _36598 + _36597 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _37954
                                _38423 = mem[64]
                                _38424 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38424 + _38423 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36600 = mem[64]
                                _36601 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37959 = sha3(mem[mem[64] len _36601 + _36600 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _37959
                                _38427 = mem[64]
                                _38428 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38428 + _38427 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _38978 = mem[64]
                                _38979 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39389 = sha3(mem[mem[64] len _38979 + _38978 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _39389
                                _39699 = mem[64]
                                _39700 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39700 + _39699 - mem[64]]));
                else:
                    mem[64] = arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 161
                    mem[arg1.length + ceil32(arg1.length) + 160] = return_data.size
                    mem[arg1.length + ceil32(arg1.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 269 len 24]
                    idx = 0
                    while idx < uint256(stor[_3892]):
                        require ext_code.size(address(stor[sha3(_3892) + idx]))
                        staticcall address(stor[sha3(_3892) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3892].field_0)
                            mem[0] = _3892 + 2
                            _11873 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11873] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3890])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3892 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3892 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 196] = mem[_11873 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx]), uint256(stor[sha3(_3892 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[mem[64] + 68] = address(stor[_3890])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx]), address(stor[_3890]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[0] = _3892 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3892) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3892 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3890])][_3888].field_1280) = 0
                    uint256(owners[_3892]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) = uint256(stor[_3892])
                    if not uint256(stor[_3892]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _30383 = mem[64]
                                _30384 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33075 = sha3(mem[mem[64] len _30384 + _30383 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _33075
                                _33153 = mem[64]
                                _33154 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33154 + _33153 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33433 = mem[64]
                                _33434 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35735 = sha3(mem[mem[64] len _33434 + _33433 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35735
                                _36045 = mem[64]
                                _36046 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36046 + _36045 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33436 = mem[64]
                                _33437 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35740 = sha3(mem[mem[64] len _33437 + _33436 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35740
                                _36049 = mem[64]
                                _36050 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36050 + _36049 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36607 = mem[64]
                                _36608 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37974 = sha3(mem[mem[64] len _36608 + _36607 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _37974
                                _38435 = mem[64]
                                _38436 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38436 + _38435 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3892]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888][s].field_0) = uint256(stor[idx + sha3(_3892)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3892])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33439 = mem[64]
                                _33440 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35745 = sha3(mem[mem[64] len _33440 + _33439 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35745
                                _36053 = mem[64]
                                _36054 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36054 + _36053 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36612 = mem[64]
                                _36613 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37984 = sha3(mem[mem[64] len _36613 + _36612 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _37984
                                _38441 = mem[64]
                                _38442 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38442 + _38441 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36615 = mem[64]
                                _36616 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _37989 = sha3(mem[mem[64] len _36616 + _36615 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _37989
                                _38445 = mem[64]
                                _38446 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38446 + _38445 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _38987 = mem[64]
                                _38988 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39409 = sha3(mem[mem[64] len _38988 + _38987 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _39409
                                _39709 = mem[64]
                                _39710 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39710 + _39709 - mem[64]]));
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
                if msg.value * platformFee / 1000 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call address(stor[_3890]) with:
                   value msg.value - (msg.value * platformFee / 1000) wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 269 len 24]
                    idx = 0
                    while idx < uint256(stor[_3892]):
                        require ext_code.size(address(stor[sha3(_3892) + idx]))
                        staticcall address(stor[sha3(_3892) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3892].field_0)
                            mem[0] = _3892 + 2
                            _11878 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11878] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3890])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3892 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3892 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 196] = mem[_11878 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx]), uint256(stor[sha3(_3892 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[mem[64] + 68] = address(stor[_3890])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx]), address(stor[_3890]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[0] = _3892 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3892) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3892 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3890])][_3888].field_1280) = 0
                    uint256(owners[_3892]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) = uint256(stor[_3892])
                    if not uint256(stor[_3892]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _30386 = mem[64]
                                _30387 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33080 = sha3(mem[mem[64] len _30387 + _30386 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _33080
                                _33157 = mem[64]
                                _33158 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33158 + _33157 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33444 = mem[64]
                                _33445 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35755 = sha3(mem[mem[64] len _33445 + _33444 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35755
                                _36059 = mem[64]
                                _36060 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36060 + _36059 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33447 = mem[64]
                                _33448 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35760 = sha3(mem[mem[64] len _33448 + _33447 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35760
                                _36063 = mem[64]
                                _36064 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36064 + _36063 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36622 = mem[64]
                                _36623 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38004 = sha3(mem[mem[64] len _36623 + _36622 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38004
                                _38453 = mem[64]
                                _38454 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38454 + _38453 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3892]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888][s].field_0) = uint256(stor[idx + sha3(_3892)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3892])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33450 = mem[64]
                                _33451 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35765 = sha3(mem[mem[64] len _33451 + _33450 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35765
                                _36067 = mem[64]
                                _36068 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36068 + _36067 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36627 = mem[64]
                                _36628 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38014 = sha3(mem[mem[64] len _36628 + _36627 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38014
                                _38459 = mem[64]
                                _38460 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38460 + _38459 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36630 = mem[64]
                                _36631 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38019 = sha3(mem[mem[64] len _36631 + _36630 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38019
                                _38463 = mem[64]
                                _38464 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38464 + _38463 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _38996 = mem[64]
                                _38997 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39429 = sha3(mem[mem[64] len _38997 + _38996 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _39429
                                _39719 = mem[64]
                                _39720 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39720 + _39719 - mem[64]]));
                else:
                    mem[64] = arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 162
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 161] = return_data.size
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 270 len 24]
                    idx = 0
                    while idx < uint256(stor[_3892]):
                        require ext_code.size(address(stor[sha3(_3892) + idx]))
                        staticcall address(stor[sha3(_3892) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3892].field_0)
                            mem[0] = _3892 + 2
                            _11883 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11883] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3890])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3892 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3892 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 196] = mem[_11883 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx]), uint256(stor[sha3(_3892 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[mem[64] + 68] = address(stor[_3890])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx]), address(stor[_3890]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[0] = _3892 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3892) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3892 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3890])][_3888].field_1280) = 0
                    uint256(owners[_3892]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) = uint256(stor[_3892])
                    if not uint256(stor[_3892]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _30389 = mem[64]
                                _30390 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33085 = sha3(mem[mem[64] len _30390 + _30389 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _33085
                                _33161 = mem[64]
                                _33162 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33162 + _33161 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33455 = mem[64]
                                _33456 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35775 = sha3(mem[mem[64] len _33456 + _33455 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35775
                                _36073 = mem[64]
                                _36074 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36074 + _36073 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33458 = mem[64]
                                _33459 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35780 = sha3(mem[mem[64] len _33459 + _33458 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35780
                                _36077 = mem[64]
                                _36078 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36078 + _36077 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36637 = mem[64]
                                _36638 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38034 = sha3(mem[mem[64] len _36638 + _36637 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38034
                                _38471 = mem[64]
                                _38472 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38472 + _38471 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3892]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888][s].field_0) = uint256(stor[idx + sha3(_3892)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3892])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33461 = mem[64]
                                _33462 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35785 = sha3(mem[mem[64] len _33462 + _33461 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35785
                                _36081 = mem[64]
                                _36082 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36082 + _36081 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36642 = mem[64]
                                _36643 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38044 = sha3(mem[mem[64] len _36643 + _36642 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38044
                                _38477 = mem[64]
                                _38478 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38478 + _38477 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36645 = mem[64]
                                _36646 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38049 = sha3(mem[mem[64] len _36646 + _36645 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38049
                                _38481 = mem[64]
                                _38482 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38482 + _38481 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _39005 = mem[64]
                                _39006 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39449 = sha3(mem[mem[64] len _39006 + _39005 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _39449
                                _39729 = mem[64]
                                _39730 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39730 + _39729 - mem[64]]));
    else:
        if address(stor5[_3892]) != msg.sender:
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
                call address(stor[_3890]) with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + 268 len 24]
                    idx = 0
                    while idx < uint256(stor[_3892]):
                        require ext_code.size(address(stor[sha3(_3892) + idx]))
                        staticcall address(stor[sha3(_3892) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3892].field_0)
                            mem[0] = _3892 + 2
                            _11928 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11928] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3890])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3892 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3892 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 196] = mem[_11928 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx]), uint256(stor[sha3(_3892 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[mem[64] + 68] = address(stor[_3890])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx]), address(stor[_3890]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[0] = _3892 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3892) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3892 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3890])][_3888].field_1280) = 0
                    uint256(owners[_3892]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) = uint256(stor[_3892])
                    if not uint256(stor[_3892]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _30416 = mem[64]
                                _30417 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33130 = sha3(mem[mem[64] len _30417 + _30416 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _33130
                                _33197 = mem[64]
                                _33198 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33198 + _33197 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33554 = mem[64]
                                _33555 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35955 = sha3(mem[mem[64] len _33555 + _33554 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35955
                                _36199 = mem[64]
                                _36200 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36200 + _36199 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33557 = mem[64]
                                _33558 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35960 = sha3(mem[mem[64] len _33558 + _33557 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35960
                                _36203 = mem[64]
                                _36204 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36204 + _36203 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36772 = mem[64]
                                _36773 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38304 = sha3(mem[mem[64] len _36773 + _36772 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38304
                                _38633 = mem[64]
                                _38634 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38634 + _38633 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3892]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888][s].field_0) = uint256(stor[idx + sha3(_3892)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3892])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33560 = mem[64]
                                _33561 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35965 = sha3(mem[mem[64] len _33561 + _33560 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35965
                                _36207 = mem[64]
                                _36208 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36208 + _36207 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36777 = mem[64]
                                _36778 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38314 = sha3(mem[mem[64] len _36778 + _36777 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38314
                                _38639 = mem[64]
                                _38640 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38640 + _38639 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36780 = mem[64]
                                _36781 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38319 = sha3(mem[mem[64] len _36781 + _36780 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38319
                                _38643 = mem[64]
                                _38644 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38644 + _38643 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _39086 = mem[64]
                                _39087 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39629 = sha3(mem[mem[64] len _39087 + _39086 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _39629
                                _39819 = mem[64]
                                _39820 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39820 + _39819 - mem[64]]));
                else:
                    mem[64] = arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 161
                    mem[arg1.length + ceil32(arg1.length) + 160] = return_data.size
                    mem[arg1.length + ceil32(arg1.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 269 len 24]
                    idx = 0
                    while idx < uint256(stor[_3892]):
                        require ext_code.size(address(stor[sha3(_3892) + idx]))
                        staticcall address(stor[sha3(_3892) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3892].field_0)
                            mem[0] = _3892 + 2
                            _11933 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11933] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3890])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3892 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3892 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 196] = mem[_11933 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx]), uint256(stor[sha3(_3892 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[mem[64] + 68] = address(stor[_3890])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx]), address(stor[_3890]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[0] = _3892 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3892) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3892 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3890])][_3888].field_1280) = 0
                    uint256(owners[_3892]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) = uint256(stor[_3892])
                    if not uint256(stor[_3892]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _30419 = mem[64]
                                _30420 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33135 = sha3(mem[mem[64] len _30420 + _30419 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _33135
                                _33201 = mem[64]
                                _33202 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33202 + _33201 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33565 = mem[64]
                                _33566 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35975 = sha3(mem[mem[64] len _33566 + _33565 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35975
                                _36213 = mem[64]
                                _36214 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36214 + _36213 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33568 = mem[64]
                                _33569 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35980 = sha3(mem[mem[64] len _33569 + _33568 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35980
                                _36217 = mem[64]
                                _36218 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36218 + _36217 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36787 = mem[64]
                                _36788 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38334 = sha3(mem[mem[64] len _36788 + _36787 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38334
                                _38651 = mem[64]
                                _38652 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38652 + _38651 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3892]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888][s].field_0) = uint256(stor[idx + sha3(_3892)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3892])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33571 = mem[64]
                                _33572 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35985 = sha3(mem[mem[64] len _33572 + _33571 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35985
                                _36221 = mem[64]
                                _36222 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36222 + _36221 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36792 = mem[64]
                                _36793 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38344 = sha3(mem[mem[64] len _36793 + _36792 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38344
                                _38657 = mem[64]
                                _38658 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38658 + _38657 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36795 = mem[64]
                                _36796 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38349 = sha3(mem[mem[64] len _36796 + _36795 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38349
                                _38661 = mem[64]
                                _38662 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38662 + _38661 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _39095 = mem[64]
                                _39096 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39649 = sha3(mem[mem[64] len _39096 + _39095 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _39649
                                _39829 = mem[64]
                                _39830 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39830 + _39829 - mem[64]]));
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
                call address(stor[_3890]) with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 269 len 24]
                    idx = 0
                    while idx < uint256(stor[_3892]):
                        require ext_code.size(address(stor[sha3(_3892) + idx]))
                        staticcall address(stor[sha3(_3892) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3892].field_0)
                            mem[0] = _3892 + 2
                            _11938 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11938] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3890])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3892 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3892 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 196] = mem[_11938 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx]), uint256(stor[sha3(_3892 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[mem[64] + 68] = address(stor[_3890])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx]), address(stor[_3890]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[0] = _3892 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3892) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3892 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3890])][_3888].field_1280) = 0
                    uint256(owners[_3892]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) = uint256(stor[_3892])
                    if not uint256(stor[_3892]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _30422 = mem[64]
                                _30423 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33140 = sha3(mem[mem[64] len _30423 + _30422 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _33140
                                _33205 = mem[64]
                                _33206 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33206 + _33205 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33576 = mem[64]
                                _33577 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35995 = sha3(mem[mem[64] len _33577 + _33576 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35995
                                _36227 = mem[64]
                                _36228 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36228 + _36227 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33579 = mem[64]
                                _33580 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36000 = sha3(mem[mem[64] len _33580 + _33579 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _36000
                                _36231 = mem[64]
                                _36232 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36232 + _36231 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36802 = mem[64]
                                _36803 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38364 = sha3(mem[mem[64] len _36803 + _36802 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38364
                                _38669 = mem[64]
                                _38670 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38670 + _38669 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3892]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888][s].field_0) = uint256(stor[idx + sha3(_3892)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3892])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33582 = mem[64]
                                _33583 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36005 = sha3(mem[mem[64] len _33583 + _33582 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _36005
                                _36235 = mem[64]
                                _36236 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36236 + _36235 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36807 = mem[64]
                                _36808 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38374 = sha3(mem[mem[64] len _36808 + _36807 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38374
                                _38675 = mem[64]
                                _38676 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38676 + _38675 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36810 = mem[64]
                                _36811 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38379 = sha3(mem[mem[64] len _36811 + _36810 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38379
                                _38679 = mem[64]
                                _38680 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38680 + _38679 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _39104 = mem[64]
                                _39105 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39669 = sha3(mem[mem[64] len _39105 + _39104 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _39669
                                _39839 = mem[64]
                                _39840 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39840 + _39839 - mem[64]]));
                else:
                    mem[64] = arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 162
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 161] = return_data.size
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 270 len 24]
                    idx = 0
                    while idx < uint256(stor[_3892]):
                        require ext_code.size(address(stor[sha3(_3892) + idx]))
                        staticcall address(stor[sha3(_3892) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3892].field_0)
                            mem[0] = _3892 + 2
                            _11943 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11943] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3890])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3892 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3892 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 196] = mem[_11943 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx]), uint256(stor[sha3(_3892 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[mem[64] + 68] = address(stor[_3890])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx]), address(stor[_3890]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[0] = _3892 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3892) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3892 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3890])][_3888].field_1280) = 0
                    uint256(owners[_3892]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) = uint256(stor[_3892])
                    if not uint256(stor[_3892]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _30425 = mem[64]
                                _30426 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33145 = sha3(mem[mem[64] len _30426 + _30425 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _33145
                                _33209 = mem[64]
                                _33210 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33210 + _33209 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33587 = mem[64]
                                _33588 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36015 = sha3(mem[mem[64] len _33588 + _33587 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _36015
                                _36241 = mem[64]
                                _36242 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36242 + _36241 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33590 = mem[64]
                                _33591 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36020 = sha3(mem[mem[64] len _33591 + _33590 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _36020
                                _36245 = mem[64]
                                _36246 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36246 + _36245 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36817 = mem[64]
                                _36818 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38394 = sha3(mem[mem[64] len _36818 + _36817 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38394
                                _38687 = mem[64]
                                _38688 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38688 + _38687 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3892]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888][s].field_0) = uint256(stor[idx + sha3(_3892)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3892])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33593 = mem[64]
                                _33594 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _36025 = sha3(mem[mem[64] len _33594 + _33593 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _36025
                                _36249 = mem[64]
                                _36250 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36250 + _36249 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36822 = mem[64]
                                _36823 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38404 = sha3(mem[mem[64] len _36823 + _36822 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38404
                                _38693 = mem[64]
                                _38694 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38694 + _38693 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36825 = mem[64]
                                _36826 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38409 = sha3(mem[mem[64] len _36826 + _36825 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38409
                                _38697 = mem[64]
                                _38698 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38698 + _38697 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _39113 = mem[64]
                                _39114 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39689 = sha3(mem[mem[64] len _39114 + _39113 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _39689
                                _39849 = mem[64]
                                _39850 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39850 + _39849 - mem[64]]));
        else:
            require msg.value
            if msg.value * platformFee / msg.value != platformFee:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[arg1.length + ceil32(arg1.length) + 261 len 31]
            call sub_3740ebb3Address with:
               value msg.value * platformFee / 1000 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                38,
                                0x6c46616e746f6d4d61726b6574706c6163653a20466565207472616e73666572206661696c65,
                                mem[arg1.length + ceil32(arg1.length) + 266 len 26]
                if msg.value * platformFee / 1000 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call address(stor[_3890]) with:
                   value msg.value - (msg.value * platformFee / 1000) wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + 268 len 24]
                    idx = 0
                    while idx < uint256(stor[_3892]):
                        require ext_code.size(address(stor[sha3(_3892) + idx]))
                        staticcall address(stor[sha3(_3892) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3892].field_0)
                            mem[0] = _3892 + 2
                            _11908 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11908] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3890])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3892 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3892 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 196] = mem[_11908 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx]), uint256(stor[sha3(_3892 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[mem[64] + 68] = address(stor[_3890])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx]), address(stor[_3890]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[0] = _3892 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3892) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3892 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3890])][_3888].field_1280) = 0
                    uint256(owners[_3892]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) = uint256(stor[_3892])
                    if not uint256(stor[_3892]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _30404 = mem[64]
                                _30405 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33110 = sha3(mem[mem[64] len _30405 + _30404 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _33110
                                _33181 = mem[64]
                                _33182 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33182 + _33181 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33510 = mem[64]
                                _33511 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35875 = sha3(mem[mem[64] len _33511 + _33510 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35875
                                _36143 = mem[64]
                                _36144 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36144 + _36143 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33513 = mem[64]
                                _33514 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35880 = sha3(mem[mem[64] len _33514 + _33513 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35880
                                _36147 = mem[64]
                                _36148 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36148 + _36147 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36712 = mem[64]
                                _36713 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38184 = sha3(mem[mem[64] len _36713 + _36712 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38184
                                _38561 = mem[64]
                                _38562 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38562 + _38561 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3892]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888][s].field_0) = uint256(stor[idx + sha3(_3892)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3892])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33516 = mem[64]
                                _33517 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35885 = sha3(mem[mem[64] len _33517 + _33516 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35885
                                _36151 = mem[64]
                                _36152 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36152 + _36151 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36717 = mem[64]
                                _36718 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38194 = sha3(mem[mem[64] len _36718 + _36717 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38194
                                _38567 = mem[64]
                                _38568 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38568 + _38567 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36720 = mem[64]
                                _36721 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38199 = sha3(mem[mem[64] len _36721 + _36720 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38199
                                _38571 = mem[64]
                                _38572 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38572 + _38571 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _39050 = mem[64]
                                _39051 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39549 = sha3(mem[mem[64] len _39051 + _39050 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _39549
                                _39779 = mem[64]
                                _39780 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39780 + _39779 - mem[64]]));
                else:
                    mem[64] = arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 161
                    mem[arg1.length + ceil32(arg1.length) + 160] = return_data.size
                    mem[arg1.length + ceil32(arg1.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 269 len 24]
                    idx = 0
                    while idx < uint256(stor[_3892]):
                        require ext_code.size(address(stor[sha3(_3892) + idx]))
                        staticcall address(stor[sha3(_3892) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3892].field_0)
                            mem[0] = _3892 + 2
                            _11913 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11913] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3890])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3892 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3892 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 196] = mem[_11913 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx]), uint256(stor[sha3(_3892 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[mem[64] + 68] = address(stor[_3890])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx]), address(stor[_3890]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[0] = _3892 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3892) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3892 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3890])][_3888].field_1280) = 0
                    uint256(owners[_3892]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) = uint256(stor[_3892])
                    if not uint256(stor[_3892]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _30407 = mem[64]
                                _30408 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33115 = sha3(mem[mem[64] len _30408 + _30407 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _33115
                                _33185 = mem[64]
                                _33186 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33186 + _33185 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33521 = mem[64]
                                _33522 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35895 = sha3(mem[mem[64] len _33522 + _33521 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35895
                                _36157 = mem[64]
                                _36158 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36158 + _36157 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33524 = mem[64]
                                _33525 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35900 = sha3(mem[mem[64] len _33525 + _33524 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35900
                                _36161 = mem[64]
                                _36162 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36162 + _36161 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36727 = mem[64]
                                _36728 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38214 = sha3(mem[mem[64] len _36728 + _36727 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38214
                                _38579 = mem[64]
                                _38580 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38580 + _38579 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3892]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888][s].field_0) = uint256(stor[idx + sha3(_3892)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3892])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33527 = mem[64]
                                _33528 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35905 = sha3(mem[mem[64] len _33528 + _33527 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35905
                                _36165 = mem[64]
                                _36166 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36166 + _36165 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36732 = mem[64]
                                _36733 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38224 = sha3(mem[mem[64] len _36733 + _36732 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38224
                                _38585 = mem[64]
                                _38586 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38586 + _38585 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36735 = mem[64]
                                _36736 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38229 = sha3(mem[mem[64] len _36736 + _36735 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38229
                                _38589 = mem[64]
                                _38590 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38590 + _38589 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _39059 = mem[64]
                                _39060 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39569 = sha3(mem[mem[64] len _39060 + _39059 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _39569
                                _39789 = mem[64]
                                _39790 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39790 + _39789 - mem[64]]));
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
                if msg.value * platformFee / 1000 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                call address(stor[_3890]) with:
                   value msg.value - (msg.value * platformFee / 1000) wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 269 len 24]
                    idx = 0
                    while idx < uint256(stor[_3892]):
                        require ext_code.size(address(stor[sha3(_3892) + idx]))
                        staticcall address(stor[sha3(_3892) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3892].field_0)
                            mem[0] = _3892 + 2
                            _11918 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11918] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3890])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3892 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3892 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 196] = mem[_11918 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx]), uint256(stor[sha3(_3892 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[mem[64] + 68] = address(stor[_3890])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx]), address(stor[_3890]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[0] = _3892 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3892) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3892 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3890])][_3888].field_1280) = 0
                    uint256(owners[_3892]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) = uint256(stor[_3892])
                    if not uint256(stor[_3892]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _30410 = mem[64]
                                _30411 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33120 = sha3(mem[mem[64] len _30411 + _30410 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _33120
                                _33189 = mem[64]
                                _33190 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33190 + _33189 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33532 = mem[64]
                                _33533 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35915 = sha3(mem[mem[64] len _33533 + _33532 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35915
                                _36171 = mem[64]
                                _36172 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36172 + _36171 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33535 = mem[64]
                                _33536 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35920 = sha3(mem[mem[64] len _33536 + _33535 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35920
                                _36175 = mem[64]
                                _36176 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36176 + _36175 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36742 = mem[64]
                                _36743 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38244 = sha3(mem[mem[64] len _36743 + _36742 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38244
                                _38597 = mem[64]
                                _38598 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38598 + _38597 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3892]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888][s].field_0) = uint256(stor[idx + sha3(_3892)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3892])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33538 = mem[64]
                                _33539 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35925 = sha3(mem[mem[64] len _33539 + _33538 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35925
                                _36179 = mem[64]
                                _36180 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36180 + _36179 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36747 = mem[64]
                                _36748 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38254 = sha3(mem[mem[64] len _36748 + _36747 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38254
                                _38603 = mem[64]
                                _38604 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38604 + _38603 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36750 = mem[64]
                                _36751 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38259 = sha3(mem[mem[64] len _36751 + _36750 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38259
                                _38607 = mem[64]
                                _38608 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38608 + _38607 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _39068 = mem[64]
                                _39069 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39589 = sha3(mem[mem[64] len _39069 + _39068 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _39589
                                _39799 = mem[64]
                                _39800 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39800 + _39799 - mem[64]]));
                else:
                    mem[64] = arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 162
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 161] = return_data.size
                    mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 193 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7746616e746f6d4d61726b6574706c6163653a204f776e6572207472616e73666572206661696c65,
                                    mem[arg1.length + ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 270 len 24]
                    idx = 0
                    while idx < uint256(stor[_3892]):
                        require ext_code.size(address(stor[sha3(_3892) + idx]))
                        staticcall address(stor[sha3(_3892) + idx]).supportsInterface(bytes4 arg1) with:
                                gas gas_remaining wei
                               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx])
                        else:
                            require idx < uint256(sub_aa3a6b36[_3892].field_0)
                            mem[0] = _3892 + 2
                            _11923 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_11923] = 0
                            mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(stor[_3890])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = uint256(stor[sha3(_3892 + 1) + idx])
                            mem[mem[64] + 100] = uint256(stor[sha3(_3892 + 2) + idx])
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 196] = mem[_11923 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(stor[sha3(_3892) + idx]))
                            call address(stor[sha3(_3892) + idx]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(stor[_3890]), msg.sender, uint256(stor[sha3(_3892 + 1) + idx]), uint256(stor[sha3(_3892 + 2) + idx]), 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[mem[64] + 68] = address(stor[_3890])
                        mem[mem[64] + 100] = msg.sender
                        require ext_code.size(marketplaceAddress)
                        call marketplaceAddress.validateItemSold(address arg1, uint256 arg2, address arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx]), address(stor[_3890]), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < uint256(stor[_3892])
                        require idx < stor1[_3892]
                        mem[0] = _3892 + 1
                        mem[mem[64]] = 0x4ffccb8500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(stor[sha3(_3892) + idx])
                        mem[mem[64] + 36] = uint256(stor[sha3(_3892 + 1) + idx])
                        require ext_code.size(auctionAddress)
                        call auctionAddress.0x4ffccb85 with:
                             gas gas_remaining wei
                            args address(stor[sha3(_3892) + idx]), uint256(stor[sha3(_3892 + 1) + idx])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_0) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_256) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) = 0
                    idx = 0
                    while uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_512) > idx:
                        uint256(sub_aa3a6b36[address(stor[_3890])][_3888][idx + 2].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_768) = 0
                    uint256(sub_aa3a6b36[address(stor[_3890])][_3888].field_1024) = 0
                    address(sub_aa3a6b36[address(stor[_3890])][_3888].field_1280) = 0
                    uint256(owners[_3892]) = 0
                    uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) = uint256(stor[_3892])
                    if not uint256(stor[_3892]):
                        idx = 0
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _30413 = mem[64]
                                _30414 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _33125 = sha3(mem[mem[64] len _30414 + _30413 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _33125
                                _33193 = mem[64]
                                _33194 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _33194 + _33193 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33543 = mem[64]
                                _33544 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35935 = sha3(mem[mem[64] len _33544 + _33543 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35935
                                _36185 = mem[64]
                                _36186 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36186 + _36185 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33546 = mem[64]
                                _33547 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35940 = sha3(mem[mem[64] len _33547 + _33546 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35940
                                _36189 = mem[64]
                                _36190 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36190 + _36189 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36757 = mem[64]
                                _36758 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38274 = sha3(mem[mem[64] len _36758 + _36757 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38274
                                _38615 = mem[64]
                                _38616 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38616 + _38615 - mem[64]]));
                    else:
                        s = 0
                        idx = 0
                        while uint256(stor[_3892]) > idx:
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888][s].field_0) = uint256(stor[idx + sha3(_3892)])
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = uint256(stor[_3892])
                        while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_0) > idx:
                            address(sub_aa3a6b36[address(msg.sender)][_3888][idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) = stor1[_3892]
                        if not stor1[_3892]:
                            idx = 0
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _33549 = mem[64]
                                _33550 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _35945 = sha3(mem[mem[64] len _33550 + _33549 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _35945
                                _36193 = mem[64]
                                _36194 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _36194 + _36193 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36762 = mem[64]
                                _36763 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38284 = sha3(mem[mem[64] len _36763 + _36762 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38284
                                _38621 = mem[64]
                                _38622 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38622 + _38621 - mem[64]]));
                        else:
                            s = 0
                            idx = 0
                            while stor1[_3892] > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 1].field_0) = uint256(stor[idx + sha3(_3892 + 1)])
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor1[_3892]
                            while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_256) > idx:
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 1].field_0) = 0
                                idx = idx + 1
                                continue 
                            uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) = uint256(sub_aa3a6b36[_3892].field_0)
                            if not uint256(sub_aa3a6b36[_3892].field_0):
                                idx = 0
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _36765 = mem[64]
                                _36766 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _38289 = sha3(mem[mem[64] len _36766 + _36765 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _38289
                                _38625 = mem[64]
                                _38626 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _38626 + _38625 - mem[64]]));
                            else:
                                s = 0
                                idx = 0
                                while uint256(sub_aa3a6b36[_3892].field_0) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][s + 2].field_0) = uint256(stor[idx + sha3(_3892 + 2)])
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = uint256(sub_aa3a6b36[_3892].field_0)
                                while uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_512) > idx:
                                    uint256(sub_aa3a6b36[address(msg.sender)][_3888][idx + 2].field_0) = 0
                                    idx = idx + 1
                                    continue 
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_768) = uint256(owners[_3892])
                                uint256(sub_aa3a6b36[address(msg.sender)][_3888].field_1024) = stor4[_3892]
                                address(sub_aa3a6b36[address(msg.sender)][_3888].field_1280) = address(stor5[_3892])
                                address(owners[_3888]) = msg.sender
                                address(sub_a5851902[_3888][address(msg.sender)].field_0) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_256) = 0
                                uint256(sub_a5851902[_3888][address(msg.sender)].field_512) = 0
                                _39077 = mem[64]
                                _39078 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                _39609 = sha3(mem[mem[64] len _39078 + _39077 - mem[64]])
                                mem[mem[64]] = msg.value
                                emit 0x760d857c: msg.value, address(stor[_3890]), msg.sender, _39609
                                _39809 = mem[64]
                                _39810 = mem[96]
                                mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                                mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
                                emit OfferCanceled(msg.sender, sha3(mem[mem[64] len _39810 + _39809 - mem[64]]));
    stor1.length = 1
}



}
