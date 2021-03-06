/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/analysis/raster/qgsrastercalculator.h                            *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/






struct QgsRasterCalculatorEntry
{
%TypeHeaderCode
#include <qgsrastercalculator.h>
%End

  QString ref; //name
  QgsRasterLayer *raster; //pointer to rasterlayer
  int bandNumber; //raster band number
};

class QgsRasterCalculator
{
%Docstring
 Raster calculator class*
%End

%TypeHeaderCode
#include "qgsrastercalculator.h"
%End
  public:

    enum Result
    {
      Success,
      CreateOutputError,
      InputLayerError,
      Canceled,
      ParserError,
      MemoryError,
    };

    QgsRasterCalculator( const QString &formulaString, const QString &outputFile, const QString &outputFormat,
                         const QgsRectangle &outputExtent, int nOutputColumns, int nOutputRows, const QVector<QgsRasterCalculatorEntry> &rasterEntries );
%Docstring
 QgsRasterCalculator constructor.
 \param formulaString formula for raster calculation
 \param outputFile output file path
 \param outputFormat output file format
 \param outputExtent output extent. CRS for output is taken from first entry in rasterEntries.
 \param nOutputColumns number of columns in output raster
 \param nOutputRows number of rows in output raster
 \param rasterEntries list of referenced raster layers
%End

    QgsRasterCalculator( const QString &formulaString, const QString &outputFile, const QString &outputFormat,
                         const QgsRectangle &outputExtent, const QgsCoordinateReferenceSystem &outputCrs, int nOutputColumns, int nOutputRows, const QVector<QgsRasterCalculatorEntry> &rasterEntries );
%Docstring
 QgsRasterCalculator constructor.
 \param formulaString formula for raster calculation
 \param outputFile output file path
 \param outputFormat output file format
 \param outputExtent output extent, CRS is specified by outputCrs parameter
 \param outputCrs destination CRS for output raster
 \param nOutputColumns number of columns in output raster
 \param nOutputRows number of rows in output raster
 \param rasterEntries list of referenced raster layers
.. versionadded:: 2.10
%End

    int processCalculation( QProgressDialog *p = 0 );
%Docstring
 :rtype: int
%End

};

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/analysis/raster/qgsrastercalculator.h                            *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/
