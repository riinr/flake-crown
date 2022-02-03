{
  description = ''client for sonic search backend'';
  inputs.src-sonic-master.flake = false;
  inputs.src-sonic-master.type = "github";
  inputs.src-sonic-master.owner = "xmonader";
  inputs.src-sonic-master.repo = "nim-sonic-client";
  inputs.src-sonic-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sonic-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sonic-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sonic-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}