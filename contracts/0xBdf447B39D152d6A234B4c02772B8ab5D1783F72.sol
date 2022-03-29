contract main {




// =====================  Runtime code  =====================


const maxSwingMantissa = 10^17

const numBlocksPerPeriod = 240


uint8 stor0;
mapping of uint256 _assetPrices;
address anchorAdminAddress;
address pendingAnchorAdminAddress;
address posterAddress;
uint256 maxSwing;
mapping of struct anchors;
mapping of uint256 pendingAnchors;

function anchorAdmin() {
    return anchorAdminAddress
}

function _assetPrices(address arg1) {
    require calldata.size - 4 >= 32
    return _assetPrices[arg1]
}

function pendingAnchorAdmin() {
    return pendingAnchorAdminAddress
}

function paused() {
    return bool(stor0)
}

function anchors(address arg1) {
    require calldata.size - 4 >= 32
    return anchors[arg1].field_0, anchors[arg1].field_256
}

function poster() {
    return posterAddress
}

function pendingAnchors(address arg1) {
    require calldata.size - 4 >= 32
    return pendingAnchors[arg1]
}

function maxSwing() {
    return maxSwing
}

function _fallback() payable {
    revert
}

function getPrice(address arg1) {
    require calldata.size - 4 >= 32
    if not stor0:
        return _assetPrices[address(arg1)]
    else:
        return 0
}

function assetPrices(address arg1) {
    require calldata.size - 4 >= 32
    if not stor0:
        return _assetPrices[address(arg1)]
    else:
        return 0
}

function _setPaused(bool arg1) {
    require calldata.size - 4 >= 32
    if anchorAdminAddress != msg.sender:
        emit OracleFailure(address(msg.sender), 0, 1, 1, 0);
        return 1
    stor0 = uint8(arg1)
    emit SetPaused(arg1);
    return 0
}

function _acceptAnchorAdmin() {
    if pendingAnchorAdminAddress != msg.sender:
        emit OracleFailure(address(msg.sender), 0, 1, 0, 0);
        return 1
    anchorAdminAddress = pendingAnchorAdminAddress
    pendingAnchorAdminAddress = 0
    emit NewAnchorAdmin(anchorAdminAddress, msg.sender);
    return 0
}

function _setPendingAnchorAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if anchorAdminAddress != msg.sender:
        emit OracleFailure(address(msg.sender), 0, 1, 2, 0);
        return 1
    pendingAnchorAdminAddress = arg1
    emit NewPendingAnchorAdmin(pendingAnchorAdminAddress, arg1);
    return 0
}

function _setPendingAnchor(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if anchorAdminAddress != msg.sender:
        emit OracleFailure(address(msg.sender), address(arg1), 1, 3, 0);
        return 1
    pendingAnchors[address(arg1)] = arg2
    emit NewPendingAnchor(msg.sender, address(arg1), pendingAnchors[address(arg1)], arg2);
    return 0
}

function setPrice(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if posterAddress != msg.sender:
        emit OracleFailure(address(msg.sender), address(arg1), 1, 8, 0);
        return 1
    if pendingAnchors[address(arg1)]:
        if pendingAnchors[address(arg1)] <= arg2:
            require pendingAnchors[address(arg1)] <= arg2
            if not arg2 - pendingAnchors[address(arg1)]:
                if not pendingAnchors[address(arg1)]:
                    emit OracleFailure(msg.sender, address(arg1), 2, 4, 5);
                    return 2
                if 0 / pendingAnchors[address(arg1)] > maxSwing:
                    emit OracleFailure(msg.sender, address(arg1), 2, 6, 0 / pendingAnchors[address(arg1)]);
                    return 2
            else:
                if (10^18 * arg2) - (10^18 * pendingAnchors[address(arg1)]) / arg2 - pendingAnchors[address(arg1)] != 10^18:
                    emit OracleFailure(msg.sender, address(arg1), 2, 4, 3);
                    return 2
                if not pendingAnchors[address(arg1)]:
                    emit OracleFailure(msg.sender, address(arg1), 2, 4, 5);
                    return 2
                if (10^18 * arg2) - (10^18 * pendingAnchors[address(arg1)]) / pendingAnchors[address(arg1)] > maxSwing:
                    emit OracleFailure(msg.sender, address(arg1), 2, 6, (10^18 * arg2) - (10^18 * pendingAnchors[address(arg1)]) / pendingAnchors[address(arg1)]);
                    return 2
        else:
            require arg2 <= pendingAnchors[address(arg1)]
            if not pendingAnchors[address(arg1)] - arg2:
                if not pendingAnchors[address(arg1)]:
                    emit OracleFailure(msg.sender, address(arg1), 2, 4, 5);
                    return 2
                if 0 / pendingAnchors[address(arg1)] > maxSwing:
                    emit OracleFailure(msg.sender, address(arg1), 2, 6, 0 / pendingAnchors[address(arg1)]);
                    return 2
            else:
                if (10^18 * pendingAnchors[address(arg1)]) - (10^18 * arg2) / pendingAnchors[address(arg1)] - arg2 != 10^18:
                    emit OracleFailure(msg.sender, address(arg1), 2, 4, 3);
                    return 2
                if not pendingAnchors[address(arg1)]:
                    emit OracleFailure(msg.sender, address(arg1), 2, 4, 5);
                    return 2
                if (10^18 * pendingAnchors[address(arg1)]) - (10^18 * arg2) / pendingAnchors[address(arg1)] > maxSwing:
                    emit OracleFailure(msg.sender, address(arg1), 2, 6, (10^18 * pendingAnchors[address(arg1)]) - (10^18 * arg2) / pendingAnchors[address(arg1)]);
                    return 2
        if not pendingAnchors[address(arg1)]:
            emit OracleFailure(msg.sender, address(arg1), 2, 7, 0);
            return 2
        if not arg2:
            emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
            return 2
        if pendingAnchors[address(arg1)]:
            pendingAnchors[address(arg1)] = 0
        if (block.number / 240) + 1 > 0:
            anchors[address(arg1)].field_0 = (block.number / 240) + 1
            anchors[address(arg1)].field_256 = arg2
        _assetPrices[address(arg1)] = arg2
        emit PricePosted(address(arg1), _assetPrices[address(arg1)], arg2, arg2);
    else:
        if not anchors[address(arg1)].field_0:
            if not arg2:
                emit OracleFailure(msg.sender, address(arg1), 2, 7, 0);
                return 2
            if not arg2:
                emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                return 2
            if pendingAnchors[address(arg1)]:
                pendingAnchors[address(arg1)] = 0
            if (block.number / 240) + 1 > anchors[address(arg1)].field_0:
                anchors[address(arg1)].field_0 = (block.number / 240) + 1
                anchors[address(arg1)].field_256 = arg2
            _assetPrices[address(arg1)] = arg2
            emit PricePosted(address(arg1), _assetPrices[address(arg1)], arg2, arg2);
        else:
            if maxSwing + 10^18 < 10^18:
                emit OracleFailure(msg.sender, address(arg1), 2, 5, 3);
                return 2
            if not anchors[address(arg1)].field_256:
                if arg2 > 0:
                    if anchors[address(arg1)].field_256:
                        emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                    else:
                        emit OracleFailure(msg.sender, address(arg1), 2, 7, 0);
                    return 2
                if maxSwing > 10^18:
                    emit OracleFailure(msg.sender, address(arg1), 2, 5, 4);
                    return 2
                if not anchors[address(arg1)].field_256:
                    if arg2 < 0:
                        if anchors[address(arg1)].field_256:
                            emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                        else:
                            emit OracleFailure(msg.sender, address(arg1), 2, 7, 0);
                        return 2
                    if not anchors[address(arg1)].field_256:
                        emit OracleFailure(msg.sender, address(arg1), 2, 7, 0);
                        return 2
                    if not arg2:
                        emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                        return 2
                    if pendingAnchors[address(arg1)]:
                        pendingAnchors[address(arg1)] = 0
                    if (block.number / 240) + 1 > anchors[address(arg1)].field_0:
                        anchors[address(arg1)].field_0 = (block.number / 240) + 1
                        anchors[address(arg1)].field_256 = arg2
                    _assetPrices[address(arg1)] = arg2
                    emit PricePosted(address(arg1), _assetPrices[address(arg1)], arg2, arg2);
                else:
                    require (10^18 * anchors[address(arg1)].field_256) - (maxSwing * anchors[address(arg1)].field_256) / anchors[address(arg1)].field_256 == -maxSwing + 10^18
                    require (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 >= 5 * 10^17
                    if not anchors[address(arg1)].field_256:
                        emit OracleFailure(msg.sender, address(arg1), 2, 7, 0);
                        return 2
                    if arg2 >= (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18:
                        if not arg2:
                            emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                            return 2
                        if pendingAnchors[address(arg1)]:
                            pendingAnchors[address(arg1)] = 0
                        if (block.number / 240) + 1 > anchors[address(arg1)].field_0:
                            anchors[address(arg1)].field_0 = (block.number / 240) + 1
                            anchors[address(arg1)].field_256 = arg2
                        _assetPrices[address(arg1)] = arg2
                        emit PricePosted(address(arg1), _assetPrices[address(arg1)], arg2, arg2);
                    else:
                        if not (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18:
                            emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                            return 2
                        if pendingAnchors[address(arg1)]:
                            pendingAnchors[address(arg1)] = 0
                        if (block.number / 240) + 1 > anchors[address(arg1)].field_0:
                            anchors[address(arg1)].field_0 = (block.number / 240) + 1
                            anchors[address(arg1)].field_256 = (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18
                        _assetPrices[address(arg1)] = (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18
                        emit PricePosted(address(arg1), _assetPrices[address(arg1)], arg2, (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18);
                        emit CappedPricePosted(address(arg1), arg2, anchors[address(arg1)].field_256, (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18);
            else:
                if (maxSwing * anchors[address(arg1)].field_256) + (10^18 * anchors[address(arg1)].field_256) / anchors[address(arg1)].field_256 != maxSwing + 10^18:
                    emit OracleFailure(msg.sender, address(arg1), 2, 5, 3);
                    return 2
                if (maxSwing * anchors[address(arg1)].field_256) + (10^18 * anchors[address(arg1)].field_256) + 5 * 10^17 < 5 * 10^17:
                    emit OracleFailure(msg.sender, address(arg1), 2, 5, 3);
                    return 2
                if arg2 > (10^18 * anchors[address(arg1)].field_256) + (maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18:
                    if not anchors[address(arg1)].field_256:
                        emit OracleFailure(msg.sender, address(arg1), 2, 7, 0);
                        return 2
                    if not (10^18 * anchors[address(arg1)].field_256) + (maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18:
                        emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                        return 2
                    if pendingAnchors[address(arg1)]:
                        pendingAnchors[address(arg1)] = 0
                    if (block.number / 240) + 1 > anchors[address(arg1)].field_0:
                        anchors[address(arg1)].field_0 = (block.number / 240) + 1
                        anchors[address(arg1)].field_256 = (10^18 * anchors[address(arg1)].field_256) + (maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18
                    _assetPrices[address(arg1)] = (10^18 * anchors[address(arg1)].field_256) + (maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18
                    emit PricePosted(address(arg1), _assetPrices[address(arg1)], arg2, (10^18 * anchors[address(arg1)].field_256) + (maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18);
                    emit CappedPricePosted(address(arg1), arg2, anchors[address(arg1)].field_256, (10^18 * anchors[address(arg1)].field_256) + (maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18);
                else:
                    if maxSwing > 10^18:
                        emit OracleFailure(msg.sender, address(arg1), 2, 5, 4);
                        return 2
                    if not anchors[address(arg1)].field_256:
                        if arg2 < 0:
                            if anchors[address(arg1)].field_256:
                                emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                            else:
                                emit OracleFailure(msg.sender, address(arg1), 2, 7, 0);
                            return 2
                        if not anchors[address(arg1)].field_256:
                            emit OracleFailure(msg.sender, address(arg1), 2, 7, 0);
                            return 2
                        if not arg2:
                            emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                            return 2
                        if pendingAnchors[address(arg1)]:
                            pendingAnchors[address(arg1)] = 0
                        if (block.number / 240) + 1 > anchors[address(arg1)].field_0:
                            anchors[address(arg1)].field_0 = (block.number / 240) + 1
                            anchors[address(arg1)].field_256 = arg2
                        _assetPrices[address(arg1)] = arg2
                        emit PricePosted(address(arg1), _assetPrices[address(arg1)], arg2, arg2);
                    else:
                        require (10^18 * anchors[address(arg1)].field_256) - (maxSwing * anchors[address(arg1)].field_256) / anchors[address(arg1)].field_256 == -maxSwing + 10^18
                        require (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 >= 5 * 10^17
                        if not anchors[address(arg1)].field_256:
                            emit OracleFailure(msg.sender, address(arg1), 2, 7, 0);
                            return 2
                        if arg2 >= (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18:
                            if not arg2:
                                emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                                return 2
                            if pendingAnchors[address(arg1)]:
                                pendingAnchors[address(arg1)] = 0
                            if (block.number / 240) + 1 > anchors[address(arg1)].field_0:
                                anchors[address(arg1)].field_0 = (block.number / 240) + 1
                                anchors[address(arg1)].field_256 = arg2
                            _assetPrices[address(arg1)] = arg2
                            emit PricePosted(address(arg1), _assetPrices[address(arg1)], arg2, arg2);
                        else:
                            if not (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18:
                                emit OracleFailure(msg.sender, address(arg1), 2, 9, 0);
                                return 2
                            if pendingAnchors[address(arg1)]:
                                pendingAnchors[address(arg1)] = 0
                            if (block.number / 240) + 1 > anchors[address(arg1)].field_0:
                                anchors[address(arg1)].field_0 = (block.number / 240) + 1
                                anchors[address(arg1)].field_256 = (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18
                            _assetPrices[address(arg1)] = (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18
                            emit PricePosted(address(arg1), _assetPrices[address(arg1)], arg2, (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18);
                            emit CappedPricePosted(address(arg1), arg2, anchors[address(arg1)].field_256, (10^18 * anchors[address(arg1)].field_256) + (-1 * maxSwing * anchors[address(arg1)].field_256) + 5 * 10^17 / 10^18);
    return 0
}

function setPrices(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if posterAddress != msg.sender:
        emit OracleFailure(msg.sender, 0, 1, 8, 0);
        return Array(len=1, data=1)
    if not arg1.length:
        emit OracleFailure(msg.sender, 0, 2, 10, 0);
        return Array(len=1, data=2)
    if arg2.length != arg1.length:
        emit OracleFailure(msg.sender, 0, 2, 10, 0);
        return Array(len=1, data=2)
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    mem[64] = (64 * arg1.length) + (32 * arg2.length) + 192
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _5582 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _5589 = mem[(32 * idx) + (32 * arg1.length) + 160]
            _5595 = mem[64]
            mem[64] = mem[64] + 256
            _5597 = mem[64]
            mem[64] = mem[64] + 32
            mem[_5597] = 0
            mem[_5595] = _5597
            _5599 = mem[64]
            mem[64] = mem[64] + 32
            mem[_5599] = 0
            mem[_5595 + 32] = _5599
            _5601 = mem[64]
            mem[64] = mem[64] + 32
            mem[_5601] = 0
            mem[_5595 + 64] = _5601
            mem[_5595 + 96] = 0
            mem[_5595 + 160] = 0
            mem[_5595 + 192] = 0
            mem[_5595 + 128] = (block.number / 240) + 1
            mem[0] = address(_5582)
            mem[32] = 7
            mem[_5595 + 224] = pendingAnchors[address(_5582)]
            _5604 = mem[64]
            mem[64] = mem[64] + 32
            mem[_5604] = _5589
            mem[_5595] = _5604
            if pendingAnchors[address(_5582)]:
                mem[_5595 + 96] = 0
                _5612 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5612] = pendingAnchors[address(_5582)]
                mem[_5595 + 64] = _5612
                _5628 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5628] = 0
                _5635 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5635] = 0
                if pendingAnchors[address(_5582)] <= _5589:
                    _5677 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5677] = 0
                    require pendingAnchors[address(_5582)] <= _5589
                    _5851 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5851] = _5589 - pendingAnchors[address(_5582)]
                    _5881 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5881] = 0
                    _5897 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5897] = 0
                    if not _5589 - pendingAnchors[address(_5582)]:
                        if not pendingAnchors[address(_5582)]:
                            _5921 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5921] = 0
                            mem[_5595 + 32] = _5921
                            mem[mem[64]] = msg.sender
                            mem[mem[64] + 32] = address(_5582)
                            mem[mem[64] + 64] = 2
                            mem[mem[64] + 96] = 4
                            mem[mem[64] + 128] = 5
                            emit OracleFailure(msg.sender, address(_5582), 2, 4, 5);
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                        else:
                            _5920 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5920] = 0 / pendingAnchors[address(_5582)]
                            mem[_5595 + 32] = _5920
                            _5942 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5942] = maxSwing
                            if 0 / pendingAnchors[address(_5582)] > maxSwing:
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5582)
                                mem[mem[64] + 64] = 2
                                mem[mem[64] + 96] = 6
                                mem[mem[64] + 128] = 0 / pendingAnchors[address(_5582)]
                                emit OracleFailure(msg.sender, address(_5582), 2, 6, 0 / pendingAnchors[address(_5582)]);
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                            else:
                                if not pendingAnchors[address(_5582)]:
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5582)
                                    mem[mem[64] + 64] = 2
                                    mem[mem[64] + 96] = 7
                                    mem[mem[64] + 128] = 0
                                    emit OracleFailure(msg.sender, address(_5582), 2, 7, 0);
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                else:
                                    if not _5589:
                                        mem[mem[64]] = msg.sender
                                        mem[mem[64] + 32] = address(_5582)
                                        mem[mem[64] + 64] = 2
                                        mem[mem[64] + 96] = 9
                                        mem[mem[64] + 128] = 0
                                        emit OracleFailure(msg.sender, address(_5582), 2, 9, 0);
                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                    else:
                                        mem[0] = address(_5582)
                                        mem[32] = 7
                                        if not pendingAnchors[address(_5582)]:
                                            if (block.number / 240) + 1 <= 0:
                                                mem[0] = address(_5582)
                                                _6172 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6172] = _5589
                                            else:
                                                _6132 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6132] = (block.number / 240) + 1
                                                mem[_6132 + 32] = _5589
                                                anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                anchors[address(_5582)].field_256 = _5589
                                                mem[0] = address(_5582)
                                                _6266 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6266] = _5589
                                        else:
                                            mem[0] = address(_5582)
                                            mem[32] = 7
                                            pendingAnchors[address(_5582)] = 0
                                            if (block.number / 240) + 1 <= 0:
                                                mem[0] = address(_5582)
                                                _6269 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6269] = _5589
                                            else:
                                                _6181 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6181] = (block.number / 240) + 1
                                                mem[_6181 + 32] = _5589
                                                anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                anchors[address(_5582)].field_256 = _5589
                                                mem[0] = address(_5582)
                                                _6386 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6386] = _5589
                                        mem[0] = address(_5582)
                                        mem[32] = 1
                                        _assetPrices[address(_5582)] = _5589
                                        mem[mem[64]] = address(_5582)
                                        mem[mem[64] + 32] = _assetPrices[address(_5582)]
                                        mem[mem[64] + 64] = _5589
                                        mem[mem[64] + 96] = _5589
                                        emit PricePosted(address(_5582), _assetPrices[address(_5582)], _5589, _5589);
                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                    else:
                        if (10^18 * _5589) - (10^18 * pendingAnchors[address(_5582)]) / _5589 - pendingAnchors[address(_5582)] != 10^18:
                            _5911 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5911] = 0
                            mem[_5595 + 32] = _5911
                            mem[mem[64]] = msg.sender
                            mem[mem[64] + 32] = address(_5582)
                            mem[mem[64] + 64] = 2
                            mem[mem[64] + 96] = 4
                            mem[mem[64] + 128] = 3
                            emit OracleFailure(msg.sender, address(_5582), 2, 4, 3);
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                        else:
                            if not pendingAnchors[address(_5582)]:
                                _5930 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5930] = 0
                                mem[_5595 + 32] = _5930
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5582)
                                mem[mem[64] + 64] = 2
                                mem[mem[64] + 96] = 4
                                mem[mem[64] + 128] = 5
                                emit OracleFailure(msg.sender, address(_5582), 2, 4, 5);
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                            else:
                                _5929 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5929] = (10^18 * _5589) - (10^18 * pendingAnchors[address(_5582)]) / pendingAnchors[address(_5582)]
                                mem[_5595 + 32] = _5929
                                _5958 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5958] = maxSwing
                                if (10^18 * _5589) - (10^18 * pendingAnchors[address(_5582)]) / pendingAnchors[address(_5582)] > maxSwing:
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5582)
                                    mem[mem[64] + 64] = 2
                                    mem[mem[64] + 96] = 6
                                    mem[mem[64] + 128] = (10^18 * _5589) - (10^18 * pendingAnchors[address(_5582)]) / pendingAnchors[address(_5582)]
                                    emit OracleFailure(msg.sender, address(_5582), 2, 6, (10^18 * _5589) - (10^18 * pendingAnchors[address(_5582)]) / pendingAnchors[address(_5582)]);
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                else:
                                    if not pendingAnchors[address(_5582)]:
                                        mem[mem[64]] = msg.sender
                                        mem[mem[64] + 32] = address(_5582)
                                        mem[mem[64] + 64] = 2
                                        mem[mem[64] + 96] = 7
                                        mem[mem[64] + 128] = 0
                                        emit OracleFailure(msg.sender, address(_5582), 2, 7, 0);
                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                    else:
                                        if not _5589:
                                            mem[mem[64]] = msg.sender
                                            mem[mem[64] + 32] = address(_5582)
                                            mem[mem[64] + 64] = 2
                                            mem[mem[64] + 96] = 9
                                            mem[mem[64] + 128] = 0
                                            emit OracleFailure(msg.sender, address(_5582), 2, 9, 0);
                                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                        else:
                                            mem[0] = address(_5582)
                                            mem[32] = 7
                                            if not pendingAnchors[address(_5582)]:
                                                if (block.number / 240) + 1 <= 0:
                                                    mem[0] = address(_5582)
                                                    _6353 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6353] = _5589
                                                else:
                                                    _6252 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_6252] = (block.number / 240) + 1
                                                    mem[_6252 + 32] = _5589
                                                    anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                    anchors[address(_5582)].field_256 = _5589
                                                    mem[0] = address(_5582)
                                                    _6494 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6494] = _5589
                                            else:
                                                mem[0] = address(_5582)
                                                mem[32] = 7
                                                pendingAnchors[address(_5582)] = 0
                                                if (block.number / 240) + 1 <= 0:
                                                    mem[0] = address(_5582)
                                                    _6497 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6497] = _5589
                                                else:
                                                    _6362 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_6362] = (block.number / 240) + 1
                                                    mem[_6362 + 32] = _5589
                                                    anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                    anchors[address(_5582)].field_256 = _5589
                                                    mem[0] = address(_5582)
                                                    _6646 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6646] = _5589
                                            mem[0] = address(_5582)
                                            mem[32] = 1
                                            _assetPrices[address(_5582)] = _5589
                                            mem[mem[64]] = address(_5582)
                                            mem[mem[64] + 32] = _assetPrices[address(_5582)]
                                            mem[mem[64] + 64] = _5589
                                            mem[mem[64] + 96] = _5589
                                            emit PricePosted(address(_5582), _assetPrices[address(_5582)], _5589, _5589);
                                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                else:
                    _5678 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5678] = 0
                    require _5589 <= pendingAnchors[address(_5582)]
                    _5853 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5853] = pendingAnchors[address(_5582)] - _5589
                    _5887 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5887] = 0
                    _5900 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5900] = 0
                    if not pendingAnchors[address(_5582)] - _5589:
                        if not pendingAnchors[address(_5582)]:
                            _5926 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5926] = 0
                            mem[_5595 + 32] = _5926
                            mem[mem[64]] = msg.sender
                            mem[mem[64] + 32] = address(_5582)
                            mem[mem[64] + 64] = 2
                            mem[mem[64] + 96] = 4
                            mem[mem[64] + 128] = 5
                            emit OracleFailure(msg.sender, address(_5582), 2, 4, 5);
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                        else:
                            _5925 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5925] = 0 / pendingAnchors[address(_5582)]
                            mem[_5595 + 32] = _5925
                            _5950 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5950] = maxSwing
                            if 0 / pendingAnchors[address(_5582)] > maxSwing:
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5582)
                                mem[mem[64] + 64] = 2
                                mem[mem[64] + 96] = 6
                                mem[mem[64] + 128] = 0 / pendingAnchors[address(_5582)]
                                emit OracleFailure(msg.sender, address(_5582), 2, 6, 0 / pendingAnchors[address(_5582)]);
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                            else:
                                if not pendingAnchors[address(_5582)]:
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5582)
                                    mem[mem[64] + 64] = 2
                                    mem[mem[64] + 96] = 7
                                    mem[mem[64] + 128] = 0
                                    emit OracleFailure(msg.sender, address(_5582), 2, 7, 0);
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                else:
                                    if not _5589:
                                        mem[mem[64]] = msg.sender
                                        mem[mem[64] + 32] = address(_5582)
                                        mem[mem[64] + 64] = 2
                                        mem[mem[64] + 96] = 9
                                        mem[mem[64] + 128] = 0
                                        emit OracleFailure(msg.sender, address(_5582), 2, 9, 0);
                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                    else:
                                        mem[0] = address(_5582)
                                        mem[32] = 7
                                        if not pendingAnchors[address(_5582)]:
                                            if (block.number / 240) + 1 <= 0:
                                                mem[0] = address(_5582)
                                                _6279 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6279] = _5589
                                            else:
                                                _6197 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6197] = (block.number / 240) + 1
                                                mem[_6197 + 32] = _5589
                                                anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                anchors[address(_5582)].field_256 = _5589
                                                mem[0] = address(_5582)
                                                _6406 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6406] = _5589
                                        else:
                                            mem[0] = address(_5582)
                                            mem[32] = 7
                                            pendingAnchors[address(_5582)] = 0
                                            if (block.number / 240) + 1 <= 0:
                                                mem[0] = address(_5582)
                                                _6409 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6409] = _5589
                                            else:
                                                _6288 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6288] = (block.number / 240) + 1
                                                mem[_6288 + 32] = _5589
                                                anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                anchors[address(_5582)].field_256 = _5589
                                                mem[0] = address(_5582)
                                                _6553 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6553] = _5589
                                        mem[0] = address(_5582)
                                        mem[32] = 1
                                        _assetPrices[address(_5582)] = _5589
                                        mem[mem[64]] = address(_5582)
                                        mem[mem[64] + 32] = _assetPrices[address(_5582)]
                                        mem[mem[64] + 64] = _5589
                                        mem[mem[64] + 96] = _5589
                                        emit PricePosted(address(_5582), _assetPrices[address(_5582)], _5589, _5589);
                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                    else:
                        if (10^18 * pendingAnchors[address(_5582)]) - (10^18 * _5589) / pendingAnchors[address(_5582)] - _5589 != 10^18:
                            _5915 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5915] = 0
                            mem[_5595 + 32] = _5915
                            mem[mem[64]] = msg.sender
                            mem[mem[64] + 32] = address(_5582)
                            mem[mem[64] + 64] = 2
                            mem[mem[64] + 96] = 4
                            mem[mem[64] + 128] = 3
                            emit OracleFailure(msg.sender, address(_5582), 2, 4, 3);
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                        else:
                            if not pendingAnchors[address(_5582)]:
                                _5935 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5935] = 0
                                mem[_5595 + 32] = _5935
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5582)
                                mem[mem[64] + 64] = 2
                                mem[mem[64] + 96] = 4
                                mem[mem[64] + 128] = 5
                                emit OracleFailure(msg.sender, address(_5582), 2, 4, 5);
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                            else:
                                _5934 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5934] = (10^18 * pendingAnchors[address(_5582)]) - (10^18 * _5589) / pendingAnchors[address(_5582)]
                                mem[_5595 + 32] = _5934
                                _5976 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5976] = maxSwing
                                if (10^18 * pendingAnchors[address(_5582)]) - (10^18 * _5589) / pendingAnchors[address(_5582)] > maxSwing:
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5582)
                                    mem[mem[64] + 64] = 2
                                    mem[mem[64] + 96] = 6
                                    mem[mem[64] + 128] = (10^18 * pendingAnchors[address(_5582)]) - (10^18 * _5589) / pendingAnchors[address(_5582)]
                                    emit OracleFailure(msg.sender, address(_5582), 2, 6, (10^18 * pendingAnchors[address(_5582)]) - (10^18 * _5589) / pendingAnchors[address(_5582)]);
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                else:
                                    if not pendingAnchors[address(_5582)]:
                                        mem[mem[64]] = msg.sender
                                        mem[mem[64] + 32] = address(_5582)
                                        mem[mem[64] + 64] = 2
                                        mem[mem[64] + 96] = 7
                                        mem[mem[64] + 128] = 0
                                        emit OracleFailure(msg.sender, address(_5582), 2, 7, 0);
                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                    else:
                                        if not _5589:
                                            mem[mem[64]] = msg.sender
                                            mem[mem[64] + 32] = address(_5582)
                                            mem[mem[64] + 64] = 2
                                            mem[mem[64] + 96] = 9
                                            mem[mem[64] + 128] = 0
                                            emit OracleFailure(msg.sender, address(_5582), 2, 9, 0);
                                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                        else:
                                            mem[0] = address(_5582)
                                            mem[32] = 7
                                            if not pendingAnchors[address(_5582)]:
                                                if (block.number / 240) + 1 <= 0:
                                                    mem[0] = address(_5582)
                                                    _6520 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6520] = _5589
                                                else:
                                                    _6392 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_6392] = (block.number / 240) + 1
                                                    mem[_6392 + 32] = _5589
                                                    anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                    anchors[address(_5582)].field_256 = _5589
                                                    mem[0] = address(_5582)
                                                    _6663 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6663] = _5589
                                            else:
                                                mem[0] = address(_5582)
                                                mem[32] = 7
                                                pendingAnchors[address(_5582)] = 0
                                                if (block.number / 240) + 1 <= 0:
                                                    mem[0] = address(_5582)
                                                    _6666 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6666] = _5589
                                                else:
                                                    _6529 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_6529] = (block.number / 240) + 1
                                                    mem[_6529 + 32] = _5589
                                                    anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                    anchors[address(_5582)].field_256 = _5589
                                                    mem[0] = address(_5582)
                                                    _6789 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6789] = _5589
                                            mem[0] = address(_5582)
                                            mem[32] = 1
                                            _assetPrices[address(_5582)] = _5589
                                            mem[mem[64]] = address(_5582)
                                            mem[mem[64] + 32] = _assetPrices[address(_5582)]
                                            mem[mem[64] + 64] = _5589
                                            mem[mem[64] + 96] = _5589
                                            emit PricePosted(address(_5582), _assetPrices[address(_5582)], _5589, _5589);
                                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
            else:
                mem[_5595 + 96] = anchors[address(_5582)].field_0
                _5610 = mem[64]
                mem[64] = mem[64] + 32
                mem[0] = address(_5582)
                mem[32] = 6
                mem[_5610] = anchors[address(_5582)].field_256
                mem[_5595 + 64] = _5610
                if not anchors[address(_5582)].field_0:
                    _5621 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5621] = _5589
                    mem[_5595 + 64] = _5621
                    if not _5589:
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = address(_5582)
                        mem[mem[64] + 64] = 2
                        mem[mem[64] + 96] = 7
                        mem[mem[64] + 128] = 0
                        emit OracleFailure(msg.sender, address(_5582), 2, 7, 0);
                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                    else:
                        if not _5589:
                            mem[mem[64]] = msg.sender
                            mem[mem[64] + 32] = address(_5582)
                            mem[mem[64] + 64] = 2
                            mem[mem[64] + 96] = 9
                            mem[mem[64] + 128] = 0
                            emit OracleFailure(msg.sender, address(_5582), 2, 9, 0);
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                        else:
                            mem[0] = address(_5582)
                            mem[32] = 7
                            if not pendingAnchors[address(_5582)]:
                                if (block.number / 240) + 1 <= anchors[address(_5582)].field_0:
                                    mem[0] = address(_5582)
                                    _5693 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5693] = _5589
                                else:
                                    _5668 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5668] = (block.number / 240) + 1
                                    mem[_5668 + 32] = _5589
                                    anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                    anchors[address(_5582)].field_256 = _5589
                                    mem[0] = address(_5582)
                                    _5744 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5744] = _5589
                            else:
                                mem[0] = address(_5582)
                                mem[32] = 7
                                pendingAnchors[address(_5582)] = 0
                                if (block.number / 240) + 1 <= anchors[address(_5582)].field_0:
                                    mem[0] = address(_5582)
                                    _5747 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5747] = _5589
                                else:
                                    _5702 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5702] = (block.number / 240) + 1
                                    mem[_5702 + 32] = _5589
                                    anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                    anchors[address(_5582)].field_256 = _5589
                                    mem[0] = address(_5582)
                                    _5784 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5784] = _5589
                            mem[0] = address(_5582)
                            mem[32] = 1
                            _assetPrices[address(_5582)] = _5589
                            mem[mem[64]] = address(_5582)
                            mem[mem[64] + 32] = _assetPrices[address(_5582)]
                            mem[mem[64] + 64] = _5589
                            mem[mem[64] + 96] = _5589
                            emit PricePosted(address(_5582), _assetPrices[address(_5582)], _5589, _5589);
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                else:
                    _5632 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5632] = 0
                    _5638 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5638] = 0
                    _5642 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5642] = 10^18
                    _5649 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5649] = 0
                    _5660 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5660] = 0
                    _5711 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5711] = 0
                    _5787 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5787] = 0
                    _5823 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5823] = maxSwing
                    _5870 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5870] = 0
                    if maxSwing + 10^18 < 10^18:
                        _5883 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5883] = 0
                        _5899 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5899] = 0
                        mem[_5595] = _5899
                        mem[_5595 + 160] = 0
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = address(_5582)
                        mem[mem[64] + 64] = 2
                        mem[mem[64] + 96] = 5
                        mem[mem[64] + 128] = 3
                        emit OracleFailure(msg.sender, address(_5582), 2, 5, 3);
                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                    else:
                        _5884 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5884] = maxSwing + 10^18
                        _5903 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5903] = 0
                        if not anchors[address(_5582)].field_256:
                            _5970 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5970] = 0
                            if _5589 > 0:
                                mem[_5595] = _5970
                                mem[_5595 + 160] = 1
                                mem[_5595 + 192] = anchors[address(_5582)].field_256
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5582)
                                mem[mem[64] + 64] = 2
                                if anchors[address(_5582)].field_256:
                                    mem[mem[64] + 96] = 9
                                    mem[mem[64] + 128] = 0
                                    emit OracleFailure(msg.sender, address(_5582), 2, 9, 0);
                                else:
                                    mem[mem[64] + 96] = 7
                                    mem[mem[64] + 128] = 0
                                    emit OracleFailure(msg.sender, address(_5582), 2, 7, 0);
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                            else:
                                _6068 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6068] = maxSwing
                                _6100 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6100] = 0
                                if maxSwing > 10^18:
                                    _6485 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6485] = 0
                                    _6853 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6853] = 0
                                    mem[_5595] = _6853
                                    mem[_5595 + 160] = 0
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5582)
                                    mem[mem[64] + 64] = 2
                                    mem[mem[64] + 96] = 5
                                    mem[mem[64] + 128] = 4
                                    emit OracleFailure(msg.sender, address(_5582), 2, 5, 4);
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                else:
                                    _6486 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6486] = -maxSwing + 10^18
                                    _6950 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6950] = 0
                                    if not anchors[address(_5582)].field_256:
                                        _7779 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7779] = 0
                                        if _5589 < 0:
                                            mem[_5595] = _7779
                                            mem[_5595 + 160] = 1
                                            mem[_5595 + 192] = anchors[address(_5582)].field_256
                                            mem[mem[64]] = msg.sender
                                            mem[mem[64] + 32] = address(_5582)
                                            mem[mem[64] + 64] = 2
                                            if anchors[address(_5582)].field_256:
                                                mem[mem[64] + 96] = 9
                                                mem[mem[64] + 128] = 0
                                                emit OracleFailure(msg.sender, address(_5582), 2, 9, 0);
                                            else:
                                                mem[mem[64] + 96] = 7
                                                mem[mem[64] + 128] = 0
                                                emit OracleFailure(msg.sender, address(_5582), 2, 7, 0);
                                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                        else:
                                            mem[_5595] = _5604
                                            mem[_5595 + 160] = 0
                                            if not anchors[address(_5582)].field_256:
                                                mem[mem[64]] = msg.sender
                                                mem[mem[64] + 32] = address(_5582)
                                                mem[mem[64] + 64] = 2
                                                mem[mem[64] + 96] = 7
                                                mem[mem[64] + 128] = 0
                                                emit OracleFailure(msg.sender, address(_5582), 2, 7, 0);
                                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                            else:
                                                if not _5589:
                                                    mem[mem[64]] = msg.sender
                                                    mem[mem[64] + 32] = address(_5582)
                                                    mem[mem[64] + 64] = 2
                                                    mem[mem[64] + 96] = 9
                                                    mem[mem[64] + 128] = 0
                                                    emit OracleFailure(msg.sender, address(_5582), 2, 9, 0);
                                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                                else:
                                                    mem[0] = address(_5582)
                                                    mem[32] = 7
                                                    if not pendingAnchors[address(_5582)]:
                                                        if (block.number / 240) + 1 <= anchors[address(_5582)].field_0:
                                                            mem[0] = address(_5582)
                                                            _8195 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_8195] = _5589
                                                        else:
                                                            _8050 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_8050] = (block.number / 240) + 1
                                                            mem[_8050 + 32] = _5589
                                                            anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                            anchors[address(_5582)].field_256 = _5589
                                                            mem[0] = address(_5582)
                                                            _8476 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_8476] = _5589
                                                    else:
                                                        mem[0] = address(_5582)
                                                        mem[32] = 7
                                                        pendingAnchors[address(_5582)] = 0
                                                        if (block.number / 240) + 1 <= anchors[address(_5582)].field_0:
                                                            mem[0] = address(_5582)
                                                            _8479 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_8479] = _5589
                                                        else:
                                                            _8204 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_8204] = (block.number / 240) + 1
                                                            mem[_8204 + 32] = _5589
                                                            anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                            anchors[address(_5582)].field_256 = _5589
                                                            mem[0] = address(_5582)
                                                            _8870 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_8870] = _5589
                                                    mem[0] = address(_5582)
                                                    mem[32] = 1
                                                    _assetPrices[address(_5582)] = _5589
                                                    mem[mem[64]] = address(_5582)
                                                    mem[mem[64] + 32] = _assetPrices[address(_5582)]
                                                    mem[mem[64] + 64] = _5589
                                                    mem[mem[64] + 96] = _5589
                                                    emit PricePosted(address(_5582), _assetPrices[address(_5582)], _5589, _5589);
                                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                                    else:
                                        require (10^18 * anchors[address(_5582)].field_256) - (maxSwing * anchors[address(_5582)].field_256) / anchors[address(_5582)].field_256 == -maxSwing + 10^18
                                        require (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 >= 5 * 10^17
                                        _7782 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7782] = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                        if _5589 >= (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18:
                                            mem[_5595] = _5604
                                            mem[_5595 + 160] = 0
                                            if not anchors[address(_5582)].field_256:
                                                mem[mem[64]] = msg.sender
                                                mem[mem[64] + 32] = address(_5582)
                                                mem[mem[64] + 64] = 2
                                                mem[mem[64] + 96] = 7
                                                mem[mem[64] + 128] = 0
                                                emit OracleFailure(msg.sender, address(_5582), 2, 7, 0);
                                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                            else:
                                                if not _5589:
                                                    mem[mem[64]] = msg.sender
                                                    mem[mem[64] + 32] = address(_5582)
                                                    mem[mem[64] + 64] = 2
                                                    mem[mem[64] + 96] = 9
                                                    mem[mem[64] + 128] = 0
                                                    emit OracleFailure(msg.sender, address(_5582), 2, 9, 0);
                                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                                else:
                                                    mem[0] = address(_5582)
                                                    mem[32] = 7
                                                    if not pendingAnchors[address(_5582)]:
                                                        if (block.number / 240) + 1 <= anchors[address(_5582)].field_0:
                                                            mem[0] = address(_5582)
                                                            _8783 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_8783] = _5589
                                                        else:
                                                            _8426 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_8426] = (block.number / 240) + 1
                                                            mem[_8426 + 32] = _5589
                                                            anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                            anchors[address(_5582)].field_256 = _5589
                                                            mem[0] = address(_5582)
                                                            _9268 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_9268] = _5589
                                                    else:
                                                        mem[0] = address(_5582)
                                                        mem[32] = 7
                                                        pendingAnchors[address(_5582)] = 0
                                                        if (block.number / 240) + 1 <= anchors[address(_5582)].field_0:
                                                            mem[0] = address(_5582)
                                                            _9271 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_9271] = _5589
                                                        else:
                                                            _8792 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_8792] = (block.number / 240) + 1
                                                            mem[_8792 + 32] = _5589
                                                            anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                            anchors[address(_5582)].field_256 = _5589
                                                            mem[0] = address(_5582)
                                                            _9778 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_9778] = _5589
                                                    mem[0] = address(_5582)
                                                    mem[32] = 1
                                                    _assetPrices[address(_5582)] = _5589
                                                    mem[mem[64]] = address(_5582)
                                                    mem[mem[64] + 32] = _assetPrices[address(_5582)]
                                                    mem[mem[64] + 64] = _5589
                                                    mem[mem[64] + 96] = _5589
                                                    emit PricePosted(address(_5582), _assetPrices[address(_5582)], _5589, _5589);
                                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                                        else:
                                            mem[_5595] = _7782
                                            mem[_5595 + 160] = 1
                                            mem[_5595 + 192] = anchors[address(_5582)].field_256
                                            if not anchors[address(_5582)].field_256:
                                                mem[mem[64]] = msg.sender
                                                mem[mem[64] + 32] = address(_5582)
                                                mem[mem[64] + 64] = 2
                                                mem[mem[64] + 96] = 7
                                                mem[mem[64] + 128] = 0
                                                emit OracleFailure(msg.sender, address(_5582), 2, 7, 0);
                                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                            else:
                                                if not (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18:
                                                    mem[mem[64]] = msg.sender
                                                    mem[mem[64] + 32] = address(_5582)
                                                    mem[mem[64] + 64] = 2
                                                    mem[mem[64] + 96] = 9
                                                    mem[mem[64] + 128] = 0
                                                    emit OracleFailure(msg.sender, address(_5582), 2, 9, 0);
                                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                                else:
                                                    mem[0] = address(_5582)
                                                    mem[32] = 7
                                                    if not pendingAnchors[address(_5582)]:
                                                        if (block.number / 240) + 1 <= anchors[address(_5582)].field_0:
                                                            mem[0] = address(_5582)
                                                            _8837 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_8837] = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                        else:
                                                            _8462 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_8462] = (block.number / 240) + 1
                                                            mem[_8462 + 32] = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                            anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                            anchors[address(_5582)].field_256 = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                            mem[0] = address(_5582)
                                                            _9313 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_9313] = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                    else:
                                                        mem[0] = address(_5582)
                                                        mem[32] = 7
                                                        pendingAnchors[address(_5582)] = 0
                                                        if (block.number / 240) + 1 <= anchors[address(_5582)].field_0:
                                                            mem[0] = address(_5582)
                                                            _9316 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_9316] = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                        else:
                                                            _8846 = mem[64]
                                                            mem[64] = mem[64] + 64
                                                            mem[_8846] = (block.number / 240) + 1
                                                            mem[_8846 + 32] = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                            anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                            anchors[address(_5582)].field_256 = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                            mem[0] = address(_5582)
                                                            _9832 = mem[64]
                                                            mem[64] = mem[64] + 32
                                                            mem[_9832] = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                    mem[0] = address(_5582)
                                                    mem[32] = 1
                                                    _assetPrices[address(_5582)] = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                    emit PricePosted(address(_5582), _assetPrices[address(_5582)], _5589, (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18);
                                                    mem[mem[64]] = address(_5582)
                                                    mem[mem[64] + 32] = _5589
                                                    mem[mem[64] + 64] = anchors[address(_5582)].field_256
                                                    mem[mem[64] + 96] = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                    emit CappedPricePosted(address(_5582), _5589, anchors[address(_5582)].field_256, (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18);
                                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                        else:
                            if (maxSwing * anchors[address(_5582)].field_256) + (10^18 * anchors[address(_5582)].field_256) / anchors[address(_5582)].field_256 != maxSwing + 10^18:
                                _5917 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5917] = 0
                                _5933 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5933] = 0
                                mem[_5595] = _5933
                                mem[_5595 + 160] = 0
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5582)
                                mem[mem[64] + 64] = 2
                                mem[mem[64] + 96] = 5
                                mem[mem[64] + 128] = 3
                                emit OracleFailure(msg.sender, address(_5582), 2, 5, 3);
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                            else:
                                if (maxSwing * anchors[address(_5582)].field_256) + (10^18 * anchors[address(_5582)].field_256) + 5 * 10^17 < 5 * 10^17:
                                    _5939 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5939] = 0
                                    _5969 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5969] = 0
                                    mem[_5595] = _5969
                                    mem[_5595 + 160] = 0
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5582)
                                    mem[mem[64] + 64] = 2
                                    mem[mem[64] + 96] = 5
                                    mem[mem[64] + 128] = 3
                                    emit OracleFailure(msg.sender, address(_5582), 2, 5, 3);
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                else:
                                    _5995 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_5995] = (10^18 * anchors[address(_5582)].field_256) + (maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                    if _5589 > (10^18 * anchors[address(_5582)].field_256) + (maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18:
                                        mem[_5595] = _5995
                                        mem[_5595 + 160] = 1
                                        mem[_5595 + 192] = anchors[address(_5582)].field_256
                                        if not anchors[address(_5582)].field_256:
                                            mem[mem[64]] = msg.sender
                                            mem[mem[64] + 32] = address(_5582)
                                            mem[mem[64] + 64] = 2
                                            mem[mem[64] + 96] = 7
                                            mem[mem[64] + 128] = 0
                                            emit OracleFailure(msg.sender, address(_5582), 2, 7, 0);
                                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                        else:
                                            if not (10^18 * anchors[address(_5582)].field_256) + (maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18:
                                                mem[mem[64]] = msg.sender
                                                mem[mem[64] + 32] = address(_5582)
                                                mem[mem[64] + 64] = 2
                                                mem[mem[64] + 96] = 9
                                                mem[mem[64] + 128] = 0
                                                emit OracleFailure(msg.sender, address(_5582), 2, 9, 0);
                                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                            else:
                                                mem[0] = address(_5582)
                                                mem[32] = 7
                                                if not pendingAnchors[address(_5582)]:
                                                    if (block.number / 240) + 1 <= anchors[address(_5582)].field_0:
                                                        mem[0] = address(_5582)
                                                        _7269 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_7269] = (10^18 * anchors[address(_5582)].field_256) + (maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                    else:
                                                        _7158 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_7158] = (block.number / 240) + 1
                                                        mem[_7158 + 32] = (10^18 * anchors[address(_5582)].field_256) + (maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                        anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                        anchors[address(_5582)].field_256 = (10^18 * anchors[address(_5582)].field_256) + (maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                        mem[0] = address(_5582)
                                                        _7415 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_7415] = (10^18 * anchors[address(_5582)].field_256) + (maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                else:
                                                    mem[0] = address(_5582)
                                                    mem[32] = 7
                                                    pendingAnchors[address(_5582)] = 0
                                                    if (block.number / 240) + 1 <= anchors[address(_5582)].field_0:
                                                        mem[0] = address(_5582)
                                                        _7418 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_7418] = (10^18 * anchors[address(_5582)].field_256) + (maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                    else:
                                                        _7278 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_7278] = (block.number / 240) + 1
                                                        mem[_7278 + 32] = (10^18 * anchors[address(_5582)].field_256) + (maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                        anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                        anchors[address(_5582)].field_256 = (10^18 * anchors[address(_5582)].field_256) + (maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                        mem[0] = address(_5582)
                                                        _7556 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_7556] = (10^18 * anchors[address(_5582)].field_256) + (maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                mem[0] = address(_5582)
                                                mem[32] = 1
                                                _assetPrices[address(_5582)] = (10^18 * anchors[address(_5582)].field_256) + (maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                emit PricePosted(address(_5582), _assetPrices[address(_5582)], _5589, (10^18 * anchors[address(_5582)].field_256) + (maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18);
                                                mem[mem[64]] = address(_5582)
                                                mem[mem[64] + 32] = _5589
                                                mem[mem[64] + 64] = anchors[address(_5582)].field_256
                                                mem[mem[64] + 96] = (10^18 * anchors[address(_5582)].field_256) + (maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                emit CappedPricePosted(address(_5582), _5589, anchors[address(_5582)].field_256, (10^18 * anchors[address(_5582)].field_256) + (maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18);
                                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                                    else:
                                        _6099 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6099] = maxSwing
                                        _6167 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6167] = 0
                                        if maxSwing > 10^18:
                                            _6749 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6749] = 0
                                            _6947 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6947] = 0
                                            mem[_5595] = _6947
                                            mem[_5595 + 160] = 0
                                            mem[mem[64]] = msg.sender
                                            mem[mem[64] + 32] = address(_5582)
                                            mem[mem[64] + 64] = 2
                                            mem[mem[64] + 96] = 5
                                            mem[mem[64] + 128] = 4
                                            emit OracleFailure(msg.sender, address(_5582), 2, 5, 4);
                                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                        else:
                                            _6750 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6750] = -maxSwing + 10^18
                                            _6993 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6993] = 0
                                            if not anchors[address(_5582)].field_256:
                                                _7781 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7781] = 0
                                                if _5589 < 0:
                                                    mem[_5595] = _7781
                                                    mem[_5595 + 160] = 1
                                                    mem[_5595 + 192] = anchors[address(_5582)].field_256
                                                    mem[mem[64]] = msg.sender
                                                    mem[mem[64] + 32] = address(_5582)
                                                    mem[mem[64] + 64] = 2
                                                    if anchors[address(_5582)].field_256:
                                                        mem[mem[64] + 96] = 9
                                                        mem[mem[64] + 128] = 0
                                                        emit OracleFailure(msg.sender, address(_5582), 2, 9, 0);
                                                    else:
                                                        mem[mem[64] + 96] = 7
                                                        mem[mem[64] + 128] = 0
                                                        emit OracleFailure(msg.sender, address(_5582), 2, 7, 0);
                                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                                else:
                                                    mem[_5595] = _5604
                                                    mem[_5595 + 160] = 0
                                                    if not anchors[address(_5582)].field_256:
                                                        mem[mem[64]] = msg.sender
                                                        mem[mem[64] + 32] = address(_5582)
                                                        mem[mem[64] + 64] = 2
                                                        mem[mem[64] + 96] = 7
                                                        mem[mem[64] + 128] = 0
                                                        emit OracleFailure(msg.sender, address(_5582), 2, 7, 0);
                                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                                    else:
                                                        if not _5589:
                                                            mem[mem[64]] = msg.sender
                                                            mem[mem[64] + 32] = address(_5582)
                                                            mem[mem[64] + 64] = 2
                                                            mem[mem[64] + 96] = 9
                                                            mem[mem[64] + 128] = 0
                                                            emit OracleFailure(msg.sender, address(_5582), 2, 9, 0);
                                                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                                        else:
                                                            mem[0] = address(_5582)
                                                            mem[32] = 7
                                                            if not pendingAnchors[address(_5582)]:
                                                                if (block.number / 240) + 1 <= anchors[address(_5582)].field_0:
                                                                    mem[0] = address(_5582)
                                                                    _8711 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_8711] = _5589
                                                                else:
                                                                    _8378 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_8378] = (block.number / 240) + 1
                                                                    mem[_8378 + 32] = _5589
                                                                    anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                                    anchors[address(_5582)].field_256 = _5589
                                                                    mem[0] = address(_5582)
                                                                    _9208 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_9208] = _5589
                                                            else:
                                                                mem[0] = address(_5582)
                                                                mem[32] = 7
                                                                pendingAnchors[address(_5582)] = 0
                                                                if (block.number / 240) + 1 <= anchors[address(_5582)].field_0:
                                                                    mem[0] = address(_5582)
                                                                    _9211 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_9211] = _5589
                                                                else:
                                                                    _8720 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_8720] = (block.number / 240) + 1
                                                                    mem[_8720 + 32] = _5589
                                                                    anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                                    anchors[address(_5582)].field_256 = _5589
                                                                    mem[0] = address(_5582)
                                                                    _9706 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_9706] = _5589
                                                            mem[0] = address(_5582)
                                                            mem[32] = 1
                                                            _assetPrices[address(_5582)] = _5589
                                                            mem[mem[64]] = address(_5582)
                                                            mem[mem[64] + 32] = _assetPrices[address(_5582)]
                                                            mem[mem[64] + 64] = _5589
                                                            mem[mem[64] + 96] = _5589
                                                            emit PricePosted(address(_5582), _assetPrices[address(_5582)], _5589, _5589);
                                                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                                            else:
                                                require (10^18 * anchors[address(_5582)].field_256) - (maxSwing * anchors[address(_5582)].field_256) / anchors[address(_5582)].field_256 == -maxSwing + 10^18
                                                require (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 >= 5 * 10^17
                                                _7785 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_7785] = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                if _5589 >= (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18:
                                                    mem[_5595] = _5604
                                                    mem[_5595 + 160] = 0
                                                    if not anchors[address(_5582)].field_256:
                                                        mem[mem[64]] = msg.sender
                                                        mem[mem[64] + 32] = address(_5582)
                                                        mem[mem[64] + 64] = 2
                                                        mem[mem[64] + 96] = 7
                                                        mem[mem[64] + 128] = 0
                                                        emit OracleFailure(msg.sender, address(_5582), 2, 7, 0);
                                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                                    else:
                                                        if not _5589:
                                                            mem[mem[64]] = msg.sender
                                                            mem[mem[64] + 32] = address(_5582)
                                                            mem[mem[64] + 64] = 2
                                                            mem[mem[64] + 96] = 9
                                                            mem[mem[64] + 128] = 0
                                                            emit OracleFailure(msg.sender, address(_5582), 2, 9, 0);
                                                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                                        else:
                                                            mem[0] = address(_5582)
                                                            mem[32] = 7
                                                            if not pendingAnchors[address(_5582)]:
                                                                if (block.number / 240) + 1 <= anchors[address(_5582)].field_0:
                                                                    mem[0] = address(_5582)
                                                                    _9619 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_9619] = _5589
                                                                else:
                                                                    _9158 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_9158] = (block.number / 240) + 1
                                                                    mem[_9158 + 32] = _5589
                                                                    anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                                    anchors[address(_5582)].field_256 = _5589
                                                                    mem[0] = address(_5582)
                                                                    _10128 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_10128] = _5589
                                                            else:
                                                                mem[0] = address(_5582)
                                                                mem[32] = 7
                                                                pendingAnchors[address(_5582)] = 0
                                                                if (block.number / 240) + 1 <= anchors[address(_5582)].field_0:
                                                                    mem[0] = address(_5582)
                                                                    _10131 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_10131] = _5589
                                                                else:
                                                                    _9628 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_9628] = (block.number / 240) + 1
                                                                    mem[_9628 + 32] = _5589
                                                                    anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                                    anchors[address(_5582)].field_256 = _5589
                                                                    mem[0] = address(_5582)
                                                                    _10538 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_10538] = _5589
                                                            mem[0] = address(_5582)
                                                            mem[32] = 1
                                                            _assetPrices[address(_5582)] = _5589
                                                            mem[mem[64]] = address(_5582)
                                                            mem[mem[64] + 32] = _assetPrices[address(_5582)]
                                                            mem[mem[64] + 64] = _5589
                                                            mem[mem[64] + 96] = _5589
                                                            emit PricePosted(address(_5582), _assetPrices[address(_5582)], _5589, _5589);
                                                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                                                else:
                                                    mem[_5595] = _7785
                                                    mem[_5595 + 160] = 1
                                                    mem[_5595 + 192] = anchors[address(_5582)].field_256
                                                    if not anchors[address(_5582)].field_256:
                                                        mem[mem[64]] = msg.sender
                                                        mem[mem[64] + 32] = address(_5582)
                                                        mem[mem[64] + 64] = 2
                                                        mem[mem[64] + 96] = 7
                                                        mem[mem[64] + 128] = 0
                                                        emit OracleFailure(msg.sender, address(_5582), 2, 7, 0);
                                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                                    else:
                                                        if not (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18:
                                                            mem[mem[64]] = msg.sender
                                                            mem[mem[64] + 32] = address(_5582)
                                                            mem[mem[64] + 64] = 2
                                                            mem[mem[64] + 96] = 9
                                                            mem[mem[64] + 128] = 0
                                                            emit OracleFailure(msg.sender, address(_5582), 2, 9, 0);
                                                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                                        else:
                                                            mem[0] = address(_5582)
                                                            mem[32] = 7
                                                            if not pendingAnchors[address(_5582)]:
                                                                if (block.number / 240) + 1 <= anchors[address(_5582)].field_0:
                                                                    mem[0] = address(_5582)
                                                                    _9673 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_9673] = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                                else:
                                                                    _9194 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_9194] = (block.number / 240) + 1
                                                                    mem[_9194 + 32] = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                                    anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                                    anchors[address(_5582)].field_256 = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                                    mem[0] = address(_5582)
                                                                    _10173 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_10173] = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                            else:
                                                                mem[0] = address(_5582)
                                                                mem[32] = 7
                                                                pendingAnchors[address(_5582)] = 0
                                                                if (block.number / 240) + 1 <= anchors[address(_5582)].field_0:
                                                                    mem[0] = address(_5582)
                                                                    _10176 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_10176] = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                                else:
                                                                    _9682 = mem[64]
                                                                    mem[64] = mem[64] + 64
                                                                    mem[_9682] = (block.number / 240) + 1
                                                                    mem[_9682 + 32] = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                                    anchors[address(_5582)].field_0 = (block.number / 240) + 1
                                                                    anchors[address(_5582)].field_256 = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                                    mem[0] = address(_5582)
                                                                    _10592 = mem[64]
                                                                    mem[64] = mem[64] + 32
                                                                    mem[_10592] = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                            mem[0] = address(_5582)
                                                            mem[32] = 1
                                                            _assetPrices[address(_5582)] = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                            emit PricePosted(address(_5582), _assetPrices[address(_5582)], _5589, (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18);
                                                            mem[mem[64]] = address(_5582)
                                                            mem[mem[64] + 32] = _5589
                                                            mem[mem[64] + 64] = anchors[address(_5582)].field_256
                                                            mem[mem[64] + 96] = (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18
                                                            emit CappedPricePosted(address(_5582), _5589, anchors[address(_5582)].field_256, (10^18 * anchors[address(_5582)].field_256) + (-1 * maxSwing * anchors[address(_5582)].field_256) + 5 * 10^17 / 10^18);
                                                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _5581 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[mem[64] + 64 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
        return 32, mem[mem[64] + 32 len (32 * _5581) + 32]
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = code.data[5192 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _5587 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _5590 = mem[(32 * idx) + (32 * arg1.length) + 160]
        _5596 = mem[64]
        mem[64] = mem[64] + 256
        _5598 = mem[64]
        mem[64] = mem[64] + 32
        mem[_5598] = 0
        mem[_5596] = _5598
        _5600 = mem[64]
        mem[64] = mem[64] + 32
        mem[_5600] = 0
        mem[_5596 + 32] = _5600
        _5602 = mem[64]
        mem[64] = mem[64] + 32
        mem[_5602] = 0
        mem[_5596 + 64] = _5602
        mem[_5596 + 96] = 0
        mem[_5596 + 160] = 0
        mem[_5596 + 192] = 0
        mem[_5596 + 128] = (block.number / 240) + 1
        mem[0] = address(_5587)
        mem[32] = 7
        mem[_5596 + 224] = pendingAnchors[address(_5587)]
        _5607 = mem[64]
        mem[64] = mem[64] + 32
        mem[_5607] = _5590
        mem[_5596] = _5607
        if pendingAnchors[address(_5587)]:
            mem[_5596 + 96] = 0
            _5618 = mem[64]
            mem[64] = mem[64] + 32
            mem[_5618] = pendingAnchors[address(_5587)]
            mem[_5596 + 64] = _5618
            _5630 = mem[64]
            mem[64] = mem[64] + 32
            mem[_5630] = 0
            _5636 = mem[64]
            mem[64] = mem[64] + 32
            mem[_5636] = 0
            if pendingAnchors[address(_5587)] <= _5590:
                _5691 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5691] = 0
                require pendingAnchors[address(_5587)] <= _5590
                _5864 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5864] = _5590 - pendingAnchors[address(_5587)]
                _5882 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5882] = 0
                _5898 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5898] = 0
                if not _5590 - pendingAnchors[address(_5587)]:
                    if not pendingAnchors[address(_5587)]:
                        _5924 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5924] = 0
                        mem[_5596 + 32] = _5924
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = address(_5587)
                        mem[mem[64] + 64] = 2
                        mem[mem[64] + 96] = 4
                        mem[mem[64] + 128] = 5
                        emit OracleFailure(msg.sender, address(_5587), 2, 4, 5);
                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                    else:
                        _5923 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5923] = 0 / pendingAnchors[address(_5587)]
                        mem[_5596 + 32] = _5923
                        _5944 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5944] = maxSwing
                        if 0 / pendingAnchors[address(_5587)] > maxSwing:
                            mem[mem[64]] = msg.sender
                            mem[mem[64] + 32] = address(_5587)
                            mem[mem[64] + 64] = 2
                            mem[mem[64] + 96] = 6
                            mem[mem[64] + 128] = 0 / pendingAnchors[address(_5587)]
                            emit OracleFailure(msg.sender, address(_5587), 2, 6, 0 / pendingAnchors[address(_5587)]);
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                        else:
                            if not pendingAnchors[address(_5587)]:
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5587)
                                mem[mem[64] + 64] = 2
                                mem[mem[64] + 96] = 7
                                mem[mem[64] + 128] = 0
                                emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                            else:
                                if not _5590:
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5587)
                                    mem[mem[64] + 64] = 2
                                    mem[mem[64] + 96] = 9
                                    mem[mem[64] + 128] = 0
                                    emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                else:
                                    mem[0] = address(_5587)
                                    mem[32] = 7
                                    if not pendingAnchors[address(_5587)]:
                                        if (block.number / 240) + 1 <= 0:
                                            mem[0] = address(_5587)
                                            _6211 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6211] = _5590
                                        else:
                                            _6154 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6154] = (block.number / 240) + 1
                                            mem[_6154 + 32] = _5590
                                            anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                            anchors[address(_5587)].field_256 = _5590
                                            mem[0] = address(_5587)
                                            _6318 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6318] = _5590
                                    else:
                                        mem[0] = address(_5587)
                                        mem[32] = 7
                                        pendingAnchors[address(_5587)] = 0
                                        if (block.number / 240) + 1 <= 0:
                                            mem[0] = address(_5587)
                                            _6321 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6321] = _5590
                                        else:
                                            _6220 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6220] = (block.number / 240) + 1
                                            mem[_6220 + 32] = _5590
                                            anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                            anchors[address(_5587)].field_256 = _5590
                                            mem[0] = address(_5587)
                                            _6453 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6453] = _5590
                                    mem[0] = address(_5587)
                                    mem[32] = 1
                                    _assetPrices[address(_5587)] = _5590
                                    mem[mem[64]] = address(_5587)
                                    mem[mem[64] + 32] = _assetPrices[address(_5587)]
                                    mem[mem[64] + 64] = _5590
                                    mem[mem[64] + 96] = _5590
                                    emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5590, _5590);
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                else:
                    if (10^18 * _5590) - (10^18 * pendingAnchors[address(_5587)]) / _5590 - pendingAnchors[address(_5587)] != 10^18:
                        _5914 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5914] = 0
                        mem[_5596 + 32] = _5914
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = address(_5587)
                        mem[mem[64] + 64] = 2
                        mem[mem[64] + 96] = 4
                        mem[mem[64] + 128] = 3
                        emit OracleFailure(msg.sender, address(_5587), 2, 4, 3);
                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                    else:
                        if not pendingAnchors[address(_5587)]:
                            _5932 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5932] = 0
                            mem[_5596 + 32] = _5932
                            mem[mem[64]] = msg.sender
                            mem[mem[64] + 32] = address(_5587)
                            mem[mem[64] + 64] = 2
                            mem[mem[64] + 96] = 4
                            mem[mem[64] + 128] = 5
                            emit OracleFailure(msg.sender, address(_5587), 2, 4, 5);
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                        else:
                            _5931 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5931] = (10^18 * _5590) - (10^18 * pendingAnchors[address(_5587)]) / pendingAnchors[address(_5587)]
                            mem[_5596 + 32] = _5931
                            _5964 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5964] = maxSwing
                            if (10^18 * _5590) - (10^18 * pendingAnchors[address(_5587)]) / pendingAnchors[address(_5587)] > maxSwing:
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5587)
                                mem[mem[64] + 64] = 2
                                mem[mem[64] + 96] = 6
                                mem[mem[64] + 128] = (10^18 * _5590) - (10^18 * pendingAnchors[address(_5587)]) / pendingAnchors[address(_5587)]
                                emit OracleFailure(msg.sender, address(_5587), 2, 6, (10^18 * _5590) - (10^18 * pendingAnchors[address(_5587)]) / pendingAnchors[address(_5587)]);
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                            else:
                                if not pendingAnchors[address(_5587)]:
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5587)
                                    mem[mem[64] + 64] = 2
                                    mem[mem[64] + 96] = 7
                                    mem[mem[64] + 128] = 0
                                    emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                else:
                                    if not _5590:
                                        mem[mem[64]] = msg.sender
                                        mem[mem[64] + 32] = address(_5587)
                                        mem[mem[64] + 64] = 2
                                        mem[mem[64] + 96] = 9
                                        mem[mem[64] + 128] = 0
                                        emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                    else:
                                        mem[0] = address(_5587)
                                        mem[32] = 7
                                        if not pendingAnchors[address(_5587)]:
                                            if (block.number / 240) + 1 <= 0:
                                                mem[0] = address(_5587)
                                                _6420 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6420] = _5590
                                            else:
                                                _6304 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6304] = (block.number / 240) + 1
                                                mem[_6304 + 32] = _5590
                                                anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                                anchors[address(_5587)].field_256 = _5590
                                                mem[0] = address(_5587)
                                                _6567 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6567] = _5590
                                        else:
                                            mem[0] = address(_5587)
                                            mem[32] = 7
                                            pendingAnchors[address(_5587)] = 0
                                            if (block.number / 240) + 1 <= 0:
                                                mem[0] = address(_5587)
                                                _6570 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6570] = _5590
                                            else:
                                                _6429 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6429] = (block.number / 240) + 1
                                                mem[_6429 + 32] = _5590
                                                anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                                anchors[address(_5587)].field_256 = _5590
                                                mem[0] = address(_5587)
                                                _6706 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6706] = _5590
                                        mem[0] = address(_5587)
                                        mem[32] = 1
                                        _assetPrices[address(_5587)] = _5590
                                        mem[mem[64]] = address(_5587)
                                        mem[mem[64] + 32] = _assetPrices[address(_5587)]
                                        mem[mem[64] + 64] = _5590
                                        mem[mem[64] + 96] = _5590
                                        emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5590, _5590);
                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
            else:
                _5692 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5692] = 0
                require _5590 <= pendingAnchors[address(_5587)]
                _5866 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5866] = pendingAnchors[address(_5587)] - _5590
                _5892 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5892] = 0
                _5902 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5902] = 0
                if not pendingAnchors[address(_5587)] - _5590:
                    if not pendingAnchors[address(_5587)]:
                        _5928 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5928] = 0
                        mem[_5596 + 32] = _5928
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = address(_5587)
                        mem[mem[64] + 64] = 2
                        mem[mem[64] + 96] = 4
                        mem[mem[64] + 128] = 5
                        emit OracleFailure(msg.sender, address(_5587), 2, 4, 5);
                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                    else:
                        _5927 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5927] = 0 / pendingAnchors[address(_5587)]
                        mem[_5596 + 32] = _5927
                        _5956 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5956] = maxSwing
                        if 0 / pendingAnchors[address(_5587)] > maxSwing:
                            mem[mem[64]] = msg.sender
                            mem[mem[64] + 32] = address(_5587)
                            mem[mem[64] + 64] = 2
                            mem[mem[64] + 96] = 6
                            mem[mem[64] + 128] = 0 / pendingAnchors[address(_5587)]
                            emit OracleFailure(msg.sender, address(_5587), 2, 6, 0 / pendingAnchors[address(_5587)]);
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                        else:
                            if not pendingAnchors[address(_5587)]:
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5587)
                                mem[mem[64] + 64] = 2
                                mem[mem[64] + 96] = 7
                                mem[mem[64] + 128] = 0
                                emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                            else:
                                if not _5590:
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5587)
                                    mem[mem[64] + 64] = 2
                                    mem[mem[64] + 96] = 9
                                    mem[mem[64] + 128] = 0
                                    emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                else:
                                    mem[0] = address(_5587)
                                    mem[32] = 7
                                    if not pendingAnchors[address(_5587)]:
                                        if (block.number / 240) + 1 <= 0:
                                            mem[0] = address(_5587)
                                            _6331 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6331] = _5590
                                        else:
                                            _6236 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6236] = (block.number / 240) + 1
                                            mem[_6236 + 32] = _5590
                                            anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                            anchors[address(_5587)].field_256 = _5590
                                            mem[0] = address(_5587)
                                            _6473 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6473] = _5590
                                    else:
                                        mem[0] = address(_5587)
                                        mem[32] = 7
                                        pendingAnchors[address(_5587)] = 0
                                        if (block.number / 240) + 1 <= 0:
                                            mem[0] = address(_5587)
                                            _6476 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6476] = _5590
                                        else:
                                            _6340 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_6340] = (block.number / 240) + 1
                                            mem[_6340 + 32] = _5590
                                            anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                            anchors[address(_5587)].field_256 = _5590
                                            mem[0] = address(_5587)
                                            _6626 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6626] = _5590
                                    mem[0] = address(_5587)
                                    mem[32] = 1
                                    _assetPrices[address(_5587)] = _5590
                                    mem[mem[64]] = address(_5587)
                                    mem[mem[64] + 32] = _assetPrices[address(_5587)]
                                    mem[mem[64] + 64] = _5590
                                    mem[mem[64] + 96] = _5590
                                    emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5590, _5590);
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                else:
                    if (10^18 * pendingAnchors[address(_5587)]) - (10^18 * _5590) / pendingAnchors[address(_5587)] - _5590 != 10^18:
                        _5916 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5916] = 0
                        mem[_5596 + 32] = _5916
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = address(_5587)
                        mem[mem[64] + 64] = 2
                        mem[mem[64] + 96] = 4
                        mem[mem[64] + 128] = 3
                        emit OracleFailure(msg.sender, address(_5587), 2, 4, 3);
                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                    else:
                        if not pendingAnchors[address(_5587)]:
                            _5938 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5938] = 0
                            mem[_5596 + 32] = _5938
                            mem[mem[64]] = msg.sender
                            mem[mem[64] + 32] = address(_5587)
                            mem[mem[64] + 64] = 2
                            mem[mem[64] + 96] = 4
                            mem[mem[64] + 128] = 5
                            emit OracleFailure(msg.sender, address(_5587), 2, 4, 5);
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                        else:
                            _5937 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5937] = (10^18 * pendingAnchors[address(_5587)]) - (10^18 * _5590) / pendingAnchors[address(_5587)]
                            mem[_5596 + 32] = _5937
                            _5984 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5984] = maxSwing
                            if (10^18 * pendingAnchors[address(_5587)]) - (10^18 * _5590) / pendingAnchors[address(_5587)] > maxSwing:
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5587)
                                mem[mem[64] + 64] = 2
                                mem[mem[64] + 96] = 6
                                mem[mem[64] + 128] = (10^18 * pendingAnchors[address(_5587)]) - (10^18 * _5590) / pendingAnchors[address(_5587)]
                                emit OracleFailure(msg.sender, address(_5587), 2, 6, (10^18 * pendingAnchors[address(_5587)]) - (10^18 * _5590) / pendingAnchors[address(_5587)]);
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                            else:
                                if not pendingAnchors[address(_5587)]:
                                    mem[mem[64]] = msg.sender
                                    mem[mem[64] + 32] = address(_5587)
                                    mem[mem[64] + 64] = 2
                                    mem[mem[64] + 96] = 7
                                    mem[mem[64] + 128] = 0
                                    emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                else:
                                    if not _5590:
                                        mem[mem[64]] = msg.sender
                                        mem[mem[64] + 32] = address(_5587)
                                        mem[mem[64] + 64] = 2
                                        mem[mem[64] + 96] = 9
                                        mem[mem[64] + 128] = 0
                                        emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                    else:
                                        mem[0] = address(_5587)
                                        mem[32] = 7
                                        if not pendingAnchors[address(_5587)]:
                                            if (block.number / 240) + 1 <= 0:
                                                mem[0] = address(_5587)
                                                _6593 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6593] = _5590
                                            else:
                                                _6459 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6459] = (block.number / 240) + 1
                                                mem[_6459 + 32] = _5590
                                                anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                                anchors[address(_5587)].field_256 = _5590
                                                mem[0] = address(_5587)
                                                _6723 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6723] = _5590
                                        else:
                                            mem[0] = address(_5587)
                                            mem[32] = 7
                                            pendingAnchors[address(_5587)] = 0
                                            if (block.number / 240) + 1 <= 0:
                                                mem[0] = address(_5587)
                                                _6726 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6726] = _5590
                                            else:
                                                _6602 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_6602] = (block.number / 240) + 1
                                                mem[_6602 + 32] = _5590
                                                anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                                anchors[address(_5587)].field_256 = _5590
                                                mem[0] = address(_5587)
                                                _6841 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6841] = _5590
                                        mem[0] = address(_5587)
                                        mem[32] = 1
                                        _assetPrices[address(_5587)] = _5590
                                        mem[mem[64]] = address(_5587)
                                        mem[mem[64] + 32] = _assetPrices[address(_5587)]
                                        mem[mem[64] + 64] = _5590
                                        mem[mem[64] + 96] = _5590
                                        emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5590, _5590);
                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
        else:
            mem[_5596 + 96] = anchors[address(_5587)].field_0
            _5616 = mem[64]
            mem[64] = mem[64] + 32
            mem[0] = address(_5587)
            mem[32] = 6
            mem[_5616] = anchors[address(_5587)].field_256
            mem[_5596 + 64] = _5616
            if not anchors[address(_5587)].field_0:
                _5624 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5624] = _5590
                mem[_5596 + 64] = _5624
                if not _5590:
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = address(_5587)
                    mem[mem[64] + 64] = 2
                    mem[mem[64] + 96] = 7
                    mem[mem[64] + 128] = 0
                    emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                else:
                    if not _5590:
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = address(_5587)
                        mem[mem[64] + 64] = 2
                        mem[mem[64] + 96] = 9
                        mem[mem[64] + 128] = 0
                        emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                    else:
                        mem[0] = address(_5587)
                        mem[32] = 7
                        if not pendingAnchors[address(_5587)]:
                            if (block.number / 240) + 1 <= anchors[address(_5587)].field_0:
                                mem[0] = address(_5587)
                                _5716 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5716] = _5590
                            else:
                                _5682 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5682] = (block.number / 240) + 1
                                mem[_5682 + 32] = _5590
                                anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                anchors[address(_5587)].field_256 = _5590
                                mem[0] = address(_5587)
                                _5759 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5759] = _5590
                        else:
                            mem[0] = address(_5587)
                            mem[32] = 7
                            pendingAnchors[address(_5587)] = 0
                            if (block.number / 240) + 1 <= anchors[address(_5587)].field_0:
                                mem[0] = address(_5587)
                                _5762 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5762] = _5590
                            else:
                                _5725 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5725] = (block.number / 240) + 1
                                mem[_5725 + 32] = _5590
                                anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                anchors[address(_5587)].field_256 = _5590
                                mem[0] = address(_5587)
                                _5803 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5803] = _5590
                        mem[0] = address(_5587)
                        mem[32] = 1
                        _assetPrices[address(_5587)] = _5590
                        mem[mem[64]] = address(_5587)
                        mem[mem[64] + 32] = _assetPrices[address(_5587)]
                        mem[mem[64] + 64] = _5590
                        mem[mem[64] + 96] = _5590
                        emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5590, _5590);
                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
            else:
                _5634 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5634] = 0
                _5640 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5640] = 0
                _5646 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5646] = 10^18
                _5650 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5650] = 0
                _5664 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5664] = 0
                _5734 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5734] = 0
                _5806 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5806] = 0
                _5840 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5840] = maxSwing
                _5874 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5874] = 0
                if maxSwing + 10^18 < 10^18:
                    _5888 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5888] = 0
                    _5901 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5901] = 0
                    mem[_5596] = _5901
                    mem[_5596 + 160] = 0
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = address(_5587)
                    mem[mem[64] + 64] = 2
                    mem[mem[64] + 96] = 5
                    mem[mem[64] + 128] = 3
                    emit OracleFailure(msg.sender, address(_5587), 2, 5, 3);
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                else:
                    _5889 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5889] = maxSwing + 10^18
                    _5904 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_5904] = 0
                    if not anchors[address(_5587)].field_256:
                        _5978 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_5978] = 0
                        if _5590 > 0:
                            mem[_5596] = _5978
                            mem[_5596 + 160] = 1
                            mem[_5596 + 192] = anchors[address(_5587)].field_256
                            mem[mem[64]] = msg.sender
                            mem[mem[64] + 32] = address(_5587)
                            mem[mem[64] + 64] = 2
                            if anchors[address(_5587)].field_256:
                                mem[mem[64] + 96] = 9
                                mem[mem[64] + 128] = 0
                                emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                            else:
                                mem[mem[64] + 96] = 7
                                mem[mem[64] + 128] = 0
                                emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                        else:
                            _6077 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6077] = maxSwing
                            _6113 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_6113] = 0
                            if maxSwing > 10^18:
                                _6558 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6558] = 0
                                _6885 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6885] = 0
                                mem[_5596] = _6885
                                mem[_5596 + 160] = 0
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5587)
                                mem[mem[64] + 64] = 2
                                mem[mem[64] + 96] = 5
                                mem[mem[64] + 128] = 4
                                emit OracleFailure(msg.sender, address(_5587), 2, 5, 4);
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                            else:
                                _6559 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6559] = -maxSwing + 10^18
                                _6964 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6964] = 0
                                if not anchors[address(_5587)].field_256:
                                    _7780 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_7780] = 0
                                    if _5590 < 0:
                                        mem[_5596] = _7780
                                        mem[_5596 + 160] = 1
                                        mem[_5596 + 192] = anchors[address(_5587)].field_256
                                        mem[mem[64]] = msg.sender
                                        mem[mem[64] + 32] = address(_5587)
                                        mem[mem[64] + 64] = 2
                                        if anchors[address(_5587)].field_256:
                                            mem[mem[64] + 96] = 9
                                            mem[mem[64] + 128] = 0
                                            emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                        else:
                                            mem[mem[64] + 96] = 7
                                            mem[mem[64] + 128] = 0
                                            emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                    else:
                                        mem[_5596] = _5607
                                        mem[_5596 + 160] = 0
                                        if not anchors[address(_5587)].field_256:
                                            mem[mem[64]] = msg.sender
                                            mem[mem[64] + 32] = address(_5587)
                                            mem[mem[64] + 64] = 2
                                            mem[mem[64] + 96] = 7
                                            mem[mem[64] + 128] = 0
                                            emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                        else:
                                            if not _5590:
                                                mem[mem[64]] = msg.sender
                                                mem[mem[64] + 32] = address(_5587)
                                                mem[mem[64] + 64] = 2
                                                mem[mem[64] + 96] = 9
                                                mem[mem[64] + 128] = 0
                                                emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                            else:
                                                mem[0] = address(_5587)
                                                mem[32] = 7
                                                if not pendingAnchors[address(_5587)]:
                                                    if (block.number / 240) + 1 <= anchors[address(_5587)].field_0:
                                                        mem[0] = address(_5587)
                                                        _8291 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_8291] = _5590
                                                    else:
                                                        _8126 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_8126] = (block.number / 240) + 1
                                                        mem[_8126 + 32] = _5590
                                                        anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                                        anchors[address(_5587)].field_256 = _5590
                                                        mem[0] = address(_5587)
                                                        _8644 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_8644] = _5590
                                                else:
                                                    mem[0] = address(_5587)
                                                    mem[32] = 7
                                                    pendingAnchors[address(_5587)] = 0
                                                    if (block.number / 240) + 1 <= anchors[address(_5587)].field_0:
                                                        mem[0] = address(_5587)
                                                        _8647 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_8647] = _5590
                                                    else:
                                                        _8300 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_8300] = (block.number / 240) + 1
                                                        mem[_8300 + 32] = _5590
                                                        anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                                        anchors[address(_5587)].field_256 = _5590
                                                        mem[0] = address(_5587)
                                                        _9098 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_9098] = _5590
                                                mem[0] = address(_5587)
                                                mem[32] = 1
                                                _assetPrices[address(_5587)] = _5590
                                                mem[mem[64]] = address(_5587)
                                                mem[mem[64] + 32] = _assetPrices[address(_5587)]
                                                mem[mem[64] + 64] = _5590
                                                mem[mem[64] + 96] = _5590
                                                emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5590, _5590);
                                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                                else:
                                    require (10^18 * anchors[address(_5587)].field_256) - (maxSwing * anchors[address(_5587)].field_256) / anchors[address(_5587)].field_256 == -maxSwing + 10^18
                                    require (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 >= 5 * 10^17
                                    _7784 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_7784] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                    if _5590 >= (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18:
                                        mem[_5596] = _5607
                                        mem[_5596 + 160] = 0
                                        if not anchors[address(_5587)].field_256:
                                            mem[mem[64]] = msg.sender
                                            mem[mem[64] + 32] = address(_5587)
                                            mem[mem[64] + 64] = 2
                                            mem[mem[64] + 96] = 7
                                            mem[mem[64] + 128] = 0
                                            emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                        else:
                                            if not _5590:
                                                mem[mem[64]] = msg.sender
                                                mem[mem[64] + 32] = address(_5587)
                                                mem[mem[64] + 64] = 2
                                                mem[mem[64] + 96] = 9
                                                mem[mem[64] + 128] = 0
                                                emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                            else:
                                                mem[0] = address(_5587)
                                                mem[32] = 7
                                                if not pendingAnchors[address(_5587)]:
                                                    if (block.number / 240) + 1 <= anchors[address(_5587)].field_0:
                                                        mem[0] = address(_5587)
                                                        _9011 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_9011] = _5590
                                                    else:
                                                        _8594 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_8594] = (block.number / 240) + 1
                                                        mem[_8594 + 32] = _5590
                                                        anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                                        anchors[address(_5587)].field_256 = _5590
                                                        mem[0] = address(_5587)
                                                        _9500 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_9500] = _5590
                                                else:
                                                    mem[0] = address(_5587)
                                                    mem[32] = 7
                                                    pendingAnchors[address(_5587)] = 0
                                                    if (block.number / 240) + 1 <= anchors[address(_5587)].field_0:
                                                        mem[0] = address(_5587)
                                                        _9503 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_9503] = _5590
                                                    else:
                                                        _9020 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_9020] = (block.number / 240) + 1
                                                        mem[_9020 + 32] = _5590
                                                        anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                                        anchors[address(_5587)].field_256 = _5590
                                                        mem[0] = address(_5587)
                                                        _10030 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_10030] = _5590
                                                mem[0] = address(_5587)
                                                mem[32] = 1
                                                _assetPrices[address(_5587)] = _5590
                                                mem[mem[64]] = address(_5587)
                                                mem[mem[64] + 32] = _assetPrices[address(_5587)]
                                                mem[mem[64] + 64] = _5590
                                                mem[mem[64] + 96] = _5590
                                                emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5590, _5590);
                                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                                    else:
                                        mem[_5596] = _7784
                                        mem[_5596 + 160] = 1
                                        mem[_5596 + 192] = anchors[address(_5587)].field_256
                                        if not anchors[address(_5587)].field_256:
                                            mem[mem[64]] = msg.sender
                                            mem[mem[64] + 32] = address(_5587)
                                            mem[mem[64] + 64] = 2
                                            mem[mem[64] + 96] = 7
                                            mem[mem[64] + 128] = 0
                                            emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                        else:
                                            if not (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18:
                                                mem[mem[64]] = msg.sender
                                                mem[mem[64] + 32] = address(_5587)
                                                mem[mem[64] + 64] = 2
                                                mem[mem[64] + 96] = 9
                                                mem[mem[64] + 128] = 0
                                                emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                            else:
                                                mem[0] = address(_5587)
                                                mem[32] = 7
                                                if not pendingAnchors[address(_5587)]:
                                                    if (block.number / 240) + 1 <= anchors[address(_5587)].field_0:
                                                        mem[0] = address(_5587)
                                                        _9065 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_9065] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                    else:
                                                        _8630 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_8630] = (block.number / 240) + 1
                                                        mem[_8630 + 32] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                        anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                                        anchors[address(_5587)].field_256 = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                        mem[0] = address(_5587)
                                                        _9545 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_9545] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                else:
                                                    mem[0] = address(_5587)
                                                    mem[32] = 7
                                                    pendingAnchors[address(_5587)] = 0
                                                    if (block.number / 240) + 1 <= anchors[address(_5587)].field_0:
                                                        mem[0] = address(_5587)
                                                        _9548 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_9548] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                    else:
                                                        _9074 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_9074] = (block.number / 240) + 1
                                                        mem[_9074 + 32] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                        anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                                        anchors[address(_5587)].field_256 = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                        mem[0] = address(_5587)
                                                        _10084 = mem[64]
                                                        mem[64] = mem[64] + 32
                                                        mem[_10084] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                mem[0] = address(_5587)
                                                mem[32] = 1
                                                _assetPrices[address(_5587)] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5590, (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18);
                                                mem[mem[64]] = address(_5587)
                                                mem[mem[64] + 32] = _5590
                                                mem[mem[64] + 64] = anchors[address(_5587)].field_256
                                                mem[mem[64] + 96] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                emit CappedPricePosted(address(_5587), _5590, anchors[address(_5587)].field_256, (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18);
                                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                    else:
                        if (maxSwing * anchors[address(_5587)].field_256) + (10^18 * anchors[address(_5587)].field_256) / anchors[address(_5587)].field_256 != maxSwing + 10^18:
                            _5918 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5918] = 0
                            _5936 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_5936] = 0
                            mem[_5596] = _5936
                            mem[_5596 + 160] = 0
                            mem[mem[64]] = msg.sender
                            mem[mem[64] + 32] = address(_5587)
                            mem[mem[64] + 64] = 2
                            mem[mem[64] + 96] = 5
                            mem[mem[64] + 128] = 3
                            emit OracleFailure(msg.sender, address(_5587), 2, 5, 3);
                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                        else:
                            if (maxSwing * anchors[address(_5587)].field_256) + (10^18 * anchors[address(_5587)].field_256) + 5 * 10^17 < 5 * 10^17:
                                _5940 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5940] = 0
                                _5977 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_5977] = 0
                                mem[_5596] = _5977
                                mem[_5596 + 160] = 0
                                mem[mem[64]] = msg.sender
                                mem[mem[64] + 32] = address(_5587)
                                mem[mem[64] + 64] = 2
                                mem[mem[64] + 96] = 5
                                mem[mem[64] + 128] = 3
                                emit OracleFailure(msg.sender, address(_5587), 2, 5, 3);
                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                            else:
                                _6005 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_6005] = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                if _5590 > (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18:
                                    mem[_5596] = _6005
                                    mem[_5596 + 160] = 1
                                    mem[_5596 + 192] = anchors[address(_5587)].field_256
                                    if not anchors[address(_5587)].field_256:
                                        mem[mem[64]] = msg.sender
                                        mem[mem[64] + 32] = address(_5587)
                                        mem[mem[64] + 64] = 2
                                        mem[mem[64] + 96] = 7
                                        mem[mem[64] + 128] = 0
                                        emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                    else:
                                        if not (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18:
                                            mem[mem[64]] = msg.sender
                                            mem[mem[64] + 32] = address(_5587)
                                            mem[mem[64] + 64] = 2
                                            mem[mem[64] + 96] = 9
                                            mem[mem[64] + 128] = 0
                                            emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                        else:
                                            mem[0] = address(_5587)
                                            mem[32] = 7
                                            if not pendingAnchors[address(_5587)]:
                                                if (block.number / 240) + 1 <= anchors[address(_5587)].field_0:
                                                    mem[0] = address(_5587)
                                                    _7341 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_7341] = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                else:
                                                    _7212 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_7212] = (block.number / 240) + 1
                                                    mem[_7212 + 32] = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                    anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                                    anchors[address(_5587)].field_256 = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                    mem[0] = address(_5587)
                                                    _7479 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_7479] = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                            else:
                                                mem[0] = address(_5587)
                                                mem[32] = 7
                                                pendingAnchors[address(_5587)] = 0
                                                if (block.number / 240) + 1 <= anchors[address(_5587)].field_0:
                                                    mem[0] = address(_5587)
                                                    _7482 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_7482] = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                else:
                                                    _7350 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_7350] = (block.number / 240) + 1
                                                    mem[_7350 + 32] = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                    anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                                    anchors[address(_5587)].field_256 = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                    mem[0] = address(_5587)
                                                    _7610 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_7610] = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                            mem[0] = address(_5587)
                                            mem[32] = 1
                                            _assetPrices[address(_5587)] = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                            emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5590, (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18);
                                            mem[mem[64]] = address(_5587)
                                            mem[mem[64] + 32] = _5590
                                            mem[mem[64] + 64] = anchors[address(_5587)].field_256
                                            mem[mem[64] + 96] = (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                            emit CappedPricePosted(address(_5587), _5590, anchors[address(_5587)].field_256, (10^18 * anchors[address(_5587)].field_256) + (maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18);
                                            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                                else:
                                    _6112 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6112] = maxSwing
                                    _6206 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_6206] = 0
                                    if maxSwing > 10^18:
                                        _6801 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6801] = 0
                                        _6961 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6961] = 0
                                        mem[_5596] = _6961
                                        mem[_5596 + 160] = 0
                                        mem[mem[64]] = msg.sender
                                        mem[mem[64] + 32] = address(_5587)
                                        mem[mem[64] + 64] = 2
                                        mem[mem[64] + 96] = 5
                                        mem[mem[64] + 128] = 4
                                        emit OracleFailure(msg.sender, address(_5587), 2, 5, 4);
                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                    else:
                                        _6802 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6802] = -maxSwing + 10^18
                                        _7024 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7024] = 0
                                        if not anchors[address(_5587)].field_256:
                                            _7783 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7783] = 0
                                            if _5590 < 0:
                                                mem[_5596] = _7783
                                                mem[_5596 + 160] = 1
                                                mem[_5596 + 192] = anchors[address(_5587)].field_256
                                                mem[mem[64]] = msg.sender
                                                mem[mem[64] + 32] = address(_5587)
                                                mem[mem[64] + 64] = 2
                                                if anchors[address(_5587)].field_256:
                                                    mem[mem[64] + 96] = 9
                                                    mem[mem[64] + 128] = 0
                                                    emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                                else:
                                                    mem[mem[64] + 96] = 7
                                                    mem[mem[64] + 128] = 0
                                                    emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                            else:
                                                mem[_5596] = _5607
                                                mem[_5596 + 160] = 0
                                                if not anchors[address(_5587)].field_256:
                                                    mem[mem[64]] = msg.sender
                                                    mem[mem[64] + 32] = address(_5587)
                                                    mem[mem[64] + 64] = 2
                                                    mem[mem[64] + 96] = 7
                                                    mem[mem[64] + 128] = 0
                                                    emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                                else:
                                                    if not _5590:
                                                        mem[mem[64]] = msg.sender
                                                        mem[mem[64] + 32] = address(_5587)
                                                        mem[mem[64] + 64] = 2
                                                        mem[mem[64] + 96] = 9
                                                        mem[mem[64] + 128] = 0
                                                        emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                                    else:
                                                        mem[0] = address(_5587)
                                                        mem[32] = 7
                                                        if not pendingAnchors[address(_5587)]:
                                                            if (block.number / 240) + 1 <= anchors[address(_5587)].field_0:
                                                                mem[0] = address(_5587)
                                                                _8939 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_8939] = _5590
                                                            else:
                                                                _8546 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_8546] = (block.number / 240) + 1
                                                                mem[_8546 + 32] = _5590
                                                                anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                                                anchors[address(_5587)].field_256 = _5590
                                                                mem[0] = address(_5587)
                                                                _9440 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_9440] = _5590
                                                        else:
                                                            mem[0] = address(_5587)
                                                            mem[32] = 7
                                                            pendingAnchors[address(_5587)] = 0
                                                            if (block.number / 240) + 1 <= anchors[address(_5587)].field_0:
                                                                mem[0] = address(_5587)
                                                                _9443 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_9443] = _5590
                                                            else:
                                                                _8948 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_8948] = (block.number / 240) + 1
                                                                mem[_8948 + 32] = _5590
                                                                anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                                                anchors[address(_5587)].field_256 = _5590
                                                                mem[0] = address(_5587)
                                                                _9958 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_9958] = _5590
                                                        mem[0] = address(_5587)
                                                        mem[32] = 1
                                                        _assetPrices[address(_5587)] = _5590
                                                        mem[mem[64]] = address(_5587)
                                                        mem[mem[64] + 32] = _assetPrices[address(_5587)]
                                                        mem[mem[64] + 64] = _5590
                                                        mem[mem[64] + 96] = _5590
                                                        emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5590, _5590);
                                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                                        else:
                                            require (10^18 * anchors[address(_5587)].field_256) - (maxSwing * anchors[address(_5587)].field_256) / anchors[address(_5587)].field_256 == -maxSwing + 10^18
                                            require (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 >= 5 * 10^17
                                            _7788 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_7788] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                            if _5590 >= (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18:
                                                mem[_5596] = _5607
                                                mem[_5596 + 160] = 0
                                                if not anchors[address(_5587)].field_256:
                                                    mem[mem[64]] = msg.sender
                                                    mem[mem[64] + 32] = address(_5587)
                                                    mem[mem[64] + 64] = 2
                                                    mem[mem[64] + 96] = 7
                                                    mem[mem[64] + 128] = 0
                                                    emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                                else:
                                                    if not _5590:
                                                        mem[mem[64]] = msg.sender
                                                        mem[mem[64] + 32] = address(_5587)
                                                        mem[mem[64] + 64] = 2
                                                        mem[mem[64] + 96] = 9
                                                        mem[mem[64] + 128] = 0
                                                        emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                                    else:
                                                        mem[0] = address(_5587)
                                                        mem[32] = 7
                                                        if not pendingAnchors[address(_5587)]:
                                                            if (block.number / 240) + 1 <= anchors[address(_5587)].field_0:
                                                                mem[0] = address(_5587)
                                                                _9871 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_9871] = _5590
                                                            else:
                                                                _9390 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_9390] = (block.number / 240) + 1
                                                                mem[_9390 + 32] = _5590
                                                                anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                                                anchors[address(_5587)].field_256 = _5590
                                                                mem[0] = address(_5587)
                                                                _10328 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_10328] = _5590
                                                        else:
                                                            mem[0] = address(_5587)
                                                            mem[32] = 7
                                                            pendingAnchors[address(_5587)] = 0
                                                            if (block.number / 240) + 1 <= anchors[address(_5587)].field_0:
                                                                mem[0] = address(_5587)
                                                                _10331 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_10331] = _5590
                                                            else:
                                                                _9880 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_9880] = (block.number / 240) + 1
                                                                mem[_9880 + 32] = _5590
                                                                anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                                                anchors[address(_5587)].field_256 = _5590
                                                                mem[0] = address(_5587)
                                                                _10686 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_10686] = _5590
                                                        mem[0] = address(_5587)
                                                        mem[32] = 1
                                                        _assetPrices[address(_5587)] = _5590
                                                        mem[mem[64]] = address(_5587)
                                                        mem[mem[64] + 32] = _assetPrices[address(_5587)]
                                                        mem[mem[64] + 64] = _5590
                                                        mem[mem[64] + 96] = _5590
                                                        emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5590, _5590);
                                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
                                            else:
                                                mem[_5596] = _7788
                                                mem[_5596 + 160] = 1
                                                mem[_5596 + 192] = anchors[address(_5587)].field_256
                                                if not anchors[address(_5587)].field_256:
                                                    mem[mem[64]] = msg.sender
                                                    mem[mem[64] + 32] = address(_5587)
                                                    mem[mem[64] + 64] = 2
                                                    mem[mem[64] + 96] = 7
                                                    mem[mem[64] + 128] = 0
                                                    emit OracleFailure(msg.sender, address(_5587), 2, 7, 0);
                                                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                                else:
                                                    if not (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18:
                                                        mem[mem[64]] = msg.sender
                                                        mem[mem[64] + 32] = address(_5587)
                                                        mem[mem[64] + 64] = 2
                                                        mem[mem[64] + 96] = 9
                                                        mem[mem[64] + 128] = 0
                                                        emit OracleFailure(msg.sender, address(_5587), 2, 9, 0);
                                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 2
                                                    else:
                                                        mem[0] = address(_5587)
                                                        mem[32] = 7
                                                        if not pendingAnchors[address(_5587)]:
                                                            if (block.number / 240) + 1 <= anchors[address(_5587)].field_0:
                                                                mem[0] = address(_5587)
                                                                _9925 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_9925] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                            else:
                                                                _9426 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_9426] = (block.number / 240) + 1
                                                                mem[_9426 + 32] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                                anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                                                anchors[address(_5587)].field_256 = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                                mem[0] = address(_5587)
                                                                _10373 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_10373] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                        else:
                                                            mem[0] = address(_5587)
                                                            mem[32] = 7
                                                            pendingAnchors[address(_5587)] = 0
                                                            if (block.number / 240) + 1 <= anchors[address(_5587)].field_0:
                                                                mem[0] = address(_5587)
                                                                _10376 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_10376] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                            else:
                                                                _9934 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_9934] = (block.number / 240) + 1
                                                                mem[_9934 + 32] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                                anchors[address(_5587)].field_0 = (block.number / 240) + 1
                                                                anchors[address(_5587)].field_256 = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                                mem[0] = address(_5587)
                                                                _10740 = mem[64]
                                                                mem[64] = mem[64] + 32
                                                                mem[_10740] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                        mem[0] = address(_5587)
                                                        mem[32] = 1
                                                        _assetPrices[address(_5587)] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                        emit PricePosted(address(_5587), _assetPrices[address(_5587)], _5590, (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18);
                                                        mem[mem[64]] = address(_5587)
                                                        mem[mem[64] + 32] = _5590
                                                        mem[mem[64] + 64] = anchors[address(_5587)].field_256
                                                        mem[mem[64] + 96] = (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18
                                                        emit CappedPricePosted(address(_5587), _5590, anchors[address(_5587)].field_256, (10^18 * anchors[address(_5587)].field_256) + (-1 * maxSwing * anchors[address(_5587)].field_256) + 5 * 10^17 / 10^18);
                                                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                                                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
    _5586 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
    mem[mem[64] + 64 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
    return 32, mem[mem[64] + 32 len (32 * _5586) + 32]
}



}
