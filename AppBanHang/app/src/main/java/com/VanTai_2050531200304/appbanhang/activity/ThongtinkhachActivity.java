package com.VanTai_2050531200304.appbanhang.activity;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.util.Patterns;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.VanTai_2050531200304.appbanhang.R;
import com.VanTai_2050531200304.appbanhang.ultil.CheckConnection;
import com.VanTai_2050531200304.appbanhang.ultil.Server;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

public class ThongtinkhachActivity extends AppCompatActivity {
    EditText edtTenKhachHang, edtSDT, edtEmai, edtDiaChi;
    Button btnXacNhan, btnTroVe;
    private static final Pattern EMAIL_PATTERN = Pattern.compile("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
            + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_thongtinkhach);
        AnhXa();
    }

    private void AnhXa() {
        edtTenKhachHang = findViewById(R.id.edt_tenkhachhang);
        edtDiaChi = findViewById(R.id.edt_diachikhachhang);
        edtSDT = findViewById(R.id.edt_sodienthoaikhachhang);
        edtEmai = findViewById(R.id.edt_emailkhachhang);
        btnXacNhan = findViewById(R.id.btn_xacnhanthongtinkhachhang);
        btnTroVe = findViewById(R.id.btn_trovegiohang);
        btnTroVe.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });
        if (CheckConnection.haveNetworkConnection(getApplicationContext())) {
            EvenXacNhan();
        } else {
            CheckConnection.ShowToast_Short(getApplicationContext(), "B???n vui l??ng ki???m tra l???i k???t n???i");
        }
    }

    private void EvenXacNhan() {
        btnXacNhan.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                final String tenkh = edtTenKhachHang.getText().toString().trim();
                final String sodt = edtSDT.getText().toString().trim();
                String diachi = edtDiaChi.getText().toString().trim();
                final String email = edtEmai.getText().toString().trim();
                if (tenkh.length() > 0 && sodt.length() > 0 && email.length() > 0 && diachi.length() > 0) {
                    if (Patterns.EMAIL_ADDRESS.matcher(email).matches()) {
                        RequestQueue requestQueue = Volley.newRequestQueue(getApplicationContext());
                        StringRequest stringRequest = new StringRequest(Request.Method.POST, Server.DuongDanDonHang, new Response.Listener<String>() {
                            @Override
                            public void onResponse(final String madonhangR) {
                                Log.d("madonhang", madonhangR);
                                if (Integer.parseInt(madonhangR) > 0) {
                                    RequestQueue requestQueue1 = Volley.newRequestQueue(getApplicationContext());
                                    StringRequest stringRequest1 = new StringRequest(Request.Method.POST, Server.DuongDanChitietdonhang, new Response.Listener<String>() {
                                        @Override
                                        public void onResponse(String response) {
                                            if (response.equals("1")) {
                                                MainActivity.mangGioHang.clear();
                                                CheckConnection.ShowToast_Short(getApplicationContext(), "B???n ???? thanh to??n th??nh c??ng");
                                                Intent intent = new Intent(getApplicationContext(), MainActivity.class);
                                                startActivity(intent);
                                                CheckConnection.ShowToast_Short(getApplicationContext(), "M???i b???n ti???p t???c mua h??ng");
                                            } else {
                                                CheckConnection.ShowToast_Short(getApplicationContext(), "B???n ???? thanh to??n th??nh c??ng");
                                                Intent intent = new Intent(getApplicationContext(), MainActivity.class);
                                                startActivity(intent);
                                            }

                                        }
                                    }, new Response.ErrorListener() {
                                        @Override
                                        public void onErrorResponse(VolleyError error) {
                                        }
                                    }) {
                                        @Nullable
                                        @Override
                                        protected Map<String, String> getParams() throws AuthFailureError {
                                            JSONArray jsonArray = new JSONArray();
                                            for (int i = 0; i < MainActivity.mangGioHang.size(); i++) {
                                                JSONObject jsonObject = new JSONObject();
                                                try {
                                                    jsonObject.put("madonhang", madonhangR);
                                                    jsonObject.put("masanpham", MainActivity.mangGioHang.get(i).getIdsp());
                                                    jsonObject.put("tensanpham", MainActivity.mangGioHang.get(i).getTenSP());
                                                    jsonObject.put("giasanpham", MainActivity.mangGioHang.get(i).getGiaSP());
                                                    jsonObject.put("soluongsanpham", MainActivity.mangGioHang.get(i).getSoLuongsp());
                                                } catch (JSONException e) {
                                                    e.printStackTrace();
                                                }
                                                jsonArray.put(jsonObject);
                                            }
                                            HashMap<String, String> hashMap = new HashMap<String, String>();
                                            hashMap.put("json", jsonArray.toString());
                                            return hashMap;
                                        }
                                    };
                                    requestQueue1.add(stringRequest1);
                                } else {
                                    CheckConnection.ShowToast_Short(getApplicationContext(), "kh??ng c?? d??? li???u");
                                }

                            }
                        }, new Response.ErrorListener() {
                            @Override
                            public void onErrorResponse(VolleyError error) {

                            }
                        }) {
                            @Nullable
                            @Override
                            protected Map<String, String> getParams() throws AuthFailureError {
                                HashMap<String, String> hashMap = new HashMap<String, String>();
                                hashMap.put("tenkhachhang", tenkh);
                                hashMap.put("sodienthoai", sodt);
                                hashMap.put("email", email);
                                hashMap.put("diachi", diachi);
                                return hashMap;
                            }
                        };
                        requestQueue.add(stringRequest);
                    }else {
                        CheckConnection.ShowToast_Short(getApplicationContext(), "Email nh???p kh??ng ????ng ");
                    }
                } else {
                    CheckConnection.ShowToast_Short(getApplicationContext(), "Vui l??ng h??y nh???p ?????y ????? th??ng tin ");
                }
            }
        });
    }
}