#HeaderRevision 0
#
# File generated by...
# program:      StateDMI 3.02.00 beta (2008-10-07)
# user:         sam
# date:         Fri Jan 02 00:07:59 MST 2009
# host:         SOPRIS
# directory:    C:\Develop\StateDMI_SourceBuild\StateDMI\test\regression\commands\CreateCropPatternTSForCULocations
# command line: StateDMI -home test\operational\CDSS
#----
# -----------------------------------------------------------------------
# Command file name: "C:\Develop\StateDMI_SourceBuild\StateDMI\test\regression\commands\CreateCropPatternTSForCULocations\Test_CreateCropPatternTSForCULocations.StateDMI"
# Commands: 
# # Test creating crop pattern time series for CU locations
# StartLog(LogFile="Results/Test_CreateCropPatternTSForCULocations.StateDMI.log")
# RemoveFile(InputFile="Results\Test_CreateCropPatternTSForCULocations_out.cds")
# SetCULocation(ID="2000505",IfNotFound=Add)
# SetCULocation(ID="2000623",IfNotFound=Add)
# SetCULocation(ID="2000812",IfNotFound=Add)
# SetOutputPeriod(OutputStart="2000",OutputEnd="2001")
# CreateCropPatternTSForCULocations(ID="*",Units="ACRE")
# # Uncomment the following command to regenerate the expected results.
# WriteCropPatternTSToStateCU(OutputFile="ExpectedResults/Test_CreateCropPatternTSForCULocations_out.cds")
# WriteCropPatternTSToStateCU(OutputFile="Results/Test_CreateCropPatternTSForCULocations_out.cds")
# CompareFiles(InputFile1="ExpectedResults/Test_CreateCropPatternTSForCULocations_out.cds",InputFile2="Results/Test_CreateCropPatternTSForCULocations_out.cds",WarnIfDifferent=True)
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
      2000           2001 ACRE CYR  
2000 2000505                         -999.000         0
2000 2000623                         -999.000         0
2000 2000812                         -999.000         0
2001 2000505                         -999.000         0
2001 2000623                         -999.000         0
2001 2000812                         -999.000         0
