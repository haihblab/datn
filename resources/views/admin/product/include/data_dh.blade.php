<div class="form-group col-sm-6 {{ $errors->first('pro_country') ? 'has-error' : '' }}">
    <label>Xuất sứ</label>
    <select name="pro_country" class="form-control">
        <option value="1">Việt Nam</option>
        <option value="2">Anh</option>
        <option value="3">Thụy Sỹ</option>
        <option value="4">Mỹ</option>
    </select>
    @if ($errors->first('pro_country'))
        <span class="text-danger">{{ $errors->first('pro_country') }}</span>
    @endif
</div>

<div class="form-group col-sm-6">
    <label>Năng Lượng</label>
    <input type="text" name="pro_energy" value="{{ old('pro_energy') }}" class="form-control" placeholder="Năng lượng">
</div>

<div class="form-group col-sm-6">
    <label>Độ chịu nước</label>
    <input type="text" name="pro_resistant" value="{{ old('pro_resistant') }}" class="form-control" placeholder="Độ chịu nước">
</div>

<div class="form-group col-sm-6 {{ $errors->first('pro_number') ? 'has-error' : '' }}">
    <label>Số Lượng</label>
    <input type="number" name="pro_number" value="{{ old('pro_number') }}" class="form-control" placeholder="0">
    @if ($errors->first('pro_number'))
        <span class="text-danger">{{ $errors->first('pro_number') }}</span>
    @endif
</div>