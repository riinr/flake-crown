{
  description = ''Library implementing a variation of the Simple And Efficient Data Encryption Algorithm (INTERNATIONAL JOURNAL OF SCIENTIFIC & TECHNOLOGY RESEARCH VOLUME 8, ISSUE 12, DECEMBER 2019 ISSN 2277-8616)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libsaedea-master.flake = false;
  inputs.src-libsaedea-master.owner = "m33m33";
  inputs.src-libsaedea-master.ref   = "refs/heads/master";
  inputs.src-libsaedea-master.repo  = "libsaedea";
  inputs.src-libsaedea-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libsaedea-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libsaedea-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}