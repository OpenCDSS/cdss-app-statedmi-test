#HeaderRevision 0
#
# File generated by...
# program:      StateDMI 3.07.00 (2009-05-11)
# user:         sam
# date:         Mon May 11 05:05:19 MDT 2009
# host:         SOPRIS
# directory:    C:\Develop\StateDMI_SourceBuild\StateDMI\test\regression\commands\CheckCropPatternTS
# command line: StateDMI -home test\operational\CDSS
#----
# -----------------------------------------------------------------------
# Command file name: "C:\Develop\StateDMI_SourceBuild\StateDMI\test\regression\commands\CheckCropPatternTS\Test_CropPatternTS.StateDMI"
# Commands: 
# # Test checking crop pattern time series data where some values are in error
# # The set command won't let invalid data be set from parameters so use
# # values in a StateCU input file to trigger the check warnings.
# # Compare the data csv to make sure the data are being produced as expected
# # and the check file csv to make sure the checks are working.
# # The expected status is Warning because the check will detect the missing values.
# #@expectedStatus Warning
# StartLog(LogFile="Results/Test_CheckCropPatternTS.StateDMI.log")
# RemoveFile(InputFile="Results\Test_CheckCropPatternTS_out.csv",IfNotFound=Ignore)
# RemoveFile(InputFile="Results\Test_CheckCropPatternTS_out.html",IfNotFound=Ignore)
# ReadCropPatternTSFromStateCU(InputFile="Data\simple.cds")
# # Uncomment the following command to regenerate the expected results.
# WriteCropPatternTSToStateCU(OutputFile="ExpectedResults/Test_CheckCropPatternTS_out.cds")
# WriteCropPatternTSToStateCU(OutputFile="Results/Test_CheckCropPatternTS_out.cds")
# CompareFiles(InputFile1="ExpectedResults/Test_CheckCropPatternTS_out.cds",InputFile2="Results/Test_CheckCropPatternTS_out.cds",WarnIfDifferent=True)
# #
# # Check the data and create the check file.
# CheckCropPatternTS(ID="*")
# # Uncomment the following command to regenerate the expected results.
# WriteCheckFile(OutputFile="ExpectedResults/Test_CheckCropPatternTS_out_check.csv")
# WriteCheckFile(OutputFile="Results/Test_CheckCropPatternTS_out_check.csv")
# WriteCheckFile(OutputFile="Results/Test_CheckCropPatternTS_out_check.html")
# CompareFiles(InputFile1="ExpectedResults/Test_CheckCropPatternTS_out_check.csv",InputFile2="Results/Test_CheckCropPatternTS_out_check.csv",WarnIfDifferent=True)
# 
# -----------------------------------------------------------------------------
# HydroBase database is: HydroBase on hbserver
# HydroBase.db_version:  design version: 20080701  last data change: 20080901
# HydroBase table structure for software is at least 2007052520070525
# HydroBase input name is "".
# Stored procedures are being used.
# -----------------------------------------------------------------------------
# 
#------------------------------------------------
#>
#>  StateCU Crop Patterns (CDS) File
#>
#>  Header format (6x,i4,5x,6x,i4,a5,a5)
#>
#>  year1            :  Beginning year of data (calendar year).
#>  year2            :  Ending year of data (calendar year).
#>  yeartype         :  Year type (always CYR for calendar).
#>
#>  Record 1 format (i4,1x,a12,18x,f10.0,i10) - for each year/CULocation.
#>
#>  Yr            tyr:  Year for data (calendar year).
#>  CULocation    tid:  CU Location ID (e.g., structure/station).
#>  TotalAcres ttacre:  Total acreage for the CU Location.
#>  NCrop            :  Number of crops at location/year.
#>
#>  Record 2 format (5x,a30,f10.3,f10.3) - for each crop for Record 1
#>
#>  CropName    cropn:  Crop name (e.g., ALFALFA).
#>  Fraction     tpct:  Decimal fraction of total acreage
#>                      for the crop (0.0 to 1.0) - INFO ONLY.
#>                      Equal to total/crop acres.
#>                      Fractions should add to 1.0.
#>  Acres       acres:  Acreage for crop.
#>                      Should sum to the total acres.
#>
#>Yr  CULocation                   TotalArea   NCrop
#>-exb----------exxxxxxxxxxxxxxxxxxb--------eb--------e
#>     CropName                    Fraction    Acres
#>xxxb----------------------------eb--------eb--------e
#>EndHeader
      2002           2003 ACRE CYR  
2002 360645                          -355.962         1
     GRASS_PASTURE                   -999.000  -355.962
2002 360649                             0.000         1
     GRASS_PASTURE                      0.000     0.000
2002 360660                             0.000         0
2002 360662                          2368.798         2
     ALFALFA                            0.085   201.348
     GRASS_PASTURE                      0.915  2167.450
2002 370548                           210.147         3
     ALFALFA                            0.000     0.000
     GRASS_PASTURE                      1.000   210.147
     SMALL_GRAINS                       0.000     0.000
2003 360645                          -355.962         1
     GRASS_PASTURE                   -999.000  -355.962
2003 360649                             0.000         1
     GRASS_PASTURE                      0.000     0.000
2003 360660                             0.000         0
2003 360662                          2368.798         2
     ALFALFA                            0.085   201.348
     GRASS_PASTURE                      0.915  2167.450
2003 370548                           210.147         3
     ALFALFA                            0.000     0.000
     GRASS_PASTURE                      1.000   210.147
     SMALL_GRAINS                       0.000     0.000
