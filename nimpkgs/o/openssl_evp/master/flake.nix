{
  description = ''Wrapper for OpenSSL's EVP interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-openssl_evp-master.flake = false;
  inputs.src-openssl_evp-master.owner = "cowboy-coders";
  inputs.src-openssl_evp-master.ref   = "master";
  inputs.src-openssl_evp-master.repo  = "nim-openssl-evp";
  inputs.src-openssl_evp-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-openssl_evp-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-openssl_evp-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}