# Notes for Test_ReadCropPatternFromParcels_ArkEx test

Comparing the results from this command and the similar
`ReadCropPatternTSFromHydroBase/Test_ReadCropPatternTSFromHydroBase_ArkEx.StateDMI` test will
show the following:

1. Groundwater-only location results are only accurate in this `FromParcels` command (not older from `FromHydroBase` command)
because new code handles WDID/Receipt data from parcel-based input.
2. All other results should be the same or within roundoff.

## Period of Test

The period for the test is 2000-2016, although HydroBase only has data for the years 2010, 2013, 2014, 2015, 2016
within this period. ParcelUseTS data are available in 2003 for HydroBase20200720 but this appears to be old data
that needs to be removed.

## Check Results

See the accompanying `Test_ReadCropPatternTSFromHydroBase_ArkEx.StateDMI.xlsx` workbook.
Data were copied from the `Test_ReadCropPatternTSFromHydroBase_ArkEx_ModelParcelSupply_AfterCDS.txt` file.

Locations were provided by Kara Sobieski of Wilson Water Group.
Additional locations can be added if necessary to provide further validation.
