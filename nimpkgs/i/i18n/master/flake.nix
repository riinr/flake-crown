{
  description = ''Bring a gettext-like internationalisation module to Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-i18n-master.flake = false;
  inputs.src-i18n-master.ref   = "refs/heads/master";
  inputs.src-i18n-master.owner = "Parashurama";
  inputs.src-i18n-master.repo  = "nim-i18n";
  inputs.src-i18n-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-i18n-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-i18n-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}