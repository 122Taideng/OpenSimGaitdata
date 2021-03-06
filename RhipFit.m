function [fitresult, gof] = RhipFit(t, Rhip)
%CREATEFIT(T,RHIP)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : t
%      Y Output: Rhip
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 23-Apr-2022 09:35:07


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( t, Rhip );

% Set up fittype and options.
ft = 'linearinterp';

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, 'Normalize', 'on' );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'Rhip vs. t', 'untitled fit 1', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
xlabel( 't', 'Interpreter', 'none' );
ylabel( 'Rhip', 'Interpreter', 'none' );
grid on


