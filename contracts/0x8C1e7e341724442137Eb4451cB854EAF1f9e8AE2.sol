contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address owner;
uint256 stor0;
uint32 stor1;
address beneficiaryAddress;
uint256 stor1;
uint256 cliff;
uint256 start;
uint256 duration;
uint8 revocable;
mapping of uint256 released;
mapping of uint8 stor7;

function duration() payable {
    return duration
}

function cliff() payable {
    return cliff
}

function beneficiary() payable {
    return address(beneficiaryAddress)
}

function revocable() payable {
    return bool(revocable)
}

function owner() payable {
    return address(owner)
}

function released(address arg1) payable {
    require calldata.size - 4 >= 32
    return released[address(arg1)]
}

function start() payable {
    return start
}

function revoked(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function revoke(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not revocable:
        revert with 0, 'TokenVesting: cannot revoke'
    if stor7[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x64546f6b656e56657374696e673a20746f6b656e20616c7265616479207265766f6b65,
                    mem[199 len 29]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if released[address(arg1)] + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < cliff:
        if released[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -released[address(arg1)] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        stor7[address(arg1)] = 1
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, ext_call.return_data[0] + released[address(arg1)]) >> 32
        call arg1 with:
           funct uint32(stor0)
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] + released[address(arg1)]) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] + released[address(arg1)]
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        if duration + start < start:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp >= duration + start:
            if released[address(arg1)] > released[address(arg1)] + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            stor7[address(arg1)] = 1
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), 0
            mem[324 len 0] = 0
            call arg1 with:
               funct uint32(stor0)
                 gas gas_remaining wei
                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), 0) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), 0
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            if stor7[address(arg1)]:
                if released[address(arg1)] > released[address(arg1)] + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor7[address(arg1)] = 1
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), 0
                call arg1 with:
                   funct uint32(stor0)
                     gas gas_remaining wei
                    args 0, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), 0
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if start > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if released[address(arg1)] + ext_call.return_data[0]:
                    if (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] != block.timestamp - start:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if duration <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require duration
                    if released[address(arg1)] > (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7[address(arg1)] = 1
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, ext_call.return_data[0] - ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) + released[address(arg1)]) >> 32
                    call arg1 with:
                       funct uint32(stor0)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) + released[address(arg1)]) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        Mask(224, 0, stor0),
                                        uint32(stor0),
                                        ext_call.return_data[0] - ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) + released[address(arg1)]
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if duration <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require duration
                    if released[address(arg1)] > 0 / duration:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (0 / duration) - released[address(arg1)] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7[address(arg1)] = 1
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, ext_call.return_data[0] - (0 / duration) + released[address(arg1)]) >> 32
                    mem[324 len 0] = 0
                    call arg1 with:
                       funct uint32(stor0)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (0 / duration) + released[address(arg1)]) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        Mask(224, 0, stor0),
                                        uint32(stor0),
                                        ext_call.return_data[0] - (0 / duration) + released[address(arg1)]
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
    emit TokenVestingRevoked(arg1);
}

function release(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if released[address(arg1)] + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < cliff:
        if released[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -released[address(arg1)] <= 0:
            revert with 0, 'TokenVesting: no tokens are due'
        if 0 < released[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        released[address(arg1)] = 0
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, -released[address(arg1)]) >> 32
        call arg1 with:
           funct uint32(stor1)
             gas gas_remaining wei
            args Mask(224, 32, -released[address(arg1)]) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), -released[address(arg1)]
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor1):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        emit TokensReleased(address(arg1), -released[address(arg1)]);
    else:
        if duration + start < start:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp >= duration + start:
            if released[address(arg1)] > released[address(arg1)] + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'TokenVesting: no tokens are due'
            if ext_call.return_data[0] + released[address(arg1)] < released[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            released[address(arg1)] += ext_call.return_data[0]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
            call arg1 with:
               funct uint32(stor1)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor1):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            emit TokensReleased(address(arg1), ext_call.return_data[0]);
        else:
            if stor7[address(arg1)]:
                if released[address(arg1)] > released[address(arg1)] + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'TokenVesting: no tokens are due'
                if ext_call.return_data[0] + released[address(arg1)] < released[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                released[address(arg1)] += ext_call.return_data[0]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
                mem[324 len 0] = 0
                call arg1 with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0]
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor1):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit TokensReleased(address(arg1), ext_call.return_data[0]);
            else:
                if start > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not released[address(arg1)] + ext_call.return_data[0]:
                    if duration <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require duration
                    if released[address(arg1)] > 0 / duration:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (0 / duration) - released[address(arg1)] <= 0:
                        revert with 0, 'TokenVesting: no tokens are due'
                    if 0 / duration < released[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    released[address(arg1)] = 0 / duration
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, (0 / duration) - released[address(arg1)]) >> 32
                    call arg1 with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args Mask(224, 32, (0 / duration) - released[address(arg1)]) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), (0 / duration) - released[address(arg1)]
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor1):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit TokensReleased(address(arg1), (0 / duration) - released[address(arg1)]);
                else:
                    if (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / released[address(arg1)] + ext_call.return_data[0] != block.timestamp - start:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if duration <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require duration
                    if released[address(arg1)] > (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)] <= 0:
                        revert with 0, 'TokenVesting: no tokens are due'
                    if (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration < released[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    released[address(arg1)] = (released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)]) >> 32
                    call arg1 with:
                       funct uint32(stor1)
                         gas gas_remaining wei
                        args Mask(224, 32, ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)]) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        Mask(224, 0, stor1),
                                        uint32(stor1),
                                        ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)]
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor1):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit TokensReleased(address(arg1), ((released[address(arg1)] * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (released[address(arg1)] * start) - (ext_call.return_data[0] * start) / duration) - released[address(arg1)]);
}



}
