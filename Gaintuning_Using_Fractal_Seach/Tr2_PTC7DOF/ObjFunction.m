function J = ObjFunction(D)


assignin('base', 'D', D);
D = round(D,1);
disp(D);

try   
    sim("PTC_7dof.slx") 
    % column1 = values.Data(:, 1);
    % column2 = values.Data(:, 2);
    % S1 = stepinfo(column1, values.Time);
    % S2 = stepinfo(column2, values.Time);
    % ST1 = S1.SettlingTime;
    % ST2 = S2.SettlingTime;
    % settlingTimeSum = ST1 + ST2;

    % if ST1 <= 5.7 && ST2 <= 5.1 && theta_m(length(theta_m)) <= 8
    %     J = ITAE(length(ITAE))
    % elseif ST1 <= 5.5 && ST2 <= 5  && 8 < theta_m(length(theta_m))
    %     J = 1000 + theta_m(length(theta_m))*10
    % else
    %     J = 2000 + settlingTimeSum*10
    % end
    J = ITAE(length(ITAE))

catch ME
    % Handle simulation errors
    disp('Simulation failed. Skipping this set of gains.')
    disp(['Error Message: ' ME.message])
    J = 6000  % Assign a high cost to this set of gains to skip it
end
end