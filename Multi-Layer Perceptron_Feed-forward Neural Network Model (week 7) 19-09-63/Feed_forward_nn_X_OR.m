close all;
clear all;
clc;

x = [0 0;
     0 1;
     1 0;
     1 1;];

x = [ones(size(x, 1), 1) x];

d = [0;
     1;
     1;
     0;];

w_hidden_layer = rands(3, 2);
w_output_layer = rands(3, 1);
n = 0.001;

E = [];
% for epoch = 1:2000
%     output_hidden_layer = x(:, :) * w_hidden_layer(:, :);
%     activation_hidden_layer = logsig(output_hidden_layer);
%     
%     activation_hidden_feedforward = [ ones(size(activation_hidden_layer, 1), 1)...
%         activation_hidden_layer ];
%     
%     output_last_layer = activation_hidden_feedforward(:, :) * w_output_layer(:, :);
%     activation_output_layer = logsig(output_last_layer);
%     
%     error = d - activation_output_layer;
%     
%     delta_output_layer = error .* (activation_output_layer .* (1 - activation_output_layer));
%     
%     w_output_layer_update = w_output_layer + n * (delta_output_layer' * activation_hidden_feedforward)';
%     
%     delta_hidden_layer = (delta_output_layer * w_output_layer')' *...
%         (activation_hidden_layer .* (1 - activation_hidden_layer));
%     
%     w_hidden_layer_update = w_hidden_layer + n * delta_hidden_layer;
% 
%     E(epoch) = mse(error);
%     
%     plot(E);
%     title('Error vs. Epoch');
%     xlabel('Epoch (n)'); ylabel('MSE');
%      
%     drawnow
%     
%     w_hidden_layer = w_hidden_layer_update;
%     w_output_layer = w_output_layer_update;
% end

        [X1, X2] = meshgrid(-2:2);
        Y = w_hidden_layer(1, :) + X1 * w_hidden_layer(2, :) + X2 * w_hidden_layer(3, :);
        plot(x(1, 2), x(1, 3), 'ro');
        hold on
        plot(x(2, 2), x(2, 3), 'ko');
        hold on
        plot(x(3, 2), x(3, 3), 'ko');
        hold on
        plot(x(4, 2), x(4, 3), 'mo');
        contour(X1, X2, Y, [0, 0], 'k')
%         title(['T : ', num2str(T),', i : ',num2str(i)])
%         
%         drawnow
        hold off
%         pause(0.05)


