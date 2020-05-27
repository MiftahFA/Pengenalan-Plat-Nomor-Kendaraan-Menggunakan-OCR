function varargout = TA(varargin)
% TA MATLAB code for TA.fig
%      TA, by itself, creates a new TA or raises the existing
%      singleton*.
%
%      H = TA returns the handle to a new TA or the handle to
%      the existing singleton*.
%
%      TA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TA.M with the given input arguments.
%
%      TA('Property','Value',...) creates a new TA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TA_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TA_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TA

% Last Modified by GUIDE v2.5 15-Apr-2020 19:08:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TA_OpeningFcn, ...
                   'gui_OutputFcn',  @TA_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before TA is made visible.
function TA_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TA (see VARARGIN)

% Choose default command line output for TA
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TA wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TA_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_addimage.
function btn_addimage_Callback(hObject, eventdata, handles)
% hObject    handle to btn_addimage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[namafile, formatfile] = uigetfile({'*.jpg'; '*.png'}, 'Membuka Gambar');
if~isequal(namafile, 0)
    handles.datahasil=imread(fullfile(formatfile, namafile));
    guidata(hObject, handles);
    axes(handles.axes1);
    imshow(handles.datahasil);
end
    

function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btndata.
function btndata_Callback(hObject, eventdata, handles)
% hObject    handle to btndata (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnreset.
function btnreset_Callback(hObject, eventdata, handles)
% hObject    handle to btnreset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnlogout.
function btnlogout_Callback(hObject, eventdata, handles)
% hObject    handle to btnlogout (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function hasilocr_Callback(hObject, eventdata, handles)
% hObject    handle to hasilocr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilocr as text
%        str2double(get(hObject,'String')) returns contents of hasilocr as a double


% --- Executes during object creation, after setting all properties.
function hasilocr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilocr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_process.
function btn_process_Callback(hObject, eventdata, handles)
% hObject    handle to btn_process (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load imgfildata;
Z=handles.datahasil;
    [a b]=size(Z);
    datahasil2=imresize(Z, [300 500]);
    if size(datahasil2, 3)==3
        datahasil3=rgb2gray(datahasil2) %grey values are btwn 0 to 1 or 0 to 255
    end
   
    picture=datahasil3;
    threshold = graythresh(picture);    %greythresh gives the threshold value of greyscale image
    picture =~im2bw(picture,threshold); %black nd white values are 0 or 1 and values greater thn threshold=1,rest=0 and invert white and black ie 1 to 0 and 0 to 1
    picture = bwareaopen(picture,30);   % those things that have less than 30 pixels are removed
    
    if b>2000
        picture1=bwareaopen(picture,3500);  %those things that have less than 3500 pixels are removed ie excluding nmbr plate
    else
        picture1=bwareaopen(picture,3000);  %those things that have less than 3000 pixels are removed ie excluding nmbr plate
    end
    
    %figure,imshow(picture1)
    picture2=picture-picture1;  %only number plate is left
    %figure,imshow(picture2)
    
    picture2=bwareaopen(picture2,200);  %only text is there in the nmbr plate
    figure,imshow(picture2)

    [L,Ne]=bwlabel(picture2);   %l gives matrix which has info of nmbr plate and Ne gives number of digits or characters
    propied=regionprops(L,'BoundingBox');
    hold on
    pause(1)
    for n=1:size(propied,1)
        rectangle('Position',propied(n).BoundingBox,'EdgeColor','g','LineWidth',2)
    end
    hold off

    figure
    final_output=[];
    t=[];
    for n=1:Ne
        [r,c] = find(L==n);
        n1=picture(min(r):max(r),min(c):max(c));     %picture command crops nth object from L
        n1=imresize(n1,[42,24]);    %in database size is 42,24 so it is resized so that we can match it with the database
        imshow(n1)
        pause(0.2)
        x=[ ];
        totalLetters=size(imgfile,2);

        for k=1:totalLetters
            y=corr2(imgfile{1,k},n1);
            x=[x y];
        end
        
        t=[t max(x)];
            if max(x)>.45
                z=find(x==max(x));
                out=cell2mat(imgfile(2,z));
                final_output=[final_output out];
            end
    end
    
set(handles.hasilocr, 'enable','off');
set(handles.hasilocr,'String', final_output);